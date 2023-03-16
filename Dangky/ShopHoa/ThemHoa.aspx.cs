using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopHoa
{
    public partial class ThemHoa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTraCuu_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string insertQuery = "INSERT INTO Hoa (TenHoa, Gia, Hinh, MaLoai, NgayDang, SoLuotXem) VALUES (@TenHoa, @Gia, @Hinh, @MaLoai, @NgayDang, @SoLuotXem)";
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    command.Parameters.AddWithValue("@TenHoa", txttenhoa.Text);
                    command.Parameters.AddWithValue("@Gia", txtgia.Text);
                    command.Parameters.AddWithValue("@Hinh", fuhinh.FileName);
                    command.Parameters.AddWithValue("@MaLoai", drLoai.Text);
                    command.Parameters.AddWithValue("@NgayDang", txtngaydang.Text);
                    command.Parameters.AddWithValue("@SoLuotXem", 0);
                    command.ExecuteNonQuery();
                    if(command.ExecuteNonQuery() > 0)
                    {
                        lblthongtin.Text = "Bạn đã thêm thành công";
                        connection.Close();
                    }
                    else
                    {
                        lblthongtin.Text = "Thất bại rồi nha ";
                    }
                }               
                
            }


        }
    }
}