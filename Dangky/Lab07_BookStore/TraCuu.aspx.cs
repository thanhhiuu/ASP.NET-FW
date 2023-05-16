using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab07_BookStore
{
    public partial class TraCuu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntracuu_Click(object sender, EventArgs e)
        {
            // from: từ 
            // form: khung, biểu mẩu 
            dssach.SelectCommand = "select * from Sach where tensach like N'% " + txttensach.Text + " %'";
            gvSach.DataSourceID = "dssach";
            gvSach.DataBind();
        }
    }
}