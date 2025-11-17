using Microsoft.EntityFrameworkCore;
using MyBlazorApp.Data;
using MyBlazorApp.Models;

namespace MyBlazorApp.Common
{
    public class UserPermissionService
    {
        private readonly EMSContext _context;
        private List<UserRightMenu> _userRights = new();
        public int? UserId { get; private set; }

        public UserPermissionService(EMSContext context)
        {
            _context = context;
        }

        public async Task LoadRightsAsync(int userId)
        {
            UserId = userId;

            _userRights = await (from u in _context.Mst_UserRight_New 
                                 join m in _context.Mst_Menu_New on u.MenuID equals m.MID
                                 where u.DeletedBy == null && u.EmpID == UserId
                                 select new UserRightMenu
                                 {
                                        mst_UserRight = u,
                                        mst_Menu = m
                                 }).ToListAsync();
        }

        public bool HasMenuAccess(string MenuUrl)
        {
            return _userRights.Any(r => r.mst_Menu.MenuUrl == MenuUrl);
        }

        /*public bool HasRight(int menuId, int rightId)
        {
            return _userRights.Where(r => r.MenuID == menuId).Any(r => r.RID.Split(',').Select(int.Parse).Contains(rightId));
        }*/

        public class UserRightMenu
        {
            public Mst_UserRight_New mst_UserRight = new Mst_UserRight_New();
            public Mst_Menu_New mst_Menu = new Mst_Menu_New();
        }
    }
}
