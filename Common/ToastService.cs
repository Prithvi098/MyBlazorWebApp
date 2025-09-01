namespace MyBlazorApp.Common
{
    public class ToastService
    {
        public event Action<string, string>? OnShow;

        public void ShowToast(string message, string type)
        {
            OnShow?.Invoke(message, type); // type = "success", "warning", "error"
        }

    }
}