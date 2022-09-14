using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteWeb
{
    public partial class Products : System.Web.UI.Page
    {
        //acceder al servicio web
        private static ServiceReference1.WSNorthwindSoapClient servicio = new ServiceReference1.WSNorthwindSoapClient();
        private void Listar()
        {
            gvProducts.DataSource = servicio.ListarProducts().Tables[0];
            //enlace entre front y back
            gvProducts.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                Listar();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            servicio.AgregarProducts(txtProductName.Text, txtSupplierID.Text, txtCategoryID.Text, txtQuantityPerUnit.Text, txtUnitPrice.Text, txtUnitsInStock.Text, txtUnitsOnOrder.Text, txtReorderLevel.Text, txtDiscontinued.Text);
            Listar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            servicio.EliminarProducts(txtProductID.Text);
            Listar();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
           servicio.ActualizarProducts(txtProductID.Text, txtProductName.Text, txtSupplierID.Text, txtCategoryID.Text, txtQuantityPerUnit.Text, txtUnitPrice.Text, txtUnitsInStock.Text, txtUnitsOnOrder.Text, txtReorderLevel.Text, txtDiscontinued.Text);
           Listar();
        }

       

        
    }
}