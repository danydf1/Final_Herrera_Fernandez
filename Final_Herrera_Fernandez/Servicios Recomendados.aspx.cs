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
    public partial class Servicios_Recomendados : System.Web.UI.Page
    {
        public List<Contactos> ListaRegistros { get; set; }
        SercicioRecomendadoNegocio negocio = new SercicioRecomendadoNegocio();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ListaRegistros = negocio.ServiciosRecomendados();
            Lista.DataSource = ListaRegistros;
            Lista.DataBind();
            Session.Add("ListarSevicios", Lista);
        }
    }
}