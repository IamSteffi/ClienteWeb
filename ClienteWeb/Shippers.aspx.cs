using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteWeb
{
    public partial class Shippers : System.Web.UI.Page
    {
        //acceder al servicio web
        private static ServiceReference1.WSNorthwindSoapClient servicio = new ServiceReference1.WSNorthwindSoapClient();
        private void Listar()
        {
            gvShippers.DataSource = servicio.ListarShippers().Tables[0];
            //enlace entre front y back
            gvShippers.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                Listar();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            servicio.AgregarShippers(txtCompanyName.Text, txtPhone.Text);
            Listar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            servicio.EliminarShippers(txtShippersID.Text);
            Listar();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            servicio.ActualizarShippers(txtShippersID.Text, txtCompanyName.Text, txtPhone.Text);
            Listar();
        }
    }
}