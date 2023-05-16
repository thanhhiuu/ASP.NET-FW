using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebQLDaoTao.Models;

namespace WebQLDaoTao
{
    public partial class DangNhap : System.Web.UI.Page
    {
        TaiKhoanDao DAO = new TaiKhoanDao();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string tendangnhap = txtTenDangNhap.Text;
            string matkhau = txtMatKhau.Text;

            // Truy xuat CSDL
            TaiKhoan tk = DAO.checkLogin(tendangnhap, matkhau);
            if (tk == null)
            {
                lbThongBao.Text = "Mật khẩu hoặc tên đăng nhập không đúng !";
            }
            else
            {
                lbThongBao.Text = "Đăng Nhập Thành Công";
                // Lưu trang thai đăng nhập của người dùng vào Session
                Session["USER"] = tk;
                if (tk.VaiTro == "admin")
                {
                    Response.Redirect("MonHoc.aspx");
                }
                else if (tk.VaiTro == "sinhvien")
                {
                    lbThongBao.Text = "Hiện chưa cập nhật";
                }
            }
        }
    }
}