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
    public partial class booked_enter_car : System.Web.UI.Page
    {
        SqlConnection con;
        int str_booked;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select reg_no from car_master where city=@city and make=(select make from booking_details where booking_id=@booking_id) and model=(select model from booking_details where booking_id=@booking_id) and available='Y'";
            string str_city=Session["city"].ToString();
            cmd.Parameters.AddWithValue("@city",str_city);
            string str_booked2 = Session["booked"].ToString();
            str_booked = Convert.ToInt32(str_booked2);
            cmd.Parameters.AddWithValue("@booking_id", str_booked);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            CarList2.Items.Clear();
            if (!rdr.HasRows)
            {
                CarList2.Items.Add("No cars available");
            }
            else
            {
                CarList2.Items.Add("select car by registration number");
            }
            while (rdr.Read())
            {
                CarList2.Items.Add(rdr["reg_no"].ToString());
            }
            rdr.Close();

            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con;
            cmd2.CommandText = "select driver_id from driver_master where city=@city and available='Y'";
            cmd2.Parameters.AddWithValue("@city",Session["city"]);
                
            
            SqlDataReader rdr2 = cmd2.ExecuteReader();
            DriverList1.Items.Clear();
            if (!rdr2.HasRows)
            {
                DriverList1.Items.Add("No Driver available");
            }
            else
            {
                DriverList1.Items.Add("Select Driver");
            }
            while (rdr2.Read())
            {
                DriverList1.Items.Add(rdr2["reg_no"].ToString());
            }

        }

        protected void button1_click(object sender, EventArgs e)
        {
            if (DriverList1.SelectedIndex == 0 || DriverList1.SelectedIndex == -1)
            {
                
            }
            else
            {
                SqlCommand cmd2 = new SqlCommand();

                cmd2.Connection = con;
                cmd2.CommandText = "update booking_master set driver_id=@driver_id,reg_no=@reg_no where booking_id=@booking_id";
                cmd2.Parameters.AddWithValue("@driver_id",DriverList1.SelectedValue.ToString());
                cmd2.Parameters.AddWithValue("@reg_no",CarList2.SelectedValue.ToString());
                cmd2.Parameters.AddWithValue("@reg_no", str_booked);

                SqlCommand cmd3 = new SqlCommand();
                cmd3.Connection = con;
                cmd3.CommandText = "update driver_master set available='N' where driver_id=@driver_id";
                cmd3.Parameters.AddWithValue("@driver_id", DriverList1.SelectedValue.ToString());
                SqlCommand cmd4 = new SqlCommand();
                cmd4.Connection = con;
                cmd4.CommandText = "update car_master set available='N' where reg_no=@reg_no";
                cmd4.Parameters.AddWithValue("@reg_no",CarList2.SelectedValue.ToString());
                con.Open();
                cmd2.ExecuteNonQuery();
                cmd3.ExecuteNonQuery();
                cmd4.ExecuteNonQuery();
                con.Close();
            }
        }


    }
}