namespace MyBlazorApp.Models
{
    public class MenuModel
    {
        public int MID { get; set; }
        public int? PMID { get; set; }
        public string MenuName { get; set; } = string.Empty;
        public string? MenuUrl { get; set; }
        public string? MenuDesc { get; set; }
        public int SortOrder { get; set; }

        public List<MenuModel> SubMenus { get; set; } = new();
    }
}
