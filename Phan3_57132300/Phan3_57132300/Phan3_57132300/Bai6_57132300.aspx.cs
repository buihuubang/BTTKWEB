using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132300
{
    public partial class Bai6_57132300 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            double TyLe = double.Parse(txtKT.Text)/100;
            double diemThi = double.Parse(txtDThi.Text);
            double diemKT = double.Parse(txtDKT.Text);
            double diemTK = diemKT * TyLe + diemThi * (1 - TyLe);
            txtTongKet.Text = diemTK.ToString();
            txtXL.Text = XepLoai(diemTK);
            LABEL.Text = ("Mã sinh viên:" + txtMaSV.Text + "<br/>" + "Họ tên:" + txtHoTen.Text + "<br/>" + "Môn Học:" + txtMonHoc.Text + "<br/>" + "Tổng kết" + diemTK.ToString()+ "<br/>" + "Học lực:" + txtXL.Text);
        }

        private string XepLoai(double diemTK){
            //diemTK = diemKT * TyLe + diemThi * (1-TyLe);
            string s;
            if (diemTK < 3.5) 
            {
                s = "Qúa yếu";
            }
            else if (diemTK < 5)
            {
                s = "Yếu";
            }
            else if (diemTK < 6)
            {
                s = "Trung Bình";
            }else if(diemTK<7){
                s = "Trung bình khá";
            }
            else if (diemTK < 8)
            {
                s = "Khá";
            }
            else if (diemTK < 9)
            {
                s = "Giỏi";
            }
            else
            {
                s = "Xuất sắc"; 
            }
            return s;
        }
    }
}