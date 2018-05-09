using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132300
{
    public partial class Bai8_57132300 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int n;
            n = int.Parse(args.Value);
            if((n % 2) == 0)
            {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            String HoTen = txtHoTen.Text;
            String MK = txtMK.Text;
            String ThuThap = txtThuThap.Text;
            String Email = txtEmail.Text;
            if (!IsValid)
            {
                return;
            }
            else
            {
                lblThongTin.Text = "Họ Tên:" + HoTen + "<br/>Thu thập:"+ThuThap+ "<br/>Email:"+Email+ "<br/>Số chẵn:"+txtSoChan.Text;
            }
        }
    }
}