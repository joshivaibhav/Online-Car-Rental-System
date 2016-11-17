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
        public int count = 0;
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["msg"] != null)
            {
                msg = Request.QueryString["msg"].ToString();
            }
        }



        protected void b1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.Open();
            if (txtpassword.Text == "" || txtusername.Text == "")
            {
                Response.Redirect("login.aspx?msg=Both Fields are Necessary!&m=Attempt" + ++count);
            }
            SqlCommand cmd = new SqlCommand("Select First_name,user_id from user_master where Email='" + txtusername.Text + "' and Password ='" + txtpassword.Text + "'", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {

                Session["user"] = rdr["user_id"].ToString();
                Session["username"] = rdr["First_name"].ToString();
                Session["user_role"] = "1";
                Response.Redirect("Index.aspx?role=" + Session["user_role"].ToString());
            }
            else
            {


                txtusername.Text = "";
                txtpassword.Text = "";
                Response.Redirect("login.aspx?msg=Incorrect Credentials&m=Attempt" + ++count);

            }

        }
    }
}