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
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

namespace WebApplication1
{
    
    public partial class Book : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd,cmd2,cmd4;


        //cmd4 -> for fetching Costing data.

      /*  protected void button1_click(object sender, EventArgs e)
        {
            var document = new Document(PageSize.A4, 50, 50, 25, 25);
            var output = new FileStream(Server.MapPath("MyFirstPDF.pdf"), FileMode.Create);
            var writer = PdfWriter.GetInstance(document, output);
            string contents = File.ReadAllText(Server.MapPath("~/pdflayout.html"));
            document.Open();
            var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(contents), null);
            foreach (var htmlElement in parsedHtmlElements)
                document.Add(htmlElement as IElement);
            Response.ContentType = "application/pdf";
            Response.Redirect("/MyFirstPDF.pdf");
        }
        */
        protected void Page_Load(object sender, EventArgs e)
        {
           
            con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            cmd = new SqlCommand();
            cmd.Connection = con;
            
            cmd.CommandText = "insert into booking_master (user_id,type,date,time,start_location,end_location) OUTPUT INSERTED.BOOKING_ID values(@user_id,@type,@date,@time,@start_location,@end_location)";
            cmd.Parameters.AddWithValue("@user_id", Session["user"]);
            cmd.Parameters.AddWithValue("@date",date.Text);
            cmd.Parameters.AddWithValue("@time",time.Text);
            cmd.Parameters.AddWithValue("@start_location", txtlocation1.Text);

            cmd2 = new SqlCommand();
            cmd2.Connection = con;
            cmd2.CommandText = "insert into booking_details (booking_id,model,make) values (@booking_id,@model,@make)";
            
            cmd2.Parameters.AddWithValue("@model",car_model.Value);
            cmd2.Parameters.AddWithValue("@make",car_make.Value);



            cmd4 = new SqlCommand();
            cmd4.Connection = con;
            cmd4.CommandText = "update booking_master set cost=@cost where booking_id=@booking_id;";

        }
        protected void button1_click(object sender, EventArgs e)
        {
            SqlCommand cmd3 = new SqlCommand();
            
            cmd3.Connection = con;
            cmd3.CommandText = "select Rate_per_km,rate_per_day,rate_per_hr from car_master where model=@model and make=@make";
            cmd3.Parameters.AddWithValue("@model", car_model.Value);
            cmd3.Parameters.AddWithValue("@make", car_make.Value);
            //System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('"+ rent_type.Value + "');", true);
            if (rent_type.Value == "place1")
            {
                cmd.Parameters.AddWithValue("@type", "true");
                cmd.Parameters.AddWithValue("@end_location", txtlocation2.Text);
            }
            else
            {
                cmd.Parameters.AddWithValue("@type", "false");
                cmd.Parameters.AddWithValue("@end_location", DD.Text + "-" + HH.Text);
            }

            

            con.Open();

            var booking_id = cmd.ExecuteScalar();
            cmd2.Parameters.AddWithValue("@booking_id",booking_id);
            cmd2.ExecuteNonQuery();
            SqlDataReader rdr = cmd3.ExecuteReader();
            if(rdr.Read())
            {
                int car_cost;
                double total_cost;
                if (rent_type.Value == "place1")
                {
                    car_cost = Convert.ToInt32(rdr["rate_per_km"].ToString());
                    float distance_x = ((float)Convert.ToDouble(location1_x.Text) - (float)Convert.ToDouble(location2_x.Text));
                    float distance_y = ((float)Convert.ToDouble(location1_y.Text) - (float)Convert.ToDouble(location2_y.Text));
                    double distance_x_km = distance_x * (110.574);
                    double distance_y_km = distance_y * (111.320) * Math.Cos(distance_y * (Math.PI / 180.0));

                    double distance = Math.Sqrt((distance_x_km*distance_x_km)+(distance_y_km*distance_y_km));
                                        
                    total_cost = car_cost * distance;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert("+ distance.ToString() + ")", true);
                }
                else
                {
                    total_cost = 0;
                }
                cmd4.Parameters.AddWithValue("@cost",total_cost);
                cmd4.Parameters.AddWithValue("@booking_id", booking_id);
                
            }
            rdr.Close();
            cmd4.ExecuteNonQuery();
            con.Close();

          Response.Redirect("Index.aspx");
            Response.End();
        }

        }
    }