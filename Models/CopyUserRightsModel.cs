using System.ComponentModel.DataAnnotations;

namespace MyBlazorApp.Models
{
    public class CopyUserRightsModel
    {
        [Required(ErrorMessage = "Select From EmpId")]
        public int FromUserId { get; set; }

        public string? FromUserRole { get; set; }

        [Required(ErrorMessage = "Select To EmpId")]
        public int ToUserId { get; set; }

        public string? ToUserRole { get; set; }
    }
}
