namespace MyBlazorApp.Common
{
    public class EmployeeNavigationState
    {
        public int? EditEmpId { get; set; }

        public bool IsEditMode => EditEmpId.HasValue;

        public void Clear()
        {
            EditEmpId = null;
        }
    }
}
