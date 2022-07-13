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
    public partial class FondoComun : System.Web.UI.Page
    {
        public List<Proyectos> ListaProyectos { get; set; }
        ProyectosNegocio negocio = new ProyectosNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {

            ListaProyectos = negocio.ListarProyectosAprobados();
            ListaAprobados.DataSource = ListaProyectos;
            ListaAprobados.DataBind();
            Session.Add("ListarSevicios", ListaAprobados);
        }
    
    }
}