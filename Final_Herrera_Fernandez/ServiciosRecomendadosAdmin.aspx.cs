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
    public partial class ServiciosRecomendadosAdmin : System.Web.UI.Page
    {
        public List<Contactos> ListaRegistros { get; set; }
        ServiciosRecomendadosNegocio negocio = new ServiciosRecomendadosNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["listaBuscados"] == null)
                {
                    ListaRegistros = negocio.ServiciosRecomendados();
                    Session.Add("ListarSevicios", ListaRegistros);
                    rep.DataSource = ListaRegistros;
                    rep.DataBind();
                }
                else
                {

                    ListaRegistros = (List<Contactos>)Session["listaBuscados"];
                    Session["listaBuscados"] = null;
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "confirm", "if(!confirm('esta seguro que quiere eliminar?')){window.location='ServiciosRecomendadosAdmin.aspx'};", true);
            if (negocio.Eliminar(e.CommandArgument.ToString()))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Se elmino Correctamente');window.location='ServiciosRecomendadosAdmin.aspx';", true);
            }
        }
    }
}