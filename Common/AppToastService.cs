using BlazorBootstrap;

namespace MyBlazorApp.Common
{
    public class AppToastService
    {
        /*public event Action<ToastEntry>? OnShow;*/

        public event Action<ToastMessage>? OnShow;

        public void Show(string message, ToastType type = ToastType.Success, string title = "")
        {
            var toast = new ToastMessage
            {
                Type = type,
                Title = string.IsNullOrWhiteSpace(title) ? type.ToString() : title,
                Message = message,
                
            };

            OnShow?.Invoke(toast);
        }

        /*public void ShowToast(string message, string type, string title)
        {
            var entry = new ToastEntry
            {
                Title = title,
                Message = message,
                Type = type,
                IsActive = true,
                DurationMs = 5500
            };

            OnShow?.Invoke(entry); // type = "success", "warning", "error"
        }*/

        public class ToastEntry
        {
            public Guid Id { get; set; } = Guid.NewGuid();
            public string Title { get; set; } = "Success";
            public string Message { get; set; } = "Your changes have been saved";
            public string Type { get; set; } = "success"; // success, warning, error
            public bool IsActive { get; set; } = true;
            public int DurationMs { get; set; } = 5000;


        }

    }
}