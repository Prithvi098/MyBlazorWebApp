using MyBlazorApp.Data;
using MyBlazorApp.Models;

namespace MyBlazorApp.Common
{
    public class MenuService
    {
        private readonly EMSContext? _context;

        public MenuService(EMSContext? context)
        {
            _context = context;
        }

        /*public async Task<List<Mst_Menu>> GetUserMenusAsync(int userId)
        {

        }*/
    }
}
