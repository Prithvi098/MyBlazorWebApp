using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyBlazorApp.Models
{
    [Table("Mst_Leave_Apllication")]
    public class Mst_Leave_Apllication
    {
        [Key]
        public int id { get; set; }

        public int? EmpId { get; set; }

        [StringLength(50)]
        public string? LeaveType { get; set; }

        [StringLength(200)]
        public string? leaveSubject { get; set; }

        public string? LeaveDescription { get; set; }

        [StringLength(50)]
        public string? Leave_Status { get; set; }

        public DateTime? LeaveStartDate { get; set; }

        public DateTime? LeaveEndDate { get; set; }

        public string? Admin_Comments { get; set; }

        [StringLength(50)]
        public string? EmpCode { get; set; }

        public bool? LeaveEmailSent { get; set; }

        [StringLength(50)]
        public string? Location { get; set; }

        public int? ApprovedById { get; set; }

        [Column("Approved By")]
        [StringLength(50)]
        public string? Approved_By { get; set; }

        public int? AuthorizeById { get; set; }

        [StringLength(50)]
        public string? Authorize_By { get; set; }

        public DateTime? Authorize_On { get; set; }

        [StringLength(50)]
        public string? Manageby { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedOn { get; set; }

        public int? UpdatedBy { get; set; }

        public DateTime? UpdatedOn { get; set; }

        public int? DeletedBy { get; set; }

        public DateTime? DeletedOn { get; set; }

        public int? CancelBy { get; set; }

        public DateTime? CancelOn { get; set; }

        [StringLength(500)]
        public string? Department { get; set; }
        public bool? LeaveAppliedByAdmin { get; set; }
        public int? NovanexLeaveId { get; set; }

    }
}
