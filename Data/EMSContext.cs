using Microsoft.EntityFrameworkCore;
using MyBlazorApp.Models;

namespace MyBlazorApp.Data
{
    public class EMSContext : DbContext
    {
        public EMSContext(DbContextOptions<EMSContext> options)
        : base(options) { }

        public virtual DbSet<Mst_Employee> Mst_Employees { get; set; }

        public virtual DbSet<Mst_Department> Mst_Department { get; set; }

    }
}
