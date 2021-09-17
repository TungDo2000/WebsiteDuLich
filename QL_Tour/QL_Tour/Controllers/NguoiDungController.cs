using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QL_Tour.Models;

namespace QL_Tour.Controllers
{
    public class NguoiDungController : Controller
    {
        //
        // GET: /NguoiDung/

        public ActionResult Index()
        {
            return View();
        }
        QL_TourDLichDataContext ql = new QL_TourDLichDataContext();
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangKy(KHACHHANG kh, FormCollection f)
        {
            //Gán các giá trị người dùng nhập từ form f cho các biến
            var tenDN = f["tenDN"];
            var matKhau = f["Password"];
            var reMatKhau = f["resPassword"];
            var email = f["Email"];

           
            if (String.IsNullOrEmpty(tenDN))
            {
                ViewData["Loi2"] = "Tên đăng nhập không được bỏ trống";
            }
            if (String.IsNullOrEmpty(matKhau))
            {
                ViewData["Loi3"] = "mật khẩu không được bỏ trống";
            }
            if (String.IsNullOrEmpty(reMatKhau))
            {
                ViewData["Loi4"] = " không được bỏ trống";
            }
           
            if (String.IsNullOrEmpty(email))
            {
                ViewData["Loi7"] = "Email không được bỏ trống";
            }
            if (!String.IsNullOrEmpty(tenDN) && !String.IsNullOrEmpty(matKhau) && !String.IsNullOrEmpty(reMatKhau)  && !String.IsNullOrEmpty(email))
            {
                KHACHHANG kh1 = ql.KHACHHANGs.SingleOrDefault(c => c.TenDN == tenDN);
                if (kh1 != null)
                {
                    ViewBag.TB = "Tài khoản đã tồn tại (^-^)";
                }
                else
                {
                    //Gán đối tượng    
                    kh.TenDN = tenDN;
                    kh.TenKH = tenDN;
                    kh.MatKhau = matKhau;
                    kh.Email = email;
                    //Ghi xuống CSDL
                    ql.KHACHHANGs.InsertOnSubmit(kh);
                    ql.SubmitChanges();
                    return RedirectToAction("ALLTour", "Tour");
                }
            }
            return View();
        }
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(FormCollection f)
        {
            var tenDN = f["TenDN"];
            var matKhau = f["MatKhau"];
            if (String.IsNullOrEmpty(tenDN))
            {
                ViewData["Loi1"] = "Tên đăng nhập không bỏ trống";
            }
            if (String.IsNullOrEmpty(matKhau))
            {
                ViewData["Loi2"] = "Vui lòng nhập mật khẩu";
            }
            if (!String.IsNullOrEmpty(tenDN) && !String.IsNullOrEmpty(matKhau))
            {
                KHACHHANG kh1 = ql.KHACHHANGs.SingleOrDefault(c => c.TenDN == tenDN && c.MatKhau == matKhau);
                if (kh1 != null)
                {
                    ViewBag.TB = "Đăng nhập thành công";
                    Session["taiKhoan"] = kh1;
                    Session["tenTaiKhoan"] = kh1.TenKH;
                    return RedirectToAction("ALLTour", "Tour");//
                }
                else
                {
                    ViewBag.TB = "Vui lòng kiểm tra lại";
                }
            }
            return View();
        }
        public ActionResult DangXuat()
        {
            if (Session["TaiKhoan"] != null)
            {

                Session["TaiKhoan"] = null;
                return RedirectToAction("ALLTour", "Tour");
            }
            return RedirectToAction("ALLTour", "Tour");
        }

    }
}
