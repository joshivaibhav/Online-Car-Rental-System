using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
using System.Net;
using System.IO;
using System.Net.Mail;

namespace WebApplication1
{
    public partial class forgotpwd : System.Web.UI.Page
    {
        private void sendEmailViaWebApi(string to, string body)
        {
            string from = "gocartemp@gmail.com";

            using (MailMessage mm = new MailMessage(from, to))
            {
                mm.Subject = "Password Reset Request";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential(from, "carrental");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            pass.Visible = false;
            respass.Visible = false;
            
            
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            string str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection myconn = new SqlConnection(str);
            string sql = "Select User_Id from USER_MASTER where Email='" + txtusername.Text.ToString()+"'";
            myconn.Open();
            SqlCommand mycomm = new SqlCommand(sql, myconn);
            SqlDataReader rdr = mycomm.ExecuteReader();
            
            
            if (rdr.Read())
            {

                string id = rdr["User_Id"].ToString();
                string code = Guid.NewGuid().ToString();
                string mail = txtusername.Text;
                string body = " "+code;
                sendEmailViaWebApi(mail, body);
                Session["sent"] = "true";
                Session["uid"] = id;
                Session["vcode"] = code;
                loginwrap.Visible = false;
                pass.Visible = true;
                rdr.Close();
                myconn.Close();

            }
            else
            {
                int count = 0;   
                Response.Redirect("forgotpwd.aspx?m=Attempt " + ++count);
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == Session["vcode"].ToString())
            {
                pass.Visible = false;
                respass.Visible = true;
            }
            else
            {
                pass.Visible = true;
                respass.Visible = false;
                Response.Write("Enter correct code!");
            }
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            string str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection myconn = new SqlConnection(str);
            string sql = "Update USER_MASTER set Password='" + TextBox2.Text + "'" + "where User_Id='" + Session["uid"].ToString() + "'";
            myconn.Open();
            SqlCommand mycomm = new SqlCommand(sql, myconn);
            int i = mycomm.ExecuteNonQuery();
            if(i > 0)
            {
                Response.Write("PAssword Updated");
            }
            else
            {
                Response.Write("ERROR");
            }


        }

        
    }
}