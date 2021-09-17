using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QL_Tour.Models;

namespace QL_Tour.Controllers
{
    public class LoaiTourController : Controller
    {
        //
        // GET: /LoaiTour/
        QL_TourDLichDataContext ql = new QL_TourDLichDataContext();
        public ActionResult TrongNuoc()
        {
            return View(ql.MIENs.ToList());
        }
        public ActionResult NgoaiNuoc()
        {
            return View(ql.ChauLucs.ToList());
        }
        public ActionResult DSTourTrongNuoc(int maTour)
        {
            var hienSP = ql.TOURs.Where(s => s.MaMien == maTour).ToList();
            if (hienSP.Count == 0)
            {
                ViewBag.Loai = "Loại Tour của chúng tôi đã Full quý khách có thể xem các Tour khác!";
            }
            return View(hienSP);
        }
        public ActionResult DSTourNgoaiNuoc(int maTour)
        {
            var hienSP = ql.TOURs.Where(s => s.MaChauLuc == maTour).ToList();
            if (hienSP.Count == 0)
            {
                ViewBag.Loai = "Loại Tour của chúng tôi đã Full quý khách có thể xem các Tour khác!";
            }
            return View(hienSP);
        }

    }
}
