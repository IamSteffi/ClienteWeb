using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteWeb
{
    public partial class Suppliers : System.Web.UI.Page
    {
        //acceder al servicio web
        private static ServiceReference1.WSNorthwindSoapClient servicio = new ServiceReference1.WSNorthwindSoapClient();
        private void Listar()
        {
            gvSuppliers.DataSource = servicio.ListarSuppliers().Tables[0];
            //enlace entre front y back
            gvSuppliers.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                Listar();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            servicio.AgregarSuppliers(txtCompanyName.Text, txtContactName.Text, txtContactTitle.Text, txtAddress.Text, txtCity.Text, txtRegion.Text, txtPostalCode.Text, txtCountry.Text, txtPhone.Text, txtFax.Text, txtHomePage.Text);
            Listar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            servicio.EliminarSuppliers(txtSupplierID.Text);
            Listar();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            servicio.ActualizarSuppliers(txtSupplierID.Text, txtCompanyName.Text, txtContactName.Text, txtContactTitle.Text, txtAddress.Text, txtCity.Text, txtRegion.Text, txtPostalCode.Text, txtCountry.Text, txtPhone.Text, txtFax.Text, txtHomePage.Text);
            Listar();
        }

    }
}