using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TravelBlog.Models
{
    [Table("ExperiencesPeople")]
    public class ExperiencesPeople
    {
        [Key]
        public int Id { get; set; }
        public int ExperienceId { get; set; }
        public int PersonId { get; set; }
    }
}