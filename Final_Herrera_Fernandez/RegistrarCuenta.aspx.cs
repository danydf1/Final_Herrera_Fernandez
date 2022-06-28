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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            UsuarioNegocio negocio = new UsuarioNegocio();
            Usuario user = new Usuario();

            user.NombreUsuario = TxtNombreUsuario.Text;
            user.Nombre = TxtNombre.Text;
            user.Apellido = TxtApellido.Text;
            user.Email = TxtEmail.Text;
            user.Pass = TxtPass.Text;
            user.FechaNac = FechaNac.SelectedDate;
            
            negocio.AgregarUsuario(user);
        }
    }
}