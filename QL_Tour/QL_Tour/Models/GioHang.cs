using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using QL_Tour.Models;
namespace QL_Tour.Models
{
    public class GioHang
    {
        QL_TourDLichDataContext ql = new QL_TourDLichDataContext();
        public int iMaSP { set; get; }
        public string sTenSP { set; get; }
        public string sAnhBia { set; get; }
        public double dGia { set; get; }
        public int iSoLuong { set; get; }
        public double dThanhTien
        {
            get { return iSoLuong * dGia; }
        }
        //Khởi tạo giỏ hàng
        public GioHang(int MaSanPham)
        {
            iMaSP = MaSanPham;
            TOUR Sp = ql.TOURs.Single(s => s.MaTour == iMaSP);
            sTenSP = Sp.TenTour;
            sAnhBia = Sp.HinhAnh;
            dGia = double.Parse(Sp.Gia.ToString());
            iSoLuong = 1;
        }
    }
}