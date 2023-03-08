using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Data;
using System.Data.SqlClient;

namespace MyStore.Pages.Clients
{
    public class IndexModel : PageModel
    {
        // Khai bao 1 danh sach de co the doc du lieu
        public List<CliensInfo> ds = new List<CliensInfo>();
        public void OnGet()
        {
            // Thêm 1 khối try và catch
            try
            {
                //Chuỗi kết nối dataset
                String connettionString = "Data Source=HIUIT;Initial Catalog=HoaTuoiDB;Integrated Security=True";
                //Tạo kết nối Sql
                using (SqlConnection connection = new SqlConnection(connettionString))
                {
                    connection.Open();
                    //Truy vấn sql cho phép đọc dữ liệu từ dataset
                    string sql = "SELECT * FROM HOA";
                    // Câu lệnh cho phép thực hiện lệnh truy vấn sql
                    using(SqlCommand command = new SqlCommand(sql,connection))
                    {
                        using(SqlDataReader reader = command.ExecuteReader())
                        {
                            // Sử dụng vòng lặp while để đọc dữ liệu từ bản
                            while(reader.Read())
                            {
                                // Lưu trữ data này vào 1 đối tượng thông tin khách hàng
                                CliensInfo clienst = new CliensInfo();
                                clienst.maHoa = "" + reader.GetInt32(0);
                                clienst.tenHoa = reader.GetString(1);
                                clienst.gia =  reader.GetDouble(2).ToString();
                                clienst.hinh = reader.GetString(3).ToString();
                                clienst.maLoai = "" + reader.GetInt32(4);
                                clienst.ngayDang =  reader.GetDateTime(5).ToString();
                                clienst.soLuotXem = "" + reader.GetInt32(6);

                                ds.Add(clienst);

                            }
                        }
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
    public class CliensInfo
    {
        // Tao 1 lop moi co cac bien luu tru co so du lieu (Cho phep chung ta chua du lieu)
        public string maHoa;
        public string tenHoa;
        public string gia;
        public string hinh;
        public string maLoai;
        public string ngayDang;
        public string soLuotXem;
    }
}
