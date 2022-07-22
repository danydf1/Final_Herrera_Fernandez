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
    public partial class ABMUsuarios : System.Web.UI.Page
    {
        public List<Usuario> ListaUsuarios { get; set; }
        UsuarioNegocio negocioUser = new UsuarioNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            ListaUsuarios = negocioUser.ListaUsuarios();
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            Usuario usuariologuiado = new Usuario();
            usuariologuiado = (Usuario)Session["Cuenta"];

            Usuario user = new Usuario();
            user.NombreUsuario = txtNombreUser.Text;
            user.Nombre = txtNombrePila.Text;
            user.Apellido = txtApellido.Text;
            user.Email = txtEmail.Text;
            user.Pass = txtPass.Text;
            user.FechaNac = DateTime.Parse(FechaNac.Text);
            if (usuariologuiado == null || usuariologuiado.Tipo != 1)
            {
                user.Tipo = 2;
            }
            user.Estado = true;
            negocioUser.AgregarUsuario(user);
        }
    }
}