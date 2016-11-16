using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.Configuration;
namespace WebApplication1
{
    /// <summary>
    /// Summary description for CarService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class CarService1 : System.Web.Services.WebService
    {
        
        [WebMethod]
        public List<Car_Obj> GetCarByType(int userid,int CarType)
        {
                        List<Car_Obj> carlist = new List<Car_Obj>();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();

            SqlParameter parameter = new SqlParameter();
            parameter.ParameterName = "@cartype";
            parameter.Value = CarType;
            
            cmd.Connection = con;
            cmd.CommandText = "select model,make from car_master where car_type = @cartype and available='Y' and city=(select city from USER_MASTER where user_id=@user_id) group by model,make ";
            cmd.Parameters.Add(parameter);
            cmd.Parameters.AddWithValue("@user_id",userid);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            Car_Obj car;
            if(!rdr.HasRows)
            {
                car = new Car_Obj();
                car.model = "no_cars";
                carlist.Add(car);
                
            }
            while (rdr.Read())
            {
                car = new Car_Obj();
                
                car.model = rdr["model"].ToString();
                car.make = rdr["make"].ToString();
                carlist.Add(car);
            }
            return (carlist);
            
        }
    }
}
