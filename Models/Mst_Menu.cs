using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyBlazorApp.Models
{
    [Table("Mst_Menu")]
    public class Mst_Menu
    {
        [Key]
        public int MID { get; set; }

        public int? PMID { get; set; }

        [StringLength(200)]
        public string? MenuName { get; set; }

        [StringLength(200)]
        public string? MenuUrl { get; set; }

        [StringLength(200)]
        public string? MenuDesc { get; set; }

        [StringLength(500)]
        public string? MainMenu { get; set; }

        public int? SortOrder { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedOn { get; set; }

        public int? UpdatedBy { get; set; }

        public DateTime? UpdatedOn { get; set; }

        public int? DeletedBy { get; set; }

        public DateTime? DeletedOn { get; set; }

        public bool? IsFrontMenu { get; set; }
    }
}
