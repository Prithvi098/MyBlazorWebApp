using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyBlazorApp.Models
{
    [Table("Mst_UserRight_New")]
    public class Mst_UserRight_New
    {
        [Key]
        public int URAID { get; set; }

        public int? EmpID { get; set; }

        public int? UserID { get; set; }

        public int? MenuID { get; set; }

        [StringLength(50)]
        public string? RID { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedOn { get; set; }

        public int? UpdatedBy { get; set; }

        public DateTime? UpdatedOn { get; set; }

        public int? DeletedBy { get; set; }

        public DateTime? DeletedOn { get; set; }
    }
}
