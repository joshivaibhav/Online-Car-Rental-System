using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void login_clicked(object sender, EventArgs e)
        {
            lb1.Text = txtusername.Text + txtpassword.Text;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from user_master where user_id='" + txtusername.Text + "' and password ='" + txtpassword.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                lb2.Text = "Login";
                Session["user"] = txtusername.Text;
                Response.Redirect("Index.aspx");
            }
            else
            {
                lb2.Text = "wrong";  
            }



        }
    }

    
}