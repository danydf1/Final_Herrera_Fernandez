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
            Usuario cuenta = (Usuario)Session["cuenta"];
            try
            {
                
                if (cuenta.Tipo == 1)
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
                else
                {
                    // ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('No tiene permiso');window.location ='Login.aspx';", true);
                    Response.Redirect("Error.aspx");
                }

             
            }
            catch (Exception )
            {

               
                Response.Redirect("Error.aspx");
                
                
            }
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            var argument = ((Button)sender).CommandArgument;
            int ID = Convert.ToInt32(argument);
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "confirm", "if(!confirm('esta seguro que quiere eliminar?')){window.location='ABMUsuarios.aspx'};", true  );
            //  NO LOGRE QUE ACTUALICE LA ELIMINANCION Y A SU VEZ K MANDE UNA ALERTA O K CONSULTE SI DESEA ELIMINAR ANTES DE HACERLO
            negocio.Eliminar(ID);

            //Response.Write("<script>alert('Usuario Eliminado');</script>");
            Page.Response.Redirect(Page.Request.Url.ToString(), false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}