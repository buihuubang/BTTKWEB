using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132300
{
    public partial class Bai4_57132300 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndoWhile_Click(object sender, EventArgs e)
        {
            int n = int.Parse(txtNhap.Text);
            lbelN.Text = n.ToString();
            int i = 0;
            int kq = 0;
            do
            {
                kq += i;
                i++;
            } while (i <= n);
            txtKQ.Text = kq.ToString();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtNhap.Text = "";
            txtKQ.Text = "";
            lbelN.Text = "n";
        }
    }
}