using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;
namespace Final_Herrera_Fernandez
{
    public partial class Expensas : System.Web.UI.Page
    {
        public List<Archivos> listaGrilla { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {


            ExpensasNegocios negocio = new ExpensasNegocios();
            Usuario usuario = new Usuario();
            try
            {
                usuario = (Usuario)Session["cuenta"];
                //if (!IsPostBack)
                //{

                //    listaGrilla = negocio.ListarRegistros();
                //    Session.Add("ListarComponentes", listaGrilla);
                //}


                listaGrilla = negocio.ListarRegistros(usuario.ID);
                Session.Add("ListarComponentes", listaGrilla);


            }
            catch (Exception ex)
            {

                Session.Add("Error", ex.ToString());

                Response.Redirect("Error.aspx");
            }
        }
        
    }
}