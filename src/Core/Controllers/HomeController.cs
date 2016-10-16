using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Core.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Baking()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Blimps()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Canning()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Cooking()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Fishing()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult LearningBlog()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Messaging()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Weather()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult WMD()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }
       
        public IActionResult Error()
        {
            return View();
        }
    }
}
