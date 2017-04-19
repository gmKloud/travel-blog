using System;
using Microsoft.EntityFrameworkCore;

namespace TravelBlog.Models
{
    public class TravelBlogContext : DbContext
    {

        public TravelBlogContext()
        {

        }

        public virtual DbSet<Location> Locations { get; set; }
        public DbSet<People> Peoples { get; set; }
        public DbSet<Experience> Experiences { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=TravelBlog;integrated security=True");
        }

        private DbContextOptionsBuilder UseSqlServer(string v)
        {
            throw new NotImplementedException();
        }

        public TravelBlogContext(DbContextOptions<TravelBlogContext> options) : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
    }
}