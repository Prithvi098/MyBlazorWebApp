using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using MyBlazorApp.Common;
using MyBlazorApp.Data;
using MyBlazorApp.Models;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace MyBlazorApp.Controller
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly EMSContext _context;
        private readonly Helper _helper;
        private readonly JwtTokenService _jwtSettings;

        public LoginController(EMSContext context, Helper helper, JwtTokenService jwtOptions)
        {
            _helper = helper;
            _context = context;
            _jwtSettings = jwtOptions;
        }


        [AllowAnonymous]
        [HttpPost("userlogin")]
        public async Task<IActionResult> UserLogin([FromBody] LoginModel.LoginRequest req)
        {
            var encryptpass = _helper.Encrypt(req.Password);

            var emp = _context.Mst_Employees.FirstOrDefault(e =>
                e.DeletedBy == null &&
                e.IsActive == true &&
                e.Username == req.Username &&
                e.Password == encryptpass);

            if (emp == null)
            {
                return Unauthorized("Username or password are incorrect");
            }

            var fullname = emp.Emp_firstname + " " + emp.Emp_surname;
            var expiresAt = DateTimeOffset.UtcNow.AddMinutes(10);

            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, fullname),
                new Claim("EmpId", emp.Emp_id.ToString()),
                new Claim("Username", emp.Username),
                new Claim("ExpiresAtUtc", expiresAt.ToString("o"))
            };

            var identity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

            var authProperties = new AuthenticationProperties
            {
                IsPersistent = req.RememberMe,
                ExpiresUtc = expiresAt,
                AllowRefresh = true
            };

            await HttpContext.SignInAsync(
                CookieAuthenticationDefaults.AuthenticationScheme,
                new ClaimsPrincipal(identity),
                authProperties
            );

            return Ok(new
            {
                empName = fullname
            });
        }


        [HttpGet("userlogout")]
        public async Task<IActionResult> UserLogout()
        {
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            return Redirect("/");
        }   
    }
}
