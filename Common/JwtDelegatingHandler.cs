using Microsoft.JSInterop;
using System.Net.Http.Headers;

namespace MyBlazorApp.Common
{
    public class JwtDelegatingHandler : DelegatingHandler
    {
        private readonly IJSRuntime _js;

        public JwtDelegatingHandler(IJSRuntime js)
        {
            _js = js;
        }

        protected override async Task<HttpResponseMessage> SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
        {
            try
            {
                var token = await _js.InvokeAsync<string>("localStorage.getItem", "authToken");
                if (!string.IsNullOrEmpty(token))
                    request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
            }
            catch { }

            return await base.SendAsync(request, cancellationToken);
        }
    }
}
