using System.ComponentModel.DataAnnotations;

namespace MyBlazorApp.Models
{
    public class Mst_Right
    {
        [Key]
        public int RID { get; set; }

        [StringLength(250)]
        public string? RightsName { get; set; }
    }
}
