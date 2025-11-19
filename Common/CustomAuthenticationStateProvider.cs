using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.JSInterop;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;

namespace MyBlazorApp.Common
{
    public class CustomAuthenticationStateProvider : AuthenticationStateProvider
    {
        private readonly IJSRuntime _js;
        private AuthenticationState _authState =
            new AuthenticationState(new ClaimsPrincipal(new ClaimsIdentity()));

        private bool _initialized = false;

        public CustomAuthenticationStateProvider(IJSRuntime js)
        {
            _js = js;
        }

        public override async Task<AuthenticationState> GetAuthenticationStateAsync()
        {
            // During prerender → return empty identity
            if (!_initialized && _js is not IJSInProcessRuntime)
            {
                return _authState;
            }

            if (!_initialized)
            {
                await LoadUserFromToken();
                _initialized = true;
            }

            return _authState;
        }

        private async Task LoadUserFromToken()
        {
            var token = await _js.InvokeAsync<string>("localStorage.getItem", "jwt");

            if (string.IsNullOrWhiteSpace(token))
            {
                _authState = new AuthenticationState(new ClaimsPrincipal(new ClaimsIdentity()));
                return;
            }

            var handler = new JwtSecurityTokenHandler();
            var jwt = handler.ReadJwtToken(token);

            var identity = new ClaimsIdentity(jwt.Claims, "jwt");
            var user = new ClaimsPrincipal(identity);

            _authState = new AuthenticationState(user);
        }

        public async Task MarkUserAsAuthenticated(string token)
        {
            await _js.InvokeVoidAsync("localStorage.setItem", "jwt", token);

            var handler = new JwtSecurityTokenHandler();
            var jwt = handler.ReadJwtToken(token);

            var identity = new ClaimsIdentity(jwt.Claims, "jwt");
            var user = new ClaimsPrincipal(identity);

            _authState = new AuthenticationState(user);

            NotifyAuthenticationStateChanged(Task.FromResult(_authState));
        }

        public void NotifyAuthStateChanged()
        {
            NotifyAuthenticationStateChanged(GetAuthenticationStateAsync());
        }
    }
}
