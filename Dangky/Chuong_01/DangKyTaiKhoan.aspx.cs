using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chuong_01
{
    public partial class DangKyTaiKhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            string kq = "";
            kq += "<br>";
            kq += "Tên Đăng Nhập:" + txttendangnhap.Text;
            kq += "<br>";
            kq += "Mật Khẩu:" + txtmatkhau.Text;
            kq += "<br>";
            kq += "Tuổi:" + txttuoi.Text;
            kq += "<br>";
            kq += "Email:" + txtEmail.Text;
            kq += "<br>";
            kq += "Số Điện Thoại:" + txtSoDT.Text;
            kq += "<br>";
            // Lấy kq về Client
            lbxuatthongtin.Text = kq;

        }
    }
}