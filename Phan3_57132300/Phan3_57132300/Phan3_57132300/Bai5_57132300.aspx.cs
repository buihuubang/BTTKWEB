using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Phan3_57132300
{
    public partial class Bai5_57132300 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHienThi_Click(object sender, EventArgs e)
        {
            int n =int.Parse(txtNhap.Text);
            for (int i = 1; i <= n; i++)
            {
                if (KTNguyenTo(i))
                {
                    txtXuat.Text += "~> " + i;
                }
                i++;
            }
        }

        private Boolean KTNguyenTo(int n)
        {
            if (n <= 2) 
            {
                return true;
            }
            else if (n > 2)
            {
                if (n % 2 == 0)  
                {
                    return false;
                }
                for (int i = 3; i < Math.Sqrt((float)n); i += 2)  
                {
                    if (n % i == 0)  
                    {
                        return false;
                    }
                }
            }
            return true; 
        }

        protected void btnLamLai_Click(object sender, EventArgs e)
        {
            txtNhap.Text = ("");
            txtXuat.Text = ("");
        }
    }


}