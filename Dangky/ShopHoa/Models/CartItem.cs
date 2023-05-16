using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopHoa.Models
{
    public class CartItem
    {
        public int MaSP { get; set; }
        public string TenSP { get; set; }
        public string Hinh { get; set; }
        public int DonGia { get; set; }
        public int SoLuong { get; set; }
        public int ThanhTien { get { return SoLuong * DonGia; } }
    }

}