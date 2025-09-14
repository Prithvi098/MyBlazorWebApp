using Microsoft.JSInterop;

namespace MyBlazorApp.Common
{
    public class ModalServices
    {
        private readonly IJSRuntime _js;

        public ModalServices(IJSRuntime js) => _js = js;

        public DepartmentModal Department => new DepartmentModal(_js);

        public class DepartmentModal
        {
            private readonly IJSRuntime _js;
            public DepartmentModal(IJSRuntime js) => _js = js;

            public async Task ShowAsync(string modalId)
            {
                await _js.InvokeVoidAsync("bootstrapModalHelper.show", modalId);
            }

            public async Task HideAsync(string modalId)
            {
                await _js.InvokeVoidAsync("bootstrapModalHelper.hide", modalId);
            }
        }
    }
}
