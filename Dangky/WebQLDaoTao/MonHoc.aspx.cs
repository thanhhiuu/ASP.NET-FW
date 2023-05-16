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
            if (!Page.IsPostBack)
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

        protected void gvMonHoc_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Chuyển đổi trạng thái của dòng hiện hành : Từ chế độ (edit) sang chế độ xem
            gvMonHoc.EditIndex = -1;
            //lien ket lai du lieu cho gvMonHoc
            gvMonHoc.DataSource = DAO.getAll();
            gvMonHoc.DataBind();
        }

        protected void gvMonHoc_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Lấy thông tin môn học
            string mamh = gvMonHoc.DataKeys[e.RowIndex].Value.ToString();
            string tenmh = ((TextBox)gvMonHoc.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            int sotiet = int.Parse(((TextBox)gvMonHoc.Rows[e.RowIndex].Cells[2].Controls[0]).Text);
            //b2. cap nhat vao CSDL
            DAO.Update(mamh, tenmh, sotiet);
            //b3. chuyen doi trang thai cua dong hien hanh : từ chế độ sửa(edit) sang chế độ xem
            gvMonHoc.EditIndex = -1;
            //b4. lien ket lai du lieu cho gvMonHoc
            gvMonHoc.DataSource = DAO.getAll();
            gvMonHoc.DataBind();
        }

        protected void gvMonHoc_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                //b1. lấy thông tin mã môn học hiện hành
                string mamh = gvMonHoc.DataKeys[e.RowIndex].Value.ToString();
                //b2. goi phương thức xóa môn học khỏi CSDL của lớp MonHocDAO

                //b4. lien ket lai du lieu cho gvMonHoc
                gvMonHoc.DataSource = DAO.getAll();
                gvMonHoc.DataBind();

                DAO.Delete(mamh);
            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('Không thể xóa môn học này')</script>");
            }
        }
    }
}