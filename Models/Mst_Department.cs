using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyBlazorApp.Models
{
    [Table("Mst_Department")]
    public class Mst_Department
    {
        public int Id { get; set; }

        [StringLength(500)]
        public string? DepartmentName { get; set; }

        public bool? Isactive { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedOn { get; set; }

        public int? UpdatedBy { get; set; }

        public DateTime? UpdatedOn { get; set; }

        public int? DeletedBy { get; set; }

        public DateTime? DeletedOn { get; set; }

        public bool? IsSubDepartment { get; set; }

        public int? ParentDepartmentId { get; set; }
    }
}
