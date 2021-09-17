using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QL_Tour.Models;

namespace QL_Tour.Models
{
    public class TrangChuController : Controller
    {
        //
        // GET: /TrangChu/

        public ActionResult Index()
        {
            return View();
        }
        QL_TourDLichDataContext ql = new QL_TourDLichDataContext();
        public ActionResult SanPham()
        {
            return View(ql.TOURs.ToList());
        }

    }
}
