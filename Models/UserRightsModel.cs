namespace MyBlazorApp.Models
{
    public class UserRightsModel
    {
        public int EmpId { get; set; }
        public List<Mst_UserRight_New> UserRights { get; set; } = new();
    }
}
