using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QL_Tour.Models;

namespace QL_Tour.Controllers
{
    public class DatTourController : Controller
    {
        //
        // GET: /DatTour/
        QL_TourDLichDataContext ql = new QL_TourDLichDataContext();
        public ActionResult Index()
        {

            return View();
        }
        //[HttpGet]
        //public ActionResult DatTourDL(int maSp)
        //{
        //    TOUR T = ql.TOURs.Single(s => s.MaTour == maSp);
        //    if (T == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(T);
        //}
        [HttpPost]
        public ActionResult DatTourDL(DATTOUR dh,FormCollection f)
        {
            KHACHHANG kh = (KHACHHANG)Session["TaiKhoan"];
            TOUR tour = (TOUR)Session["MaTour"];
            dh.MaKH = kh.MaKH;
            dh.MaTour = tour.MaTour;
            var TenNguoiHD = f["NguoiHuongDan"];
            var SL_NguoiLon = f["SL_NguoiLon"];
            var SL_TreEm = f["SL_TreEm"];
            var YeuCauThem = f["YeuCauThem"];
            var NgayBD = String.Format("{0: dd/mm/yyyy}", f["NgayBD"]);
            DateTime Ngay = DateTime.Parse(NgayBD);
            var ThanhTien = f["ThanhTien"];
            if (!String.IsNullOrEmpty(SL_NguoiLon) && !String.IsNullOrEmpty(SL_TreEm) && !String.IsNullOrEmpty(YeuCauThem) && !String.IsNullOrEmpty(ThanhTien) && Ngay < DateTime.Now)
            {
                //KHACHHANG kh1 = ql.KHACHHANGs.SingleOrDefault(c => c.TenDN == tenDN);
                //if (kh1 != null)
                //{
                //    ViewBag.TB = "Tài khoản đã tồn tại (^-^)";
                //}
                //else
                //{
                //Gán đối tượng    
                dh.SoLuongNguoiLon = int.Parse(SL_NguoiLon);
                dh.SoLuongTreEm = int.Parse(SL_TreEm);
                dh.YeuCauThem = YeuCauThem;
                dh.thanhTien = (double)tour.Gia * int.Parse(SL_NguoiLon) + ((double)tour.Gia * int.Parse(SL_TreEm) - 0.25 * (double)tour.Gia * int.Parse(SL_TreEm));
                dh.MaHDV = 1;
                dh.NgayBD = DateTime.Parse(NgayBD);
                //Ghi xuống CSDL
                ql.KHACHHANGs.InsertOnSubmit(kh);
                ql.SubmitChanges();
                return RedirectToAction("ALLTour", "Tour");
                // }
            }
           
            return View();
        }

    }
}
