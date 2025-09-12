using System.ComponentModel.DataAnnotations;

namespace MyBlazorApp.Models
{
    public class Mst_Role
    {
        [Key]
        public int RoleID { get; set; }

        [StringLength(150)]
        public string? RoleName { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedOn { get; set; }

        public int? UpdatedBy { get; set; }

        public DateTime? UpdatedOn { get; set; }

        public int? DeletedBy { get; set; }

        public DateTime? DeletedOn { get; set; }
    }
}
