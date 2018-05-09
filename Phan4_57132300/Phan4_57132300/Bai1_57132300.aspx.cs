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
    public partial class Bai1_57132300 : System.Web.UI.Page
    {
        String conn = @"Data Source = DESKTOP-4729RC4\SQLEXPRESS; Initial Catalog = Bai1_57132300;user = sa;pwd = sa";
        DataTable DSDienThoai()
        {
            SqlDataAdapter adap = new SqlDataAdapter("DienThoai_DS", conn);
            DataTable ds = new DataTable();
            adap.Fill(ds);
            return ds;
        }

        void XoaDT(String MaDT)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("DienThoai_Xoa", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaDT", SqlDbType.Char).Value = MaDT;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        void ThemDT(String MaDT, String TenDT, int DonGia, String PhuKien,String Loai)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("DienThoai_Them", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaDT", SqlDbType.Char).Value = MaDT;
            cmd.Parameters.Add("@TenDT", SqlDbType.Char).Value = TenDT;
            cmd.Parameters.Add("@DonGia", SqlDbType.Int).Value = DonGia;
            cmd.Parameters.Add("@PhuKien", SqlDbType.Char).Value = PhuKien;
            cmd.Parameters.Add("@Loai", SqlDbType.Char).Value = Loai;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        void SuaDT(String MaDT, String TenDT, int DonGia, String PhuKien, String Loai)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("DienThoai_Sua", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaDT", SqlDbType.Char).Value = MaDT;
            cmd.Parameters.Add("@TenDT", SqlDbType.Char).Value = TenDT;
            cmd.Parameters.Add("@DonGia", SqlDbType.Int).Value = DonGia;
            cmd.Parameters.Add("@PhuKien", SqlDbType.Char).Value = PhuKien;
            cmd.Parameters.Add("@Loai", SqlDbType.Char).Value = Loai;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewTab.DataSource = DSDienThoai();
            GridViewTab.DataBind();
        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            XoaDT(txtMa.Text);
            GridViewTab.DataSource = DSDienThoai();
            GridViewTab.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                ThemDT(txtMa.Text, txtTen.Text, int.Parse(txtGia.Text),txtPK.Text, txtLoai.Text);
                GridViewTab.DataSource = DSDienThoai();
                GridViewTab.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Nhập vào thành công');", true);
            } catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Nhập vào lỗi!');", true);
            }
        }

        protected void btnFix_Click(object sender, EventArgs e)
        {
            try
            {
                SuaDT(txtMa.Text, txtTen.Text, int.Parse(txtGia.Text), txtPK.Text, txtLoai.Text);
                GridViewTab.DataSource = DSDienThoai();
                GridViewTab.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa thành công');", true);
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa lỗi!');", true);
            }
        }
    }
}