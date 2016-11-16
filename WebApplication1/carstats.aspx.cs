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
    public partial class carstats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select firstset.model,firstset.make,firstset.qty,secondset.available from(select model, make, count(model) as qty from car_master group by model, make ) as firstset left join(select model, make, count(model) as available from car_master where available = 'Y' group by model, make) as secondset on firstset.model = secondset.model and firstset.make = secondset.make order by firstset.model,firstset.make";
            con.Open();

            string previous="";
            Boolean start = true;
            SqlDataReader rdr = cmd.ExecuteReader();
            if (!rdr.HasRows)
            {
                loginwrap.InnerHtml += "<div class=\"row\" align=\"center\"> no booking detail to show</div>";
            }
            while (rdr.Read())
            {
                string available= rdr["available"].ToString();
                if (available=="")
                {
                    available = "0";
                }
                if(previous!=rdr["make"].ToString())
                {
                    if(start)
                    {
                        start = false;
                        
                     }
                    else
                    {
                        
                        loginwrap.InnerHtml += "</tbody></table></div>";
                        loginwrap.InnerHtml += "<hr class=\"style13\"/>";
                    }
                    loginwrap.InnerHtml += "<div class=\"row\">" +
         "  <table class=\"bordered centered striped\">" +
        "<thead>" +
          "<tr>" +
             " <th colspan = \"4\" data-field=\"id\"><span style = \"font-size:1.3em; font-family:Tahoma\"> "+rdr["make"]+" </span></th>" +
            "</tr>" + 
          "</thead>" +
          "<tbody>" +
           "<tr>" +
              "<td><span style=\"font-size:1.2em;\"><i><b>Car</b></i></span></td>" +
             "<td><span style = \"font-size:1.2em;\"><i><b> Model </b></i></span></td>" +
             "<td><span style=\"font-size:1.2em;\"><i><b>Quantity</b></i></span></td>" +
             "<td><span style = \"font-size:1.2em;\"><i><b> Available </i></span></td>" +
          "</tr>";

                }
                loginwrap.InnerHtml += "<tr><td> Alan </td><td> "+rdr["model"]+" </td><td>"+rdr["qty"]+"</td ><td> "+available+" </td></tr>";
             
                previous = rdr["make"].ToString();
            }
            

            }
    }
}