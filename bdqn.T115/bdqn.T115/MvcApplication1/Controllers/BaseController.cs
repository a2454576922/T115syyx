using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bdqn.webApp.Controllers
{
    public class BaseController : Controller
    {
        //
        // GET: /Base/

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if(Session[T115.Common.Key.loginKey] == null){
                Response.Redirect("/User/Index");
            }
        }
    }
}
