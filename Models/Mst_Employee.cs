using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyBlazorApp.Models
{
    [Table("Mst_Employee")]
    public class Mst_Employee
    {
        [Key]
        public int EmpId { get; set; }

        [StringLength(250)]
        public string? Emp_FirstName { get; set; }

        [StringLength(250)]
        public string? Emp_MiddleName { get; set; }

        [StringLength(250)]
        public string? Emp_LastName { get; set; }

        [StringLength(500)]
        public string? Password { get; set; }

        [StringLength(250)]
        public string? Username { get; set; }

        [StringLength(250)]
        public string? Email_Address { get; set; }

        public bool? IsActive { get; set; }

        public int? Departmentid { get; set; }

        public string? DepartmentName { get; set; }

        public int? CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }

        public int? UpdatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }

        public int? DeletedBy { get; set; }
        public DateTime? DeletedOn { get; set; }

    }
}
