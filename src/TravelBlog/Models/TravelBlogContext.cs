using System;
using Microsoft.EntityFrameworkCore;

namespace TravelBlog.Models
{
    public class TravelBlogContext : DbContext
    {

        public virtual DbSet<Location> Locations { get; set; }
        public virtual DbSet<Person> People { get; set; }
        public virtual DbSet<Experience> Experiences { get; set; }
        public virtual DbSet<ExperiencesPeople> ExperiencesPeople { get; set; }


        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=TravelBlog;integrated security=True");
        }

        public TravelBlogContext(DbContextOptions<TravelBlogContext> options)
            : base(options)
        {
        }

        public TravelBlogContext()
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }

        internal object Entity(Location location)
        {
            throw new NotImplementedException();
        }
    }
}