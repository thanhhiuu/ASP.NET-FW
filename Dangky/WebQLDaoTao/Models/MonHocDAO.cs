using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebQLDaoTao.Models;

namespace WebQLDaoTao.Models
{
    public class MonHocDAO
    {
        // Đọc danh sách các môn học trong CSDL
        public List<MonHoc> getAll()
        {
            List<MonHoc> dsMonHoc = new List<MonHoc>();
            // Kết nối CSDL
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            // 2 Tạo truy vấn 
            SqlCommand cmd = new SqlCommand("select * from monhoc", conn);
            SqlDataReader dr = cmd.ExecuteReader();

            while(dr.Read())
            {
                // Tạo đối tượng môn học
                MonHoc mh = new MonHoc
                {
                    MaMH = dr["MaMH"].ToString(),
                    TenMH = dr["TenMH"].ToString(),
                    SoTiet = int.Parse(dr["SoTiet"].ToString())
                };
                // Thêm vào dsMonHoc
                dsMonHoc.Add(mh);
            }
            return dsMonHoc;
        }
        public int Update(string mamh, string tenmh, int sotiet)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("update monhoc set tenmh=@tenmh, sotiet=@sotiet where mamh=@mamh", conn);

            cmd.Parameters.AddWithValue("@tenmh", tenmh);
            cmd.Parameters.AddWithValue("@sotiet", sotiet);
            cmd.Parameters.AddWithValue("@mamh", mamh);


            //3. thuc thi ket qua
            return cmd.ExecuteNonQuery();
        }
        public int Delete(string mamh)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("delete from monhoc where mamh=@mamh", conn);

            cmd.Parameters.AddWithValue("@mamh", mamh);

            return cmd.ExecuteNonQuery();
        }
        //--------phuong thuc them mon hoc vào CSDL-----------------
        public int Insert(string mamh, string tenmh, int sotiet)
        {
            //1.Mo ket noi CSDL
            SqlConnection conn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            //2.tao truy van
            SqlCommand cmd = new SqlCommand("insert into monhoc (mamh, tenmh,sotiet) values (@mamh,@tenmh,@sotiet)", conn);
            cmd.Parameters.AddWithValue("@mamh", mamh);
            cmd.Parameters.AddWithValue("@tenmh", tenmh);
            cmd.Parameters.AddWithValue("@sotiet", sotiet);
            //3.thuc thi ket qua;
            return cmd.ExecuteNonQuery();
        }
    }
}