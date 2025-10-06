using Microsoft.Data.SqlClient;
using MyBlazorApp.Data;
using MyBlazorApp.Models;
using System.Data;

namespace MyBlazorApp.Common
{
    public class MenuService
    {
        private readonly EMSContext? _context;
        private readonly IConfiguration _config;
        private readonly DataContext _datacontext;

        public MenuService(EMSContext? context, IConfiguration config, DataContext dataContext)
        {
            _context = context;
            _config = config;
            _datacontext = dataContext;
        }

        public List<MenuModel> GetUserMenus(int userId, int isFrontMenu)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@UserID", userId),
                    new SqlParameter("@isfrontmenu", isFrontMenu)
                };

                DataSet ds = _datacontext.DSExcecuteSP("Usp_Get_UserPermission_new", parameters);
                List<MenuModel> menuList = new List<MenuModel>();

                if (ds != null && ds.Tables.Count > 0)
                {
                    // --- Main Menus ---
                    var mainMenus = ds.Tables[0].AsEnumerable().Select(r => new MenuModel
                    {
                        MID = r.Field<int>("MID"),
                        PMID = r.Field<int?>("PMID"),
                        MenuName = r.Field<string>("MenuName"),
                        MenuUrl = r.Field<string>("MenuUrl"),
                        MenuDesc = r.Field<string>("MenuDesc"),
                        SortOrder = r.Field<int>("SortOrder"),
                        SubMenus = new List<MenuModel>()
                    }).ToList();

                    // --- Sub Menus ---
                    if (ds.Tables.Count > 1 && ds.Tables[1].Rows.Count > 0)
                    {
                        var subMenus = ds.Tables[1].AsEnumerable().Select(r => new MenuModel
                        {
                            MID = r.Field<int>("MID"),
                            PMID = r.Field<int?>("PMID"),
                            MenuName = r.Field<string>("MenuName"),
                            MenuUrl = r.Field<string>("MenuUrl"),
                            MenuDesc = r.Field<string>("MenuDesc"),
                            SortOrder = r.Field<int>("SortOrder")
                        }).ToList();

                        // --- Attach Submenus to Main Menus ---
                        foreach (var main in mainMenus)
                        {
                            main.SubMenus = subMenus
                                .Where(x => x.PMID == main.MID)
                                .OrderBy(x => x.SortOrder)
                                .ToList();
                        }
                    }

                    menuList = mainMenus.OrderBy(m => m.SortOrder).ToList();
                }

                return menuList;
            }
            catch (Exception ex)
            {
                // Log the error
                var logger = new ErrorLog
                {
                    ErroMsg = ex.Message,
                    Error = "GetUserMenus",
                    ErrorDate = DateTime.Now
                };
                _context.ErrorLogs.Add(logger);
                _context.SaveChanges();

                throw;
            }
        }
    }
}
