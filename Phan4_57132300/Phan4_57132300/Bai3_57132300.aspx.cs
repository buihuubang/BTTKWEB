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
    public partial class Bai3_57132300 : System.Web.UI.Page
    {
        String connect = @"Data Source = DESKTOP-4729RC4\SQLEXPRESS; Initial Catalog = Bai3_57132300; user = sa; pwd = sa";
        DataTable DienThoai_DS()
        {
            SqlDataAdapter adap = new SqlDataAdapter("DienThoai_DS", connect);
            Da
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}