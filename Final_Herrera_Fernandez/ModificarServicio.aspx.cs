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
        ServiciosRecomendadosNegocio negocioModif = new ServiciosRecomendadosNegocio();
        ServiciosRecomendadosXAdmin SRaModificar = new ServiciosRecomendadosXAdmin ();
        public List<Servicios> ListaServicios { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            
                Usuario cuenta = (Usuario)Session["cuenta"];

                try
                {

                    if (cuenta.Tipo == 1)
                    {
                        if (!IsPostBack)
                        {
                        //Cargo en el repetidor mi lista de departamentos
                        ListaServicios = negocioModif.ListaTiposServicios();
                            DDLServicio.DataSource = ListaServicios;
                            DDLServicio.DataBind();

                            Int32 ID = (Int32)Session["SRModif"];
                            SRaModificar = negocioModif.TraerSR(ID);
                            DDLServicio.SelectedValue = Convert.ToString(SRaModificar.ServicioID);
                            TxtNombre.Text = SRaModificar.NombreContacto;
                            TxtTelefono.Text = SRaModificar.Contacto;
                            TxtHorarios.Text = SRaModificar.Horario;
                            if (SRaModificar.PaginaWeb == "Error.aspx")
                            {
                            CBWeb.Checked = true;
                            }
                            TxtSitioweb.Text = SRaModificar.PaginaWeb;
                        if (SRaModificar.Ubicacion == "Error.aspx")
                        {
                            CBUbi.Checked = true;
                        }
                        TxtUbicacion.Text = SRaModificar.Ubicacion;

                            
                           
                        }
                    }
                    else
                    {
                        // ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('No tiene permiso');window.location ='Login.aspx';", true);
                        Response.Redirect("Error.aspx");
                    }



                }
                catch (Exception ex)
                {
                    string mensaje = ex.Message;
                }

            

        }


        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            // usar if para determinar el tipo de imagen del sitio y la ubi esto lo codeo no lo ingresa el usuario,
        }

        protected void btvVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("ServiciosRecomendadosAdmin.aspx");
        }

       
    }
}