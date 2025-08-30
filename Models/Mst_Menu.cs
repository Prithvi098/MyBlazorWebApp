using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyBlazorApp.Models
{
    [Table("Mst_Menu")]
    public class Mst_Menu
    {
        [Key]
        public int MID { get; set; }

        public string? MenuName { get; set; }

        public string? MenuUrl { get; set; }

        public int MenuSortOrder { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedOn { get; set; }

        public int? UpdatedBy { get; set; }

        public DateTime? UpdatedOn { get; set; }

        public int? DeletedBy { get; set; }

        public DateTime? DeletedOn { get; set; }
    }
}
