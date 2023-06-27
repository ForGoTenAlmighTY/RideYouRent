using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RideYouRent
{
    public partial class UpdateCarForm : System.Web.UI.Page
    {
        

        protected void btnUpdateCar_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Server=tcp:dbsvc-cldv6211-st10127626.database.windows.net,1433;Initial Catalog=DBS_VC_CLDV6211_ST10127626;Persist Security Info=False;User ID=st10127626;Password=Vikitar15*;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            //Update QUERY TO THE DATABASE

            SqlCommand sqlCommand = new SqlCommand("UPDATE ST10127626.Car SET Car_Make ='"+ DropDownMake.Text+"', Model ='"+ txtModel.Text+"', Body_Type ='"+ DropDownBodyType.Text+"', Kilometres_Travelled ='" + Convert.ToInt32(txtKilometresTravelled.Text) +"', Service_Travelled ='"+ Convert.ToInt32( txtServiceTravelled.Text )+"', Available ='"+ DropDownAvailable.Text+"' WHERE CarNo='"+ DropDownCar.Text + "'",con);
            con.Open();



            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            SqlDataReader reader = dataReader;



            con.Close();
            Response.Redirect("~/HomeAdmin.aspx");
        }
    }
}