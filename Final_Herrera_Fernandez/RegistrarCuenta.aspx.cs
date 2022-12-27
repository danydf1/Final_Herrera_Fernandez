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
            user.IDDepto = Convert.ToInt32(TxtIdDepto.Text);
            // user.departamento.Descripcion = "3";
            user.Estado = true; 
            int edad = negocio.ValidarEdad(user.FechaNac);
            if (edad < 18)
            {  //mandar un mensaje de "debe loguiarse"
                Response.Write("<script>alert('El usuario debe ser mayor de edad');</script>");

                //Response.Redirect("Inicio.aspx");}
            }
            else
            {
                if (usuariologuiado == null)
                {
                    Response.Write("<script>alert('Utd debe loguearse  y ser administrador para dar de alta');</script>");
                }

                else if (usuariologuiado.Tipo == 1)
                {
                    negocio.AgregarUsuario(user);
                    Response.Write("<script>alert('Usuario Creado');</script>");
                }
                
                
            }
            
        }
    }
}