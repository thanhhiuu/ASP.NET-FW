using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebQLDaoTao.Models;

namespace WebQLDaoTao
{
    public partial class MonHoc : System.Web.UI.Page
    {
        MonHocDAO DAO = new MonHocDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                // Liên kết dữ liệu cho dvMonHoc
                gvMonHoc.DataSource = DAO.getAll();
                gvMonHoc.DataBind();
            }
        }

        protected void gvMonHoc_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Chuyển đổi trạng thái của dòng hiện hành: từ chế độ xem sang chế độ sửa
            gvMonHoc.EditIndex = e.NewEditIndex;
            // Liên kết lại dữ liệu gvMonHoc
            gvMonHoc.DataSource = DAO.getAll(); 
            gvMonHoc.DataBind();
        }
    }
}