using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MyBlazorApp.Common;
using MyBlazorApp.Data;
using System.Security.Claims;
using static MyBlazorApp.Models.LoginModel;

namespace MyBlazorApp.Controller
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly EMSContext _context;
        private readonly Helper _helper;
        private readonly JwtTokenService _jwt;

        public LoginController(EMSContext context, Helper helper, JwtTokenService jwt)
        {
            _helper = helper;
            _context = context;
            _jwt = jwt;
        }


        [AllowAnonymous]
        [HttpPost("userlogin")]
        public async Task<IActionResult> UserLogin([FromForm] string username, [FromForm] string password)
        {
            var encryptpass = _helper.Encrypt(password);
            var emp = _context.Mst_Employees.FirstOrDefault(e => e.DeletedBy == null && e.IsActive == true && e.Username == username && e.Password == encryptpass);

            if (emp == null)
            {
                return Redirect("/?error=Username or password are incorrect");
            }

            var token = _jwt.GenerateToken(
                emp.Emp_id,
                $"{emp.Emp_firstname} {emp.Emp_surname}",
                emp.Username
            );

            return Ok(new LoginResponse
            {
                token = token,
                empid = emp.Emp_id,
                username = $"{emp.Emp_firstname} {emp.Emp_surname}"
            });

            /*var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, username),
                new Claim("EmpId", emp.Emp_id.ToString()),
                new Claim("FullName", emp.Emp_firstname + " " + emp.Emp_surname),
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

            return Redirect("/home"); // after successful login*/
        }


        [HttpGet("userlogout")]
        public async Task<IActionResult> UserLogout()
        {
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            return Redirect("/");
        }   
    }
}
