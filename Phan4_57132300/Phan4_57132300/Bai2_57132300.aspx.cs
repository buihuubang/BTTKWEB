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
    public partial class Bai2_57132300 : System.Web.UI.Page
    {
        String conn = @"Data Source = DESKTOP-4729RC4\SQLEXPRESS; Initial Catalog = Bai2_57132300; user = sa; pwd = sa";
        DataTable Sach_DS()
        {
            SqlDataAdapter adap = new SqlDataAdapter("Sach_DS", conn);
            DataTable ds = new DataTable();
            adap.Fill(ds);
            return ds;
        }

        void UpdateList()
        {
            SqlDataAdapter adap = new SqlDataAdapter("select * from LoaiSach", conn);
            DataTable list = new DataTable();
            adap.Fill(list);
            dropLoai.DataSource = list;
            dropLoai.DataTextField = "TenLoaiSach";
            dropLoai.DataValueField = "MaLoaiSach";
            dropLoai.DataBind();
        }
        void Xoa_Sach(String MaSach)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("Sach_Xoa", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaSach", SqlDbType.NChar).Value = MaSach;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        void Them_Sach(String MaSach,String TenSach,String AnhSach,String TacGia,String NhaXuatBan,String MaLoaiSach)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("Sach_Them", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaSach", SqlDbType.NChar).Value = MaSach;
            cmd.Parameters.Add("@TenSach", SqlDbType.NVarChar).Value = TenSach;
            cmd.Parameters.Add("@AnhSach", SqlDbType.VarChar).Value = AnhSach;
            cmd.Parameters.Add("@TacGia", SqlDbType.NVarChar).Value = TacGia;
            cmd.Parameters.Add("@NhaXuatBan", SqlDbType.NVarChar).Value = NhaXuatBan;
            cmd.Parameters.Add("@MaLoaiSach", SqlDbType.NChar).Value = MaLoaiSach;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        void Sua_Sach(String MaSach, String TenSach, String AnhSach, String TacGia, String NhaXuatBan, String MaLoaiSach)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("Sach_Sua", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaSach", SqlDbType.NChar).Value = MaSach;
            cmd.Parameters.Add("@TenSach", SqlDbType.NVarChar).Value = TenSach;
            cmd.Parameters.Add("@AnhSach", SqlDbType.VarChar).Value = AnhSach;
            cmd.Parameters.Add("@TacGia", SqlDbType.NVarChar).Value = TacGia;
            cmd.Parameters.Add("@NhaXuatBan", SqlDbType.NVarChar).Value = NhaXuatBan;
            cmd.Parameters.Add("@MaLoaiSach", SqlDbType.NChar).Value = MaLoaiSach;
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GridInfor.DataSource = Sach_DS();
            GridInfor.DataBind();
            UpdateList();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                String anh = upAnh.FileName;
                Them_Sach(txtMa.Text, txtTen.Text, anh, txtTacGia.Text, txtNXB.Text, dropLoai.SelectedValue);
                GridInfor.DataSource = Sach_DS();
                GridInfor.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Nhập vào thành công!');", true);
            } catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Nhập vào lỗi!');", true);
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                Xoa_Sach(txtMa.Text);
                GridInfor.DataSource = Sach_DS();
                GridInfor.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Xóa thành công!');", true);
            } catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Xóa lỗi!');", true);
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                String anh = upAnh.FileName;
                Sua_Sach(txtMa.Text, txtTen.Text, anh, txtTacGia.Text, txtNXB.Text, dropLoai.SelectedValue);
                GridInfor.DataSource = Sach_DS();
                GridInfor.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa thành công!');", true);
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa lỗi!');", true);
            }
        }

        protected void dropLoai_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}