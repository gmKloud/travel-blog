using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TravelBlog.Models;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace TravelBlog.Controllers
{
    public class ExperiencesController : Controller
    {

        //DB connection context setup
        private TravelBlogContext db = new TravelBlogContext();

        // GET: /<controller>/
        public IActionResult Index()
        {
            return View(db.Experiences.ToList());
        }

        // Get: Details
        public IActionResult Details(int id)
        {
            var thisExp = db.Experiences.FirstOrDefault(experiences => experiences.ExperienceId == id);
            return View(thisExp); 
        }
    }
}
