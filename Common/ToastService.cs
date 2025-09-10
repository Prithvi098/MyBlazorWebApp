namespace MyBlazorApp.Common
{
    public class ToastService
    {
        public event Action<ToastEntry>? OnShow;

        public void ShowToast(string message, string type, string title)
        {
            var entry = new ToastEntry
            {
                Title = title,
                Message = message,
                Type = type,
                IsActive = true
            };

            OnShow?.Invoke(entry); // type = "success", "warning", "error"
        }

        public class ToastEntry
        {
            public Guid Id { get; set; } = Guid.NewGuid();
            public string Title { get; set; } = "Success";
            public string Message { get; set; } = "Your changes have been saved";
            public string Type { get; set; } = "success"; // success, warning, error
            public bool IsActive { get; set; } = true;


        }

    }
}