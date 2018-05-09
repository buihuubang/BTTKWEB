using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Phan4_57132300
{
    public partial class Bai3_57132300 : System.Web.UI.Page
    {
        String connect = @"Data Source = DESKTOP-4729RC4\SQLEXPRESS; Initial Catalog = Bai3_57132300; user = sa; pwd = sa";
        DataTable DienThoai_DS()
        {
            SqlDataAdapter adap = new SqlDataAdapter("DienThoai_DS", connect);
            DataTable ds = new DataTable();
            adap.Fill(ds);
            return ds;
        }

        void ListUpdate()
        {
            SqlDataAdapter adap = new SqlDataAdapter("select * from LoaiDT", connect);
            DataTable ds = new DataTable();
            adap.Fill(ds);
            dropLoai.DataSource = ds;
            dropLoai.DataTextField = "TenLoaiDT";
            dropLoai.DataValueField = "MaLoaiDT";
            dropLoai.DataBind();
        }

        void Xoa_DT(String MaDT)
        {
            SqlConnection conn = new SqlConnection(connect);
            conn.Open();
            SqlCommand cmd = new SqlCommand("DienThoai_Xoa",conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaDT", SqlDbType.NChar).Value = MaDT;
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        void Them_DT(String MaDT,String TenDT,String AnhDT,String PhuKien,int DonGia,String MaLoaiDT)
        {
            SqlConnection conn = new SqlConnection(connect);
            conn.Open();
            SqlCommand cmd = new SqlCommand("DienThoai_Them", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaDT", SqlDbType.NChar).Value = MaDT;
            cmd.Parameters.Add("@TenDT", SqlDbType.NChar).Value = TenDT;
            cmd.Parameters.Add("@AnhDT", SqlDbType.NChar).Value = AnhDT;
            cmd.Parameters.Add("@PhuKien", SqlDbType.NVarChar).Value = PhuKien;
            cmd.Parameters.Add("@DonGia", SqlDbType.BigInt).Value = DonGia;
            cmd.Parameters.Add("@MaLoaiDT", SqlDbType.NChar).Value = MaLoaiDT;
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        void Sua_DT(String MaDT, String TenDT, String AnhDT, String PhuKien, int DonGia, String MaLoaiDT)
        {
            SqlConnection conn = new SqlConnection(connect);
            conn.Open();
            SqlCommand cmd = new SqlCommand("DienThoai_Sua", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaDT", SqlDbType.NChar).Value = MaDT;
            cmd.Parameters.Add("@TenDT", SqlDbType.NChar).Value = TenDT;
            cmd.Parameters.Add("@AnhDT", SqlDbType.NChar).Value = AnhDT;
            cmd.Parameters.Add("@PhuKien", SqlDbType.NVarChar).Value = PhuKien;
            cmd.Parameters.Add("@DonGia", SqlDbType.BigInt).Value = DonGia;
            cmd.Parameters.Add("@MaLoaiDT", SqlDbType.NChar).Value = MaLoaiDT;
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridTable.DataSource = DienThoai_DS();
            GridTable.DataBind();
            ListUpdate();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                Xoa_DT(txtMa.Text);
                GridTable.DataSource = DienThoai_DS();
                GridTable.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa thành công!');", true);
            } catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa lỗi!');", true);
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                Them_DT(txtMa.Text, txtTen.Text, txtUpload.FileName, txtPK.Text, int.Parse(txtGia.Text), dropLoai.SelectedValue);
                GridTable.DataSource = DienThoai_DS();
                GridTable.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Thêm thành công!');", true);
            } catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Thêm thất bại!');", true);
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                Sua_DT(txtMa.Text, txtTen.Text, txtUpload.FileName, txtPK.Text, int.Parse(txtGia.Text), dropLoai.SelectedValue);
                GridTable.DataSource = DienThoai_DS();
                GridTable.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa thành công!');", true);
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa thất bại!');", true);
            }
        }
    }
}