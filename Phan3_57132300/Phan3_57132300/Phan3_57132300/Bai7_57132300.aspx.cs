using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132300
{
    public partial class Bai7_57132300 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            String MSSV = txtMSSV.Text;
            String HoTen = txtHoTen.Text;
            String NgaySinh = txtNgaySinh.Text;
            String GioiTinh;
            String NganhHoc;
            String SoThich=null;
            if (rdNam.Checked)
            {
                GioiTinh = "Nam";
            } else
            {
                GioiTinh = "Nữ";
            }
            NganhHoc = DropList.SelectedValue;
            if (CheckDL.Checked)
            {
                SoThich += "Du Lịch,";
            }
            if (CheckAN.Checked)
            {
                SoThich += "Âm Nhạc,";
            }
            if (CheckTT.Checked)
            {
                SoThich += "Thể Thao";
            }
            if (CheckAno.Checked)
            {
                SoThich += "Lĩnh vực khác";
            }
            lblKQ.Text = "KẾT QUẢ:<br/> Mã số sinh viên:"+ MSSV +"<br/>Họ Tên:"+HoTen+"<br/>Ngày Sinh:" + NgaySinh +"<br/>Ngành học:" + NganhHoc +"<br/>Giới tính:" + GioiTinh +"<br/>Sở thích:" +SoThich;
        }
    }
}