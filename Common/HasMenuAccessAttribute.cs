namespace MyBlazorApp.Common
{
    public class HasMenuAccessAttribute : Attribute
    {
        public string? MenuName { get; set; }
        public HasMenuAccessAttribute(string menuName)
        {
            MenuName = menuName;
        }
    }
}
