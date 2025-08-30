using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MyBlazorApp.Data;
using System.Security.Claims;

namespace MyBlazorApp.Controller
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly EMSContext _context;
        public LoginController(EMSContext context) => _context = context;

        [AllowAnonymous]
        [HttpPost("userlogin")]
        public async Task<IActionResult> UserLogin([FromForm] string username, [FromForm] string password)
        {
            var emp = _context.Mst_Employees.FirstOrDefault(e => e.DeletedBy == null && e.IsActive == true && e.Username == username && e.Password == password);

            if (emp == null)
            {
                return Redirect("/?error=Username or password are incorrect");
            }

            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, username),
                new Claim("EmpId", emp.EmpId.ToString())
            };

            var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

            var authProperties = new AuthenticationProperties
            {
                IsPersistent = true,
                ExpiresUtc = DateTime.UtcNow.AddMinutes(30)
            };

            await HttpContext.SignInAsync(
                CookieAuthenticationDefaults.AuthenticationScheme,
                new ClaimsPrincipal(claimsIdentity),
                authProperties);

            return Redirect("/home"); // after successful login
        }


        [HttpGet("userlogout")]
        public async Task<IActionResult> UserLogout()
        {
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            return Redirect("/");
        }   
    }
}
