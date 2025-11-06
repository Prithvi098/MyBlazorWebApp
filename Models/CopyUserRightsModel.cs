using System.ComponentModel.DataAnnotations;

namespace MyBlazorApp.Models
{
    public class CopyUserRightsModel
    {
        [Required(ErrorMessage = "Please select a 'From User'.")]
        [Range(1, int.MaxValue, ErrorMessage = "Please select a valid 'From User'.")]
        public int FromUserId { get; set; }

        public string? FromUserRole { get; set; }

        [Required(ErrorMessage = "Please select a 'To User'.")]
        [Range(1, int.MaxValue, ErrorMessage = "Please select a valid 'To User'.")]
        public int ToUserId { get; set; }

        public string? ToUserRole { get; set; }
    }
}
