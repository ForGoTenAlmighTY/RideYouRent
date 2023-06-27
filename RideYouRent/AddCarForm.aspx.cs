using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RideYouRent
{
    public partial class AddCarForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            

        }

        protected void btnAddCar_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Server=tcp:dbsvc-cldv6211-st10127626.database.windows.net,1433;Initial Catalog=DBS_VC_CLDV6211_ST10127626;Persist Security Info=False;User ID=st10127626;Password=Vikitar15*;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            //INSERT QUERY TO THE DATABASE
            SqlCommand sqlCommand = new SqlCommand("INSERT INTO ST10127626.Car VALUES ('" + txtCarNo.Text + "','" + DropDownMake.Text+ "','" + txtModel.Text + "','" + DropDownBodyType.Text + "','" + Convert.ToInt32(txtKilometresTravelled.Text) + "','" +Convert.ToInt32( txtServiceTravelled.Text )+ "','" + DropDownAvailable.Text + "')", con);
            con.Open();



            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            SqlDataReader reader = dataReader;



            con.Close();
            Response.Redirect("~/HomeAdmin.aspx");
        }
    }
}