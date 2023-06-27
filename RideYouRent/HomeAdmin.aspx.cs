using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RideYouRent
{
    public partial class HomeAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAddCar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddCarForm.aspx");
        }

        protected void btnDeleteCar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DeleteCarForm.aspx");
        }

        protected void btnUpdateCar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UpdateCarForm.aspx");
        }

        protected void btnAddDriver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddDriverForm.aspx");
        }

        protected void btnDeleteDriver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DeleteDriverForm.aspx");
        }

        protected void btnUpdateDriver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UpdateDriverForm.aspx");
        }

        protected void btnAddInspector_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddInspectorForm.aspx");
        }

        protected void btnDeleteInspector_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DeleteInspectorForm.aspx");
        }

        protected void btnUpdateInspector_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UpdateInspectorForm.aspx");
        }

        protected void btnRental_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddRentalForm.aspx");
        }

        protected void btnReturnals_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddReturnalsForm.aspx");
        }
    }
}