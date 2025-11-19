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
            /* string? token = null;

             try
             {
                 token = await _js.InvokeAsync<string>("localStorage.getItem", "authToken");
             }
             catch
             {
                 // JS not ready (during prerender)
                 return await base.SendAsync(request, cancellationToken);
             }

             if (!string.IsNullOrWhiteSpace(token))
             {
                 request.Headers.Authorization =
                     new AuthenticationHeaderValue("Bearer", token);
             }

             return await base.SendAsync(request, cancellationToken);*/

            try
            {
                // read token
                var token = await _js.InvokeAsync<string>("localStorage.getItem", "authToken");

                if (!string.IsNullOrEmpty(token))
                {
                    request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
                }
            }
            catch { }

            return await base.SendAsync(request, cancellationToken);
        }
    }
}
