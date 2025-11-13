using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyBlazorApp.Models
{
    [Table("EmployeePunchDetail")]
    public partial class EmployeePunchDetail
    {
        [Key]
        public int PunchId { get; set; }

        public int? UserId { get; set; }

        public DateTime? Date { get; set; }

        public DateTime? PunchIn { get; set; }

        public DateTime? PunchOut { get; set; }

        [StringLength(50)]
        public string? TimeOutText { get; set; }

        public int? UpdatedBy { get; set; }

        public DateTime? UpdatedOn { get; set; }

        [StringLength(500)]
        public string? Notes { get; set; }
    }
}
