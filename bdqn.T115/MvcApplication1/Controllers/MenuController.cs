using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bdqn.webApp.Controllers
{
    using T115.IBll;
    public class MenuController : Controller
    {
        //
        // GET: /Menu/
        public IMenuInfoBll mBll { get; set; }

        public ActionResult GetMenuInfo()
        {
            List<dbqn.T115OA.Model.MenuInfoModel> list = new List<dbqn.T115OA.Model.MenuInfoModel>();
            dbqn.T115OA.Model.MenuInfoModel m = new dbqn.T115OA.Model.MenuInfoModel()
            {
                href = "aa",
                title = "aaaa",
                icon = "aa",
            };
            list.Add(m);
            var data = list;
            return Json(data, JsonRequestBehavior.AllowGet);
        }

    }
}
