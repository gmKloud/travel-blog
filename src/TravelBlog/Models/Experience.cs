using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace TravelBlog.Models
{
    [Table("Experiences")]
    public class Experience
    {
        //public Experience()
        //{
        //    this.People = new HashSet<Person>();
        //}

        [Key]
        public int ExperienceId { get; set; }
        public string Title { get; set; }
        public string Story { get; set; }

        //This is where the one to many relationship is established.
        //Many experiences to one location
        public int LocationId { get; set; }
        public virtual Location Location { get; set; }
        //public virtual ICollection<Person> People { get; set; }
    }
}
