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
using System.IO;
using System.Web.SessionState;

namespace WebApplication1
{
    public partial class newcar : System.Web.UI.Page
    {
        public string msg = "";
        public string f;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["msg"] != null)
            {
                msg = Request.QueryString["msg"].ToString();
            }
            
        }

        protected void regbtn_Click(object sender, EventArgs e)
        {

            string connstring = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection myconn = new SqlConnection(connstring);

            string insertSQL = "insert into CAR_MASTER (Reg_no,Make,Model,Type,City,Rate_per_km,Rate_per_hr,Rate_per_day,Image_url)"
                + "values(@Reg_no,@Make,@Model,@type,@City,@Rate_per_km,@Rate_per_hr,@Rate_per_day,@Image_url)";
            
            SqlCommand mycomm = new SqlCommand(insertSQL, myconn);
            mycomm.Parameters.AddWithValue("@Reg_no", regno.Text);
            mycomm.Parameters.AddWithValue("@Make", make.Text);
            mycomm.Parameters.AddWithValue("@Model", mdl.Text);
            mycomm.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.ToString());
            mycomm.Parameters.AddWithValue("@City", city.Text);
            mycomm.Parameters.AddWithValue("@Rate_per_km", rkm.Text);
            mycomm.Parameters.AddWithValue("@Rate_per_hr", rhr.Text);
            mycomm.Parameters.AddWithValue("@Rate_per_day", rday.Text);
            myconn.Open();
            string filename = FileUploadControl.FileName.ToString();//Path.GetFileName(FileUploadControl.FileName);
                    int l = FileUploadControl.PostedFile.ContentLength;
                    byte[] pic = new byte[l];
                    FileUploadControl.PostedFile.InputStream.Read(pic,0,l);
                    byte[] b = (byte[])pic;
                    string x = Convert.ToBase64String(b,0,b.Length);
                    f = "data:image/png;base64,"+x;
                    mycomm.Parameters.AddWithValue("@Image_url",f);
                    Session["image"]= f.ToString();
                    
             
            int added = mycomm.ExecuteNonQuery();
            if (added > 0)
            {
                Response.Redirect("newcar.aspx?msg=Update Successful");
                //Response.Write("HELLO");
                myconn.Close();
            }
            else
            {
                Response.Redirect("newcar.aspx?msg=Error In update");
            }
        
      }
 }
   
}