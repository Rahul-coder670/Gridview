using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace GridView
{
   
    public partial class RepeaterControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string c = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
            string s = "select * from gvc1";
            SqlConnection cn = new SqlConnection(c);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(s, cn);
            da.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}