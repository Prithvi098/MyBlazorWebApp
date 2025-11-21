using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace MyBlazorApp.Common
{
    public class JwtTokenService
    {
        private readonly IConfiguration _config;

        public JwtTokenService(IConfiguration config)
        {
            _config = config;
        }

        public (string, DateTime) GenerateToken(List<Claim> Claims)
        {
            // ---------------- JWT CREATION ----------------//
            var jwt = _config.GetSection("Jwt");
            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwt["Key"]));
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
            var expire = DateTime.UtcNow.AddMinutes(Convert.ToDouble(jwt["ExpiresInMinutes"]));


            var token = new JwtSecurityToken(
                issuer: jwt["Issuer"],
                audience: jwt["Audience"],
                claims: Claims,
                expires: expire,
                signingCredentials: creds
            );
            var jwttoken = new JwtSecurityTokenHandler().WriteToken(token);

            return (jwttoken, expire);
        }
    }
}
