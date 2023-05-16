using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopHoa.Models;

namespace ShopHoa
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                NapDuLieu();
            }
        }

        private void NapDuLieu()
        {
            Cart cart = (Cart)Session["CART"];
            if(cart != null )
            {
                // Lien ket du lieu cho DataGrudView
               gvGioHang.DataSource = cart.Items;
                gvGioHang.DataBind();
                // sum thanh tien
                lblthanhtien.Text = cart.Items.Count.ToString();
            }
        }
    }
}