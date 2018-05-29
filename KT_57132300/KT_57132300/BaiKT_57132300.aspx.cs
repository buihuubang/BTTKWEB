using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KT_57132300
{
    public partial class BaiKT_57132300 : System.Web.UI.Page
    {
        MyExten tool = new MyExten();

        void HienThiDSSP()
        {
            TbleSP.DataSource = tool.SanPham_DS();
            TbleSP.DataBind();
            TbleSP.HeaderRow.Cells[1].Text = "Mã sản phẩm";
            TbleSP.HeaderRow.Cells[2].Text = "Tên sản phẩm";
            TbleSP.HeaderRow.Cells[3].Text = "ĐVT";
            TbleSP.HeaderRow.Cells[4].Text = "Xuất xứ";
            TbleSP.HeaderRow.Cells[5].Text = "Đơn giá";
            TbleSP.HeaderRow.Cells[6].Text = "Ảnh MH";
            TbleSP.HeaderRow.Cells[7].Text = "Ngày nhập";
            TbleSP.HeaderRow.Cells[8].Text = "Mô tả sản phẩm";
            TbleSP.HeaderRow.Cells[9].Text = "Mã loại sản phẩm";
        }

        void HienThiLSP()
        {
            ListSP.DataSource = tool.LoaiSP_DS();
            ListSP.DataTextField = "TenLoaiSP";
            ListSP.DataValueField = "MaLoaiSP";
            ListSP.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                HienThiLSP();
            }
            HienThiDSSP();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                int xuatXu = 1;
                if (rdTrongNuoc.Checked)
                {
                    xuatXu = 1;
                } else
                {
                    xuatXu = 0;
                }
                tool.SanPham_Them(txtMaSP.Text, txtTenSP.Text, txtDVT.Text,xuatXu,int.Parse(txtDonGia.Text),FileAnh.FileName,txtNgayNhap.Text,txtMoTa.Text,ListSP.SelectedValue);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Thêm thành công!');", true);
            } catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Thêm thất bại!');", true);
            }
            HienThiDSSP();
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                int xuatXu =1;
                if (rdTrongNuoc.Checked)
                {
                    xuatXu = 1;
                }
                else
                {
                    xuatXu = 0;
                }
                tool.SanPham_Sua(txtMaSP.Text, txtTenSP.Text, txtDVT.Text,xuatXu, int.Parse(txtDonGia.Text), FileAnh.FileName, txtNgayNhap.Text, txtMoTa.Text, ListSP.SelectedValue);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa thành công!');", true);
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa thất bại!');", true);
            }
            HienThiDSSP();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                tool.SanPham_Xoa(txtMaSP.Text);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Xoá thành công!');", true);
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Xoá thất bại!');", true);
            }
            HienThiDSSP();
        }
    }
}