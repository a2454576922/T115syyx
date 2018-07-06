using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bdqn.webApp.Controllers
{
    using dbqn.T115OA.Model;
    public class StudentarchivesController : Controller
    {
        //
        // GET: /Studentarchives/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Add()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Add(StudentFile s)
        {

            return View();
        }
        public ActionResult Update()
        {
            return View();
        }
    }
}
