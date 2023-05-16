using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Lab07_BookStore
{
    public partial class XemSach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int macd = 5;
            if (Request.QueryString["macd"] != null)
            {
                macd = int.Parse(Request.QueryString["macd"]);
            }

            //1. Mở kết nối CSDL
            SqlConnection conn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["BookStoreDBConnectionString"].ConnectionString);
            conn.Open();
            //2.tao truy van
            SqlCommand cmd = new SqlCommand("select count(*) from Sach where macd=@macd", conn);
            cmd.Parameters.AddWithValue("@macd", macd);
            //3.thuc thi ket qua;
            int count = (int)cmd.ExecuteScalar();
            //4.Xuất thông báo;
            lblthongbao.Text = "Số lượng sách là "  + count.ToString();


            //lblthongbao.Text = "Số lượng sách là " + rptSach.Items.Count.ToString();
        }

    }
}