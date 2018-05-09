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
    public partial class Bai4_57132300 : System.Web.UI.Page
    {
        String connect = @"Data Source = DESKTOP-4729RC4\SQLEXPRESS; Initial Catalog = Bai4_57132300; user = sa; pwd = sa";

        DataTable TinTuc_DS()
        {
            SqlDataAdapter adap = new SqlDataAdapter("TinTuc_DS", connect);
            DataTable dstt = new DataTable();
            adap.Fill(dstt);
            return dstt;
        }

        void ListDrop()
        {
            SqlDataAdapter adapter = new SqlDataAdapter("LoatTT_DS", connect);
            DataTable list = new DataTable();
            adapter.Fill(list);
            DropTT.DataSource = list;
            DropTT.DataTextField = "TenLoaiTT";
            DropTT.DataValueField = "MaLoaiTT";
            DropTT.DataBind();
        }

        void TinTuc_Xoa(String MaTT)
        {
            SqlConnection conn = new SqlConnection(connect);
            conn.Open();
            SqlCommand cmd = new SqlCommand("TinTuc_Xoa",conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaTT", SqlDbType.NChar).Value = MaTT;
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        void TinTuc_Them(String MaTT,String TieuDe,String NgayDang,String Anh,String MaLoaiTT)
        {
            SqlConnection conn = new SqlConnection(connect);
            conn.Open();
            SqlCommand cmd = new SqlCommand("TinTuc_Them", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaTT", SqlDbType.NChar).Value = MaTT;
            cmd.Parameters.Add("@TieuDe", SqlDbType.NVarChar).Value = TieuDe;
            cmd.Parameters.Add("@NgayDang", SqlDbType.NChar).Value = NgayDang;
            cmd.Parameters.Add("@Anh", SqlDbType.NChar).Value = Anh;
            cmd.Parameters.Add("@MaLoaiTT", SqlDbType.NChar).Value = MaLoaiTT;
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        void TinTuc_Sua(String MaTT, String TieuDe, String NgayDang, String Anh, String MaLoaiTT)
        {
            SqlConnection conn = new SqlConnection(connect);
            conn.Open();
            SqlCommand cmd = new SqlCommand("TinTuc_Sua", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaTT", SqlDbType.NChar).Value = MaTT;
            cmd.Parameters.Add("@TieuDe", SqlDbType.NVarChar).Value = TieuDe;
            cmd.Parameters.Add("@NgayDang", SqlDbType.NChar).Value = NgayDang;
            cmd.Parameters.Add("@Anh", SqlDbType.NChar).Value = Anh;
            cmd.Parameters.Add("@MaLoaiTT", SqlDbType.NChar).Value = MaLoaiTT;
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridTable.DataSource = TinTuc_DS();
            GridTable.DataBind();
            ListDrop();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                TinTuc_Xoa(txtMaTin.Text);
                GridTable.DataSource = TinTuc_DS();
                GridTable.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Xóa thành công!');", true);
            } catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Thêm thất bại!');", true);
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                TinTuc_Them(txtMaTin.Text, txtTieuDe.Text, txtNgayDang.Text, AnhUp.FileName, DropTT.SelectedValue);
                GridTable.DataSource = TinTuc_DS();
                GridTable.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Thêm thành công!');", true);
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Thêm thất bại!');", true);
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                TinTuc_Sua(txtMaTin.Text, txtTieuDe.Text, txtNgayDang.Text, AnhUp.FileName, DropTT.SelectedValue);
                GridTable.DataSource = TinTuc_DS();
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