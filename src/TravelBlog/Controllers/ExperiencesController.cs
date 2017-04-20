using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TravelBlog.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering;

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
            return View(db.Experiences.Include(experiences => experiences.Location).ToList());
        }

        // Get: Details
        public IActionResult Details(int id)
        {
            var thisExpPer = db.Experiences.FirstOrDefault(experiences => experiences.ExperienceId == id);
            return View(thisExpPer);
        }

        public IActionResult Create()
        {
            ViewBag.LocationId = new SelectList(db.Locations, "LocationId", "City");
            return View();
        }
        [HttpPost]
        public IActionResult Create(Experience experience)
        {
            db.Experiences.Add(experience);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public IActionResult Update(int id)
        {
            ViewBag.LocationId = new SelectList(db.Locations, "LocationId", "City");
            var thisExperience = db.Experiences.FirstOrDefault(experiences => experiences.ExperienceId == id);
            return View(thisExperience);
        }
        [HttpPost]
        public IActionResult Update(Experience experience)
        {
            db.Entry(experience).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Delete(int id)
        {
            var thisExperience = db.Experiences.FirstOrDefault(experiences => experiences.ExperienceId == id);
            return View(thisExperience);
        }

        [HttpPost,  ActionName("Delete")]
        public IActionResult DeleteConfirmed(int id)
        {
            var thisExperience = db.Experiences.FirstOrDefault(experiences => experiences.ExperienceId == id);
            db.Experiences.Remove(thisExperience);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
