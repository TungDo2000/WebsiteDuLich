using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QL_Tour.Models;

namespace QL_Tour.Controllers
{
    public class TourController : Controller
    {
        //
        // GET: /Tour/
        QL_TourDLichDataContext ql = new QL_TourDLichDataContext();
        public ActionResult ALLTour()
        {
            return View(ql.TOURs.ToList());
        }
        public int maTour = 0;
        [HttpGet]
        public ActionResult ChiTietTour(int maTour)
        {
            //Lấy ra mã sách:
            TOUR T = ql.TOURs.Single(s => s.MaTour == maTour);
            if (T == null)
            {
                return HttpNotFound();
            }
            else
            {
                maTour = T.MaTour;
                return View(T);
            }
        }
        [HttpPost]
        public ActionResult ChiTietTour(DATTOUR dh, FormCollection f)
        {
            KHACHHANG kh = (KHACHHANG)Session["TaiKhoan"];
            TOUR tour = ql.TOURs.SingleOrDefault(c => c.MaTour == maTour);
           
          // TOUR tour = (TOUR)Session["MaTour"];
            dh.MaTour = maTour;
            dh.MaKH = kh.MaKH;
            dh.MaHDV = 1;
            var TenNguoiHD = f["NguoiHuongDan"];
            var SL_NguoiLon = f["SL_NguoiLon"];
            var SL_TreEm = f["SL_TreEm"];
            var YeuCauThem = f["YeuCauThem"];
            var NgayBD = String.Format("{0: dd/mm/yyyy}", f["NgayBD"]);
            var ThanhTien = f["ThanhTien"];
            if (!String.IsNullOrEmpty(SL_NguoiLon) && !String.IsNullOrEmpty(SL_TreEm) && !String.IsNullOrEmpty(YeuCauThem) && !String.IsNullOrEmpty(ThanhTien))
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
