using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.JSInterop;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;

namespace MyBlazorApp.Common
{
    public class CustomAuthenticationStateProvider : AuthenticationStateProvider
    {
        private readonly IJSRuntime _js;

        public CustomAuthenticationStateProvider(IJSRuntime js)
        {
            _js = js;
        }

        public override async Task<AuthenticationState> GetAuthenticationStateAsync()
        {
            string token = "";

            try
            {
                token = await _js.InvokeAsync<string>("localStorage.getItem", "authToken");
            }
            catch
            {
                // prerendering -> return anonymous
                var anonymousUser = new ClaimsPrincipal(new ClaimsIdentity());
                return new AuthenticationState(anonymousUser);
            }

            if (string.IsNullOrEmpty(token))
            {
                var anonymousUser = new ClaimsPrincipal(new ClaimsIdentity());
                return new AuthenticationState(anonymousUser);
            }

            var handler = new JwtSecurityTokenHandler();
            var jwt = handler.ReadJwtToken(token);

            var identity = new ClaimsIdentity(jwt.Claims, "jwt");
            var user = new ClaimsPrincipal(identity);

            return new AuthenticationState(user);
        }

        public void NotifyAuthStateChanged()
        {
            NotifyAuthenticationStateChanged(GetAuthenticationStateAsync());
        }
    }
}
