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
namespace WebApplication1
{
    public partial class newlogin : System.Web.UI.Page
    {
        public string msg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["msg"] != null)
            {
                msg = Request.QueryString["msg"].ToString();
            }
        }

        protected void button1_click(object sender, EventArgs e)
        {
               string connstring = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
               SqlConnection myconn = new SqlConnection(connstring);
            
            string insertSQL = "insert into USER_MASTER (First_name,Last_name,Email,Sex,DOB,Address,City,State,Contact_no,Password,User_role)"
                +"Values(@First_name,@Last_name,@Email,@Sex,@DOB,@Address,@City,@State,@Contact_no,@Password,@User_role)";
            //ca.SQCommand(insertSQL);
            SqlCommand mycomm = new SqlCommand(insertSQL,myconn);
            mycomm.Parameters.AddWithValue("@First_name",f_name.Text);
            mycomm.Parameters.AddWithValue("@Last_name", l_name.Text);
            mycomm.Parameters.AddWithValue("@Email",uname.Text);
            mycomm.Parameters.AddWithValue("@Sex",RadioButtonList1.SelectedItem.ToString());
            mycomm.Parameters.AddWithValue("@DOB", dob.Text);
            mycomm.Parameters.AddWithValue("@Address", textarea1.Value);
            mycomm.Parameters.AddWithValue("@City", city.Text);
            mycomm.Parameters.AddWithValue("@State", ddl1.SelectedItem.ToString());
            mycomm.Parameters.AddWithValue("@Contact_no", cno.Text);
            //mycomm.Parameters.AddWithValue("@Reg_date", DateTime.Now);
            mycomm.Parameters.AddWithValue("@Password", pwd.Text);
            
                mycomm.Parameters.AddWithValue("@User_role", "1");
        
            myconn.Open();
            int added = mycomm.ExecuteNonQuery();
            if (added > 0)
            {
                Response.Redirect("login.aspx?msg=Registered Successfully");
                //Response.Write("HELLO");
                myconn.Close();
            }
            else
            {
                Response.Redirect("newlogin.aspx?msg=Error in updating");
            }

        }
    }
}