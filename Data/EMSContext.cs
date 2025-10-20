using Microsoft.EntityFrameworkCore;
using MyBlazorApp.Models;

namespace MyBlazorApp.Data
{
    public class EMSContext : DbContext
    {
        public EMSContext(DbContextOptions<EMSContext> options)
        : base(options) { }

        public virtual DbSet<Mst_employees> Mst_Employees { get; set; }

        public virtual DbSet<Mst_Department> Mst_Department { get; set; }
        public virtual DbSet<ErrorLog> ErrorLogs { get; set; }
        public virtual DbSet<Mst_Menu> Mst_Menu { get; set; }
        public virtual DbSet<Mst_Menu_New> Mst_Menu_New { get; set; }
        public virtual DbSet<Mst_Right> Mst_Right { get; set; }
        public virtual DbSet<Mst_UserRights> Mst_UserRight { get; set; }
        public virtual DbSet<Mst_Role> Mst_Role { get; set; }
        public virtual DbSet<Mst_RolePermission_New> Mst_RolePermission_New { get; set; }

    }
}
