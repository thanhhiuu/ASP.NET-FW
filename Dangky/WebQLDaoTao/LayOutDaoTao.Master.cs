using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebQLDaoTao.Models;

namespace WebQLDaoTao
{
    public partial class LayOutDaoTao : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TaiKhoan tk = (TaiKhoan)Session["USER"];
            if(tk == null || tk.VaiTro !="admin")
            {
                Response.Redirect("DangNhap.aspx");
            }else
            {
                lbUserName.Text = "Tên Đăng Nhập " + tk.TenDangNhap; 
            }
        }
    }
}