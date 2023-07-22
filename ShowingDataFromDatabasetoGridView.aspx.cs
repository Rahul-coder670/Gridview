using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridView
{
    public partial class ShowingDataFromDatabasetoGridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string con = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
            string s = "select * from gvc1 select * from gvc2";
            SqlConnection cn = new SqlConnection(con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(s, cn);
            da.Fill(ds);

            GridView1.DataSource= ds.Tables[0];
            GridView1.DataBind();
            GridView2.DataSource = ds.Tables[1];
            GridView2.DataBind();
        }
    }
}