using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;
using System.Drawing;
using System.Configuration;
namespace GridView
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
        DataTable dt =new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!Page.IsPostBack)
            {
                if (ViewState["Records"]==null) 
                {
                    dt.Columns.Add("Name");
                    dt.Columns.Add("Email");
                    dt.Columns.Add("City");
                    ViewState["Records"] = dt;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = (DataTable)ViewState["Records"];
            dt.Rows.Add(TextBox1.Text,TextBox2.Text, TextBox3.Text);
            GridView1.DataSource= dt;   
            GridView1.DataBind();
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string nm = GridView1.Rows[i].Cells[0].Text;
                string em = GridView1.Rows[i].Cells[1].Text;
                string ct = GridView1.Rows[i].Cells[2].Text;
                string q = "insert into gvc3 values('" + nm + "','" + em + "','" + ct + "')";
                SqlConnection cn = new SqlConnection(con);
                cn.Open();
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                TextBox1.Text=string.Empty; 
                TextBox2.Text=string.Empty;
                TextBox3.Text=string.Empty;


            }

            Response.Write("Successfule Saved......");
            GridView1.Visible= false;
        }

       // protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
       // {
       //     GridView1.EditIndex= e.NewEditIndex;
        //    Button1_Click(sender,e);

       // }

       // protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
          //  GridView1.EditIndex = -1;
            //     Button1_Click(sender, e);
       // }
    }
}