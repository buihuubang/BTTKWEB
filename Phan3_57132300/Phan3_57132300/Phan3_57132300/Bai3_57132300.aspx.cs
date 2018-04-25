using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132300
{
    public partial class Bai3_57132300 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            double a = double.Parse(txtA.Text);
            double b = double.Parse(txtB.Text);
            double c = double.Parse(txtC.Text);
            if (a != 0)
            {
                if (b != 0)
                {
                    double delta = Math.Pow(b, 2) - 4 * a * c;
                    if (delta < 0)
                    {
                        txtKQ.Text = "PTVN";
                    }
                    else if (delta == 0)
                    {
                        txtKQ.Text = "PT có nghiệm kép: "+ (-b / (2 * a)).ToString();
                    }
                    else
                    {
                        txtKQ.Text = "PT có hai nghiệm phân biệt x=" + ((-b + Math.Sqrt(delta)) / (2 * a)).ToString() + " và x2="+((-b - Math.Sqrt(delta)) / (2 * a)).ToString();
                    }
                }
                else
                {
                    txtKQ.Text = "PTVN";
                }
            }
            else
            {
                if (b!= 0){
                    txtKQ.Text = "Kết quả: " + (-c/b).ToString();
                } else {
                    txtKQ.Text = "PTVN";
                }
            }
        }
    }
}