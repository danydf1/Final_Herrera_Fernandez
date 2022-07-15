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
    public partial class Mensajes : System.Web.UI.Page
    {
        public List<Usuario> usuarios { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioNegocio negocio = new UsuarioNegocio();
            
            usuarios = negocio.ListaUsuarios();
        }
    }
}