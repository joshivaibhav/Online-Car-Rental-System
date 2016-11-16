using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.Configuration;


namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select booking_details.booking_id, booking_details.model, booking_details.make, user_master.city from booking_details inner join booking_master on booking_details.booking_id=booking_master.booking_id inner join user_master on booking_master.user_id=user_master.user_id";
            con.Open();
            int counter=0;
            SqlDataReader rdr = cmd.ExecuteReader();
            booklistwrap.InnerHtml = "";
            if (!rdr.HasRows)
            {
                booklistwrap.InnerHtml += "<div class=\"row\" align=\"center\"> no booking detail to show</div>";
            }
            while (rdr.Read())
            {
                booklistwrap.InnerHtml += "<div class=\"row\" id=" + (++counter) + ">" +
                    "<div id=\"booking_id\" class=\"col s3 center\">" + rdr["booking_id"].ToString() + "</div>" +
                    "<div class=\"col s3 center\">" + rdr["model"].ToString() + "</div>" +
                    "<div class=\"col s3 center\">" + rdr["make"].ToString() + "</div>" +
                    "<div id=\"booking_city\" class=\"col s3 center\">" + rdr["city"].ToString() + "</div>" +
                    "</div>";
                


            }
            }

        protected void Button1_click(object sender, EventArgs e)
        {
            Session["booked"]= selected_booking_detail.Value;
            Session["city"] = selected_booking_city.Value;
            //booklistwrap.InnerHtml +="booked:"+ Session["booked"].ToString()+" city:" + Session["city"].ToString();
            Response.Redirect("booked_enter_car.aspx");

        }

        }

}