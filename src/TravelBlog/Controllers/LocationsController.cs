using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TravelBlog.Models;
using Microsoft.EntityFrameworkCore;

namespace TravelBlog.Controllers
{
    public class LocationsController : Controller
    {
        //DB connection context setup
        private TravelBlogContext db = new TravelBlogContext();

        // GET: /<controller>/
        public IActionResult Index()
        {
            return View(db.Locations.ToList());
            //return View(db.Locations.Include(locations => locations.Experience).ToList());
        }

        public IActionResult Details(int id)
        {
            var thisLocation = db.Locations.FirstOrDefault(locations => locations.LocationId == id);
            return View(thisLocation);
        }

        //Get - Create
        public IActionResult Create()
        {
            return View();
        }

        //Post - Create
        [HttpPost]
        public IActionResult Create(Location location)
        {
            db.Locations.Add(location);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        //Get - Update
        public IActionResult Update(int id)
        {
            var thisLocation = db.Locations.FirstOrDefault(locations => locations.LocationId == id);
            return View(thisLocation);
        }

        //POST - Update
        [HttpPost]
        public IActionResult Update(Location location)
        {
            db.Entry(location).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        //Get - Delete
        public IActionResult Delete(int id)
        {
            var thisLoc = db.Locations.FirstOrDefault(locations => locations.LocationId == id);
            return View(thisLoc);
        }

        //POST - Delete
        [HttpPost, ActionName("Delete")]
        public IActionResult DeleteConfirmed(int id)
        {
            var thisLoc = db.Locations.FirstOrDefault(locations => locations.LocationId == id);
            db.Locations.Remove(thisLoc);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
