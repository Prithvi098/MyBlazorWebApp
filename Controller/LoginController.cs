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
        private readonly JwtSettings _jwtSettings;

        public LoginController(EMSContext context, Helper helper, IOptions<JwtSettings> jwtOptions)
        {
            _helper = helper;
            _context = context;
            _jwtSettings = jwtOptions.Value;
        }


        [AllowAnonymous]
        [HttpPost("userlogin")]
        public async Task<IActionResult> UserLogin([FromBody] LoginModel.LoginRequest req)
        {
            var encryptpass = _helper.Encrypt(req.Password);
            var emp = _context.Mst_Employees.FirstOrDefault(e => e.DeletedBy == null && e.IsActive == true && e.Username == req.Username && e.Password == encryptpass);

            if (emp == null)
            {
                return Redirect("/?error=Username or password are incorrect");
            }

            // Create Claims
            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, emp.Username),
                new Claim("EmpId", emp.Emp_id.ToString()),
                new Claim("FullName", emp.Emp_firstname + " " + emp.Emp_surname)
            };

            // ---------------- JWT CREATION ----------------
            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_jwtSettings.Key));
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
            var expires = DateTime.UtcNow.AddMinutes(_jwtSettings.ExpiresMinutes);

            var token = new JwtSecurityToken(
                issuer: _jwtSettings.Issuer,
                audience: _jwtSettings.Audience,
                claims: claims,
                expires: expires,
                signingCredentials: creds
            );

            var jwt = new JwtSecurityTokenHandler().WriteToken(token);

            // ---------------- COOKIE SIGN-IN ----------------
            var identity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
            await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme,
                new ClaimsPrincipal(identity),
                new AuthenticationProperties
                {
                    IsPersistent = req.RememberMe,
                    ExpiresUtc = DateTimeOffset.UtcNow.AddMinutes(30)
                });

            return Ok(new
            {
                token = jwt,
                expires = expires,
                empName = emp.Emp_firstname + " " + emp.Emp_surname
            });

            //var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

            //var authProperties = new AuthenticationProperties
            //{
            //    IsPersistent = true,
            //    ExpiresUtc = DateTime.UtcNow.AddMinutes(30)
            //};

            //await HttpContext.SignInAsync(
            //    CookieAuthenticationDefaults.AuthenticationScheme,
            //    new ClaimsPrincipal(claimsIdentity),
            //    authProperties);

            //return Redirect("/home"); // after successful login
        }


        [HttpGet("userlogout")]
        public async Task<IActionResult> UserLogout()
        {
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            return Redirect("/");
        }   
    }
}
