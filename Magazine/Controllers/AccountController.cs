using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Magazine.Models;
using DataAccess.Framework;
using DataAccess;
using Magazine.Areas.Admin.Code;
namespace Magazine.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        
    }
}