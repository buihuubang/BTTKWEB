using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

//BÀI 1_57132300

namespace Phan4_57132300
{
    public partial class _57132300 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-4729RC4\SQLEXPRESS;Initial Catalog=Bai1_57132300;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("exec DienThoai_Them '"+ txtMa.Text +"','"+ txtTen.Text +"',"+ int.Parse(txtGia.Text) +",N'"+txtPhuKien.Text+"','"+txtLoai.Text+"'",con);
            //SqlCommand cmd = new SqlCommand("insert into DienThoai(MaDT,TenDT,DonGia,PhuKien,Loai) values ('"+txtMa.Text+"','"+ txtTen.Text + "',"+ int.Parse(txtGia.Text)+",N'"+txtPhuKien.Text+",'"+txtLoai.Text+"')");
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-4729RC4\SQLEXPRESS;Initial Catalog=Bai1_57132300;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("exec DienThoai_Sua '" + txtMa.Text + "','" + txtTen.Text + "'," + int.Parse(txtGia.Text) + ",N'" + txtPhuKien.Text + "','" + txtLoai.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-4729RC4\SQLEXPRESS;Initial Catalog=Bai1_57132300;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("exec DienThoai_Xoa '" + txtMa.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}