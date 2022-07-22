using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Final_Herrera_Fernandez
{
    public partial class ModificarServicio : System.Web.UI.Page
    {
        List<Contactos> listaAux = new List<Contactos>();
        ServiciosRecomendadosNegocio negocio = new ServiciosRecomendadosNegocio();
        public Contactos contacto { get; set; }
        public void CargarForm()
        {

            TxtServicio.Text = contacto.Servicio;
            TxtNombre.Text = contacto.NombreContacto;
            TxtTelefono.Text = contacto.Telefono;
            TxtHorarios.Text = contacto.Horarios;

        }

        public void GuardarForm()
        {
            contacto.id = Convert.ToInt32(Request.QueryString["id"]);
            contacto.Servicio = TxtServicio.Text;
            contacto.NombreContacto = TxtNombre.Text;
            contacto.Telefono = TxtTelefono.Text;
            contacto.Horarios = TxtHorarios.Text;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                listaAux = (List<Contactos>)Session["ListarSevicios"];
                int idAux = Convert.ToInt32(Request.QueryString["id"]);
                contacto = listaAux.Find(i => i.id == idAux);

                CargarForm();
            }
            catch (Exception ex)
            {
                Session.Add("errorEncontrado", ex.ToString());
                Response.Redirect("Error.aspx");
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("serviciosRecomendadoAdmin.aspx");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            GuardarForm();

            if (negocio.Modificar(contacto))
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Servicio Actualizado');window.location='ServiciosRecomendadosAdmin.aspx';", true);

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Error no se completo la modificacion');window.location='ServiciosRecomendadosAdmin.aspx';", true);

            }
        }
    }
}