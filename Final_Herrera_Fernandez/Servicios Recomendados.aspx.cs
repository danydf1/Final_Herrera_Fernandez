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
    public partial class Servicios_Recomendados : System.Web.UI.Page
    {
        public List<Contactos> ListaRegistros { get; set; }
        ServiciosRecomendadosNegocio negocio = new ServiciosRecomendadosNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            ListaRegistros = negocio.ServiciosRecomendados();
            Lista.DataSource = ListaRegistros;
            Lista.DataBind();
            Session.Add("ListarSevicios", Lista);
        }
    }
}