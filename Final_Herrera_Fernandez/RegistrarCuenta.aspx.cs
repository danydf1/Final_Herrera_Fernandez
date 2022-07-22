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
            Usuario usuariologuiado = new Usuario();
            usuariologuiado = (Usuario)Session["Cuenta"];
            
                if (usuariologuiado == null)
                {

                    RadioAdmin.Visible = false;
                    LblAdmin.Visible = false;
                    RadioVecino.Visible = false;
                    LblVecino.Visible = false;
                }
                  
            

            else if (usuariologuiado.Tipo == 1)
            {
                RadioAdmin.Visible = true;
                LblAdmin.Visible = true;
                RadioVecino.Visible = true;
                LblVecino.Visible = true;
            }
            else
            {
                RadioAdmin.Visible = false;
                LblAdmin.Visible = false;
                RadioVecino.Visible = true;
                LblVecino.Visible = true;
            }
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            UsuarioNegocio negocio = new UsuarioNegocio();

            Usuario usuariologuiado = new Usuario();
            usuariologuiado = (Usuario)Session["Cuenta"];

            Usuario user = new Usuario();
            user.NombreUsuario = TxtNombreUsuario.Text;
            user.Nombre = TxtNombre.Text;
            user.Apellido = TxtApellido.Text;
            user.Email = TxtEmail.Text;
            user.Pass = TxtPass.Text;
            user.FechaNac = DateTime.Parse( FechaNac.Text);
            if (RadioAdmin.Checked == true) { user.Tipo = 1; }
            else { user.Tipo = 2; }


            user.Estado = true;
            negocio.AgregarUsuario(user);
        }
    }
}