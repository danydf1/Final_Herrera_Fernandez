using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;
using System.Data;

namespace Final_Herrera_Fernandez
{
    public partial class Expensas : System.Web.UI.Page
    {
        public List<Archivos> listaGrilla { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
          

           ExpensasNegocios negocio = new ExpensasNegocios();
            try
            {

                if (!IsPostBack)
                {
                    
                    listaGrilla = negocio.ListarRegistros();
                    gvListaImagenes.DataSource = listaGrilla;
                    gvListaImagenes.DataBind();
                    Session.Add("ListarComponentes", listaGrilla);



                }


                listaGrilla = negocio.ListarRegistros();
                gvListaImagenes.DataSource = listaGrilla;
                gvListaImagenes.DataBind();
                Session.Add("ListarComponentes", listaGrilla);


            }
            catch (Exception ex)
            {

                Session.Add("Error", ex.ToString());

                Response.Redirect("Error.aspx");
            }
        }
     

     

  
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("Insert Into tbl_contents(content) Values(@content)");

                datos.setearParametro("@content", fuImagen.FileBytes) ;
               
                // Mostrar la imagen de la base de datos SQL Server en la página
                lblMensajeOk.Text = "Se ha guardado la imagen correctamente.";
                lblMensajeError.Text = "";
                ExpensasNegocios negocio = new ExpensasNegocios();
                listaGrilla = negocio.ListarRegistros();
                datos.ejectutarAccion();
                datos.cerrarConexion();
            }
            catch (Exception ex)
            {

                lblMensajeOk.Text = "";
                lblMensajeError.Text = ex.Message;
            }


        }

    
    }
}