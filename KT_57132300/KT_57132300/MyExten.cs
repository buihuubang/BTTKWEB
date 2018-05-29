using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace KT_57132300
{
    public class MyExten
    {
        String connect = @"Data Source=DESKTOP-HGGVV02\SQLEXPRESS;Initial Catalog=KT_57132300;Integrated Security=True";
        public DataTable SanPham_DS()
        {
            SqlDataAdapter adap = new SqlDataAdapter("SanPham_DS", connect);
            DataTable ds = new DataTable();
            adap.Fill(ds);
            return ds;
        }

        public DataTable LoaiSP_DS()
        {
            SqlDataAdapter adap = new SqlDataAdapter("LoaiSP_DS", connect);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            return dt;
        }

        public void SanPham_Them(String MaSP,String TenSP,String DVT,int XuatXu,int DonGia,String Anh,String NgayNhap,String MoTaSP,String MaLoaiSP)
        {
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            SqlCommand cmd = new SqlCommand("SanPham_Them", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaSP", SqlDbType.NChar).Value = MaSP;
            cmd.Parameters.Add("@TenSP", SqlDbType.NVarChar).Value = TenSP;
            cmd.Parameters.Add("@DVT", SqlDbType.NChar).Value = DVT;
            cmd.Parameters.Add("@XuatXu", SqlDbType.Bit).Value = XuatXu;
            cmd.Parameters.Add("@DonGia", SqlDbType.Int).Value = DonGia;
            cmd.Parameters.Add("@Anh", SqlDbType.NChar).Value = Anh;
            cmd.Parameters.Add("@NgayNhap", SqlDbType.Date).Value = NgayNhap;
            cmd.Parameters.Add("@MoTaSP", SqlDbType.NVarChar).Value = MoTaSP;
            cmd.Parameters.Add("@MaLoaiSP", SqlDbType.NChar).Value = MaLoaiSP;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void SanPham_Sua(String MaSP, String TenSP, String DVT, int XuatXu, int DonGia, String Anh, String NgayNhap, String MoTaSP, String MaLoaiSP)
        {
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            SqlCommand cmd = new SqlCommand("SanPham_Sua", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaSP", SqlDbType.NChar).Value = MaSP;
            cmd.Parameters.Add("@TenSP", SqlDbType.NVarChar).Value = TenSP;
            cmd.Parameters.Add("@DVT", SqlDbType.NChar).Value = DVT;
            cmd.Parameters.Add("@XuatXu", SqlDbType.Bit).Value = XuatXu;
            cmd.Parameters.Add("@DonGia", SqlDbType.Int).Value = DonGia;
            cmd.Parameters.Add("@Anh", SqlDbType.NChar).Value = Anh;
            cmd.Parameters.Add("@NgayNhap", SqlDbType.Date).Value = NgayNhap;
            cmd.Parameters.Add("@MoTaSP", SqlDbType.NVarChar).Value = MoTaSP;
            cmd.Parameters.Add("@MaLoaiSP", SqlDbType.NChar).Value = MaLoaiSP;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void SanPham_Xoa(String MaSP) { 
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            SqlCommand cmd = new SqlCommand("SanPham_Xoa", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaSP", SqlDbType.NChar).Value = MaSP;
            con.Close();
        }
    }
}