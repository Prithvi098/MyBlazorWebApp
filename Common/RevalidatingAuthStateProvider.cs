using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.AspNetCore.Components.Server;

namespace MyBlazorApp.Common
{
    public class RevalidatingAuthStateProvider : RevalidatingServerAuthenticationStateProvider
    {
        public RevalidatingAuthStateProvider(
        ILoggerFactory loggerFactory)
        : base(loggerFactory)
        {
        }

        // how often Blazor checks the auth state
        protected override TimeSpan RevalidationInterval =>
            TimeSpan.FromMinutes(1);

        protected override Task<bool> ValidateAuthenticationStateAsync(
            AuthenticationState authenticationState,
            CancellationToken cancellationToken)
        {
            var user = authenticationState.User;

            if (user.Identity?.IsAuthenticated != true)
                return Task.FromResult(false);

            var expiresAtClaim = user.FindFirst("ExpiresAtUtc");

            if (expiresAtClaim == null)
                return Task.FromResult(false);

            if (!DateTimeOffset.TryParse(expiresAtClaim.Value, out var expiresAt))
                return Task.FromResult(false);

            return Task.FromResult(DateTimeOffset.UtcNow <= expiresAt);
        }
    }
}
