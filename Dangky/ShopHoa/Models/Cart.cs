using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace ShopHoa.Models
{
    public class Cart
    {
        // Khai báo danh sách dùng để lưu trữ các sản phẩm
        private List<CartItem> items;
        // Phương thức khởi tạo giỏ hàng
        public Cart()
        {
            items = new List<CartItem>();
        }    
        // Phương thức trả về danh sách các sản phẩm của giỏ
        public List<CartItem> Items { get { return items; } }
        //Thêm sản phẩm vào giỏ
        public void Add(int masp)
        {
            // Truy vấn csdl lấy thông tin về sản phầm
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Hoa where mahoa = @mahoa", conn);
           SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                // Tạo đối tượng CartItem
                CartItem item = new CartItem
                {
                    MaSP = masp,
                    TenSP = dr["TenHoa"].ToString(),
                    Hinh = dr["Hinh"].ToString(),
                    DonGia = int.Parse(dr["Gia"].ToString()), 
                    SoLuong = 1
                };
                // Thêm vào giỏ hàng (đề nghị sinh vien tự lập trình cho trường hợp sản phẩm đã có trong giỏ)
                items.Add(item);
            }
        }
        // Cập nhật số lượng
        public void Update(int masp, int soluong)
        {

        }
        // Xóa sản phẩm
        public void Delete(int masp)
        {

        }
        // Tổng thành tiền
        public int Tongtien {
            get
            {
                int tong = 0;
                foreach (CartItem item in items)
                {
                    tong += item.ThanhTien;
                }
                return tong;
            }
        }  

    } 
}