using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyBlazorApp.Models
{
    [Table("Mst_UserRights")]
    public class Mst_UserRights
    {
        [Key]
        public int ID { get; set; }

        public int? EmpId { get; set; }

        public int? MId { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedOn { get; set; }

        public int? UpdatedBy { get; set; }

        public DateTime? UpdatedOn { get; set; }

        public int? DeletedBy { get; set; }

        public DateTime? DeletedOn { get; set; }
    }
}
