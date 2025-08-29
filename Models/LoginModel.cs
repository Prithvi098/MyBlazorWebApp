using System.ComponentModel.DataAnnotations;

namespace MyBlazorApp.Models
{
    public class LoginModel
    {
        public class LoginRequest
        {
            [Required]
            public string? Username { get; set; }

            [Required]
            public string? Password { get; set; }
        }

        public class LoginResponse
        {
            public bool? Success { get; set; }
            public string? Message { get; set; }
        }
    }
}
