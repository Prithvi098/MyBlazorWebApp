using System.ComponentModel.DataAnnotations;

namespace MyBlazorApp.Models
{
    public class ErrorLog
    {
        [Key]
        public int EID { get; set; }

        public string? Error { get; set; }

        public string? ErroMsg { get; set; }

        [StringLength(250)]
        public string? ErrorPage { get; set; }

        [StringLength(150)]
        public string? ErrorMode { get; set; }

        public DateTime? ErrorDate { get; set; }
    }
}
