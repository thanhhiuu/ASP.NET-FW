using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopSach

namespace ShopHoaa
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //1.Mo ket noi CSDL
            SqlConnection conn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString);
            conn.Open();
            //2.tao truy van
            SqlCommand cmd = new SqlCommand("select * from taikhoan where tentk=@TenTK and matkhau=@MatKhau",
            conn);
            cmd.Parameters.AddWithValue("@TenTK", "TenTK");
            cmd.Parameters.AddWithValue("@MatKhau", "TenTK");
            //3.thuc thi ket qua;
            SqlDataReader dr = cmd.ExecuteReader();
            //4.xu ly ket qua tra ve
            if (dr.Read())
            {
                string TenTK = dr["tentk"].ToString();
                string MatKhau = dr["matkhau"].ToString();
                string VaiTro = dr["vaitro"].ToString();
            }
            return;
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string TenTK = .Text;
            string MatKhau = txtMatKhau.Text;
         

            if (TenTK == null)
            {
                lblThongbao.Text = "Tên đăng nhập hoặc mật khẩu không đúng. Đăng nhập";
            }
            else
            {
                lblThongbao.Text = "Đăng nhập thành công";
                //luu lại trang thái đã đăng nhập thành công của người dùng vào Session
                Session["USER"] = TenTK;

                //điều hướng người dùng đến trang dành cho đối tượng là Cán bộ đào tạo
                Response.Redirect("XemSach.aspx");
            }
        }
    }
}