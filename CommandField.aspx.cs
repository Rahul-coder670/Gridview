using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridView
{
    public partial class CommandField : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string s = "select * from gvc1";
            SqlConnection cn = new SqlConnection(con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(s, cn);
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Button1_Click(sender, e);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex= e.NewEditIndex;
            Button1_Click(sender, e);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = GridView1.Rows[e.RowIndex].Cells[0].Text;
            TextBox nm = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
            TextBox em = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
            TextBox ct = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
            string up = "update gvc1 set name='" + nm.Text + "',email='" + em.Text + "',city='" + ct.Text + "' where id=" + id;
            SqlConnection k = new SqlConnection(con);
            k.Open();
            SqlCommand cmd = new SqlCommand(up, k);
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            Button1_Click(sender, e);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.Rows[e.RowIndex].Cells[0].Text;
            string up = "delete from gvc1  where id=" + id;
            SqlConnection k = new SqlConnection(con);
            k.Open();
            SqlCommand cmd = new SqlCommand(up, k);
            cmd.ExecuteNonQuery();
            Button1_Click(sender, e);
        }
    }
}