using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopHoa
{
    public partial class TraCuu : System.Web.UI.Page
    {   
        
        protected void Page_Load(object sender, EventArgs e)
        {  
            // Lấy giá trị nhập đưa vào lbGiaNhapTu
            string textGiaTu = txtGiaTu.Text;
            lbGiaNhapTu.Text = textGiaTu;
            // Lấy giá trị nhập đưa vào lbGiaNhapDen
            string textGiaNhap = txtGiaDen.Text;
            lbGiaNhapDen.Text = textGiaNhap;
          
        }
    }
}