using System.ComponentModel.DataAnnotations;

namespace MyBlazorApp.Models
{
    public class Mst_RolePermission
    {
        [Key]
        public int PerID { get; set; }

        public int RoleID { get; set; }

        [Required]
        public string? MenuId { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedOn { get; set; }

        public int? UpdatedBy { get; set; }

        public DateTime? UpdatedOn { get; set; }

        public int? DeletedBy { get; set; }

        public DateTime? DeletedOn { get; set; }
    }
}
