using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace WebQLDaoTao.Models
{
    public class KhoaDao
    {
        public List<KHOA> getAll()
        {
            List<KHOA> dsKhoa = new List<KHOA>();

            // Kết nối CSDL
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            // Tao truy vấn 
            SqlCommand cmd = new SqlCommand("SELECT * FROM Khoa,", conn);
            // Thực thi kết quả
            SqlDataReader dr = cmd.ExecuteReader();

            // Xử lý kết quả trả về
            while (dr.Read())
            {
                // Tao doi tuong Khoa
                KHOA kh = new KHOA()
                {
                    MaKH = dr["MaKH"].ToString(),
                    TenKH = dr["TenKH"].ToString()
                };
                // Theem vao danh sach Khoa
                dsKhoa.Add(kh);
            }
            return dsKhoa;
        }
        // Methods Update Khoa
        public int Update(string makh, string tenkh)
        {
            // 1. Ket noi CSDL
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            // 2. Tao truy van
            SqlCommand cmd = new SqlCommand("update khoa set tenkh = @tenkh where makh = @makh", conn);
            cmd.Parameters.AddWithValue("@tenkh", tenkh);
            cmd.Parameters.AddWithValue("@makh", makh);
            // 3. Thực thi kết quả
            return cmd.ExecuteNonQuery();
        }
       public int Delete(string makh)
        {
            // Methods Delete khoa
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            //2. Tao truy vấn
            SqlCommand cmd = new SqlCommand("Delete from khoa where makh = @makh", conn);
            cmd.Parameters.AddWithValue("makh", makh);
            //3. Thuc thi ket qua
            return cmd.ExecuteNonQuery();
        }
        public int Insert(string makh, string tenkh)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            // 2. Tạo câu truy vấn
            SqlCommand cmd = new SqlCommand("insert into khoa(makh, tenkh) values (@makh, @tenkh)", conn);
            cmd.Parameters.AddWithValue("@makh", makh);
            cmd.Parameters.AddWithValue("@tenkh", tenkh);
            // Thực thi kết quả
            return cmd.ExecuteNonQuery();
        }
        // Tìm theo Mã Khoa
        public KHOA findByld(string makh)
        {
            KHOA kq = null;
            // 1. Access CSDL
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            // 2. Tao truy vấn 
            SqlCommand cmd = new SqlCommand("select * from khoa where makh = @makh", conn);
            cmd.Parameters.AddWithValue("@makh", makh);

            // 3. thực thi kết quả
            SqlDataReader dr = cmd.ExecuteReader();

            // 4. Xử lý kết quả trả về 
            if(dr.Read())
            {
                // Creater Object Monhoc
                kq = new KHOA
                {
                    MaKH = dr["MaKH"].ToString(),
                    TenKH = dr["TenKH"].ToString()
                };
            }
            return kq;
        }
        
    }
}