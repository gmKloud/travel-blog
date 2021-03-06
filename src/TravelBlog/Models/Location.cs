﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TravelBlog.Models
{
    [Table("Locations")]
    public class Location
    {
        public Location()
    {
            this.Experiences = new HashSet<Experience>();
            //this.People = new HashSet<Person>();
    }
        [Key]
        public int LocationId { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        //public virtual Experience Experience { get; set; }
        public virtual ICollection<Experience> Experiences { get; set; }
        //public virtual ICollection<Person> People { get; set; }

    }
}
