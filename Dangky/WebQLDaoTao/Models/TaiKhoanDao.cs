using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace WebQLDaoTao.Models
{
    public class TaiKhoanDao
    {
        public TaiKhoan checkLogin(string username, string password)
        {
            TaiKhoan tk = null;
            // 1. Kết nối CSDL 
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from taikhoan where tendangnhap=@tendangnhap and matkhau = @matkhau",conn);

            cmd.Parameters.AddWithValue("@tendangnhap", username);
            cmd.Parameters.AddWithValue("@matkhau", password);


            SqlDataReader dr =  cmd.ExecuteReader();

            if(dr.Read())
            {

                tk = new TaiKhoan
                {
                    TenDangNhap = dr["tendangnhap"].ToString(),
                    MatKhau = dr["matkhau"].ToString(),
                    VaiTro = dr["vaitro"].ToString()

                };
            }
            return tk;
            
        }
    }
}