using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QL_Tour.Models;

namespace QL_Tour.Controllers
{
    public class GioHangController : Controller
    {
        //
        // GET: /GioHang/

        public ActionResult Index()
        {
            return View();
        }
        QL_TourDLichDataContext ql = new QL_TourDLichDataContext();
        //Lấy giỏ hàng
        public List<GioHang> LayGioHang()
        {
            List<GioHang> listGHang = Session["GioHang"] as List<GioHang>;
            if (listGHang == null)
            {
                //Nếu gỏi k tồn tại thì khởi tạo
                listGHang = new List<GioHang>();
                Session["GioHang"] = listGHang;
            }
            return listGHang;
        }
        //Thêm vào giỏ hàng
        public ActionResult ThemGioHang(int maSP, string strURL)
        {
            //lấy ra giỏ hàng
            List<GioHang> listGHang = LayGioHang();
            //Kiểm tra sách này tồn tại trong session chưa?
            GioHang sp = listGHang.Find(dhang => dhang.iMaSP == maSP);
            if (sp == null)
            {
                sp = new GioHang(maSP);
                listGHang.Add(sp);
                return Redirect(strURL);
            }
            else
            {
                sp.iSoLuong++;
                return Redirect(strURL);
            }
        }
        //Tổng số lương
        private int tongSoLuong()
        {
            int tsl = 0;
            List<GioHang> listGHang = Session["GioHang"] as List<GioHang>;
            if (listGHang != null)
            {
                tsl += listGHang.Sum(sp => sp.iSoLuong);
            }
            return tsl;
        }
        //Tổng Thành tiền
        private double tongThanhTien()
        {
            double ttt = 0;
            List<GioHang> listGHang = Session["GioHang"] as List<GioHang>;
            if (listGHang != null)
            {
                ttt += listGHang.Sum(sp => sp.dThanhTien);
            }
            return ttt;
        }
        //xây dựng trang giỏ hàng
        public ActionResult GioHang()
        {
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("ALLTour", "Tour");
            }
            List<GioHang> listGHang = LayGioHang();
            ViewBag.TongSLuong = tongSoLuong();
            ViewBag.TongTTien = tongThanhTien();
            return View(listGHang);
        }
        //hiển thị sl giỏ hàng
        public ActionResult GioHangPartail()
        {
            ViewBag.TongSLuong = tongSoLuong();
            ViewBag.TongTTien = tongThanhTien();
            return PartialView();
        }
        //xóa giỏ hàng
        public ActionResult XoaGioHang(int maSP)
        {
            //Lấy giỏ hàng
            List<GioHang> listGHang = LayGioHang();
            //KIểm tra giỏ hàng
            GioHang sp = listGHang.Single(s => s.iMaSP == maSP);
            //nếu có thì xóa nè
            if (sp != null)
            {
                listGHang.RemoveAll(s => s.iMaSP == maSP);
                return RedirectToAction("GioHang", "GioHang");
            }
            //Nếu giỏ hàng rỗng
            if (listGHang.Count == 0)
            {
                return RedirectToAction("ALLTour", "Tour");
            }
            return RedirectToAction("ALLTour", "Tour");
        }
        //Xóa toàn bộ giỏ hàng
        public ActionResult XoaTatcaGioHang()
        {
            List<GioHang> listGHang = LayGioHang();
            listGHang.Clear();
            return RedirectToAction("GioHang", "GioHang");
        }
        //updat giỏ hàng
        public ActionResult updateGioHang(int maSP, FormCollection f)
        {
            //Lấy giỏ hàng
            List<GioHang> listGHang = LayGioHang();
            //Kiểm tra xem scah cần cập nhật có trong hàng không?
            GioHang sp = listGHang.Single(s => s.iMaSP == maSP);
            //nếu có cập nhật
            if (sp != null)
            {
                sp.iSoLuong = int.Parse(f["txt_SoLuong"].ToString());
            }
            return RedirectToAction("GioHang", "GioHang");
        }
        [HttpGet]
        public ActionResult DatHang()
        {
            if (Session["TaiKhoan"] == null || Session["TaiKhoan"].ToString() == "")
            {
                return RedirectToAction("DangNhap", "NguoiDung");
            }
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("SanPham", "Product");
            }
            List<GioHang> lstGioHang = LayGioHang();
            ViewBag.TongSL = tongSoLuong();
            ViewBag.TongThanhTien = tongThanhTien();
            return View(lstGioHang);
        }
        [HttpPost]
        public ActionResult DatHang(FormCollection f)
        {
            DATTOUR dh = new DATTOUR();
            KHACHHANG kh = (KHACHHANG)Session["TaiKhoan"];
            List<GioHang> lstGioHang = LayGioHang();
            foreach (var item in lstGioHang)
            {
             
                dh.MaKH = kh.MaKH;
                dh.MaTour = item.iMaSP;
                var MaHDV = int.Parse(f["MaHDV"]);
                var NgayBD = String.Format("{0: dd/mm/yyyy}", f["NgayBD"]);
                var NgayKT = String.Format("{0: dd/mm/yyyy}", f["NgayKT"]);
                var txt_SoLuong = int.Parse(f["txt_SoLuong"]);
                dh.MaHDV = MaHDV;
                dh.NgayBD = DateTime.Parse(NgayBD);
               // dh.SoLuong = txt_SoLuong;
              
               // dh.SoLuong = item.iSoLuong;
                dh.thanhTien = (double)item.dGia;
                ql.DATTOURs.InsertOnSubmit(dh);
            }
            ql.DATTOURs.InsertOnSubmit(dh);
            ql.SubmitChanges();
            Session["GioHang"] = null;
            return RedirectToAction("XacNhanDonhang", "GioHang");
        }
        public ActionResult XacNhanDonHang()
        {
            return View();
        }
        [HttpGet]
        public ActionResult DatHang2(int maSp)
        {
            //Lấy ra mã sách:
            TOUR T = ql.TOURs.Single(s => s.MaTour == maSp);
            if (T == null)
            {
                return HttpNotFound();
            }
            return View(T);
        }
        [HttpPost]
        public ActionResult DatHang2(int maSp, FormCollection f)
        {
            DATTOUR dh = new DATTOUR();
            //Lấy ra mã sách:
            TOUR T = ql.TOURs.Single(s => s.MaTour == maSp);
            if (T == null)
            {
                return HttpNotFound();
            }
            int ma = T.MaTour;
           KHACHHANG kh = (KHACHHANG)Session["TaiKhoan"];
       

             dh.MaKH = kh.MaKH;
                dh.MaTour = ma;
                var MaHDV = int.Parse(f["MaHDV"]);
                var NgayBD = String.Format("{0: dd/mm/yyyy}", f["NgayBD"]);
                var NgayKT = String.Format("{0: dd/mm/yyyy}", f["NgayKT"]);
                var txt_SoLuong = int.Parse(f["txt_SoLuong"]);
                dh.MaHDV = MaHDV;
                dh.NgayBD = DateTime.Parse(NgayBD);
              //  dh.SoLuong = txt_SoLuong;

                dh.thanhTien = txt_SoLuong;
                ql.DATTOURs.InsertOnSubmit(dh);
            
            ql.DATTOURs.InsertOnSubmit(dh);
            ql.SubmitChanges();
            Session["GioHang"] = null;
            return RedirectToAction("XacNhanDonhang", "GioHang");
        }

    }
}
