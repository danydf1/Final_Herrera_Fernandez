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
    public partial class ModificacionUsuario : System.Web.UI.Page
    {
        UsuarioNegocio negocioUser = new UsuarioNegocio();
        Usuario UsuarioaModificar = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario cuenta = (Usuario)Session["cuenta"];

            try
            {

                if (cuenta.Tipo == 1)
                {
                    if (!IsPostBack)
                    {
                        Int32 ID = (Int32)Session["UserModif"];
                        UsuarioaModificar = negocioUser.TraerUsuario(ID);
                        TxtNombreUsuario.Text = UsuarioaModificar.NombreUsuario;
                        TxtNombre.Text = UsuarioaModificar.Nombre;
                        TxtApellido.Text = UsuarioaModificar.Apellido;
                        TxtEmail.Text = UsuarioaModificar.Email;
                        TxtPass.Text = UsuarioaModificar.Pass;
                        TxtIdDepto.Text = Convert.ToString(UsuarioaModificar.IDDepto);

                        if (Convert.ToBoolean(UsuarioaModificar.Tipo == 1))
                        {

                            RadioVecino.Checked = false;
                            RadioAdmin.Checked = true;
                        }
                        else
                        {
                            RadioAdmin.Checked = false;
                            RadioVecino.Checked = true;
                        }
                    }
                }
                else
                {
                    // ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('No tiene permiso');window.location ='Login.aspx';", true);
                    Response.Redirect("Error.aspx");
                }



            }
            catch (Exception ex)
            {
                string mensaje = ex.Message;
            }

        }


    


        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                        Usuario user = new Usuario();
                        Int32 ID = (Int32)Session["UserModif"];
                        user.ID = ID;
                        user.NombreUsuario = TxtNombreUsuario.Text;
                        user.Nombre = TxtNombre.Text;
                        user.Apellido = TxtApellido.Text;
                        user.Email = TxtEmail.Text;
            
                        int edad = negocioUser.ValidarEdad(DateTime.Parse(FechaNac.Text));
                        if (edad < 18)
                        {
                            Response.Write("<script>alert('El usuario debe ser mayor de edad');</script>");


                        }
                        else
                        { 

                            // ojo con esto que da lo precarga y o lo saco o busco la vuelta para k lo precargue en el ispockback
                            user.FechaNac = DateTime.Parse( FechaNac.Text);
             
            
                        user.IDDepto = Convert.ToInt32(TxtIdDepto.Text);
                        if (RadioVecino.Checked == true)
                            {
                            user.Tipo = 2;   
                             }
                        else 
                             {
                            user.Tipo = 1;
                             }
                        user.Pass = TxtPass.Text;



            
                        negocioUser.Modificar(user);

                            Response.Write("<script>alert('Usuario Modificado ');</script>");

                            Response.Redirect("ABMUsuarios.aspx");
            

            }
            }
        }
    }
}