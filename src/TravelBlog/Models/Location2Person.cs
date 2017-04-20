using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace TravelBlog.Models
{
    [Table("LocationsPeople")]
    public class Location2Person
    {
        [Key]
        public int Id { get; set; }
        public int LocationId { get; set; }
        public int PersonId { get; set; }
    }
}
