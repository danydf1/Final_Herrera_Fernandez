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
        public List<Departamento> ListaDepartamentos { get; set; }
        UsuarioNegocio negocioUser = new UsuarioNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            ListaUsuarios = negocioUser.ListaUsuarios();
            ListaDepartamentos = negocioUser.ListaDepartamentos();
            
                DDLDepto.DataSource = ListaDepartamentos;
               
                DDLDepto.DataBind();
            
           
            Usuario usuariologuiado = new Usuario();
            usuariologuiado = (Usuario)Session["Cuenta"];
            // Revisar este codigo por un lado pensar si esta de mas , capaz pensando k x url accedan a la pag sirve pensarlo,  por otro lado si sirve ponerlo en una funcion capz 
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
            
            Session.Add("ListarSevicios", ListaUsuarios);
            rep.DataSource = ListaUsuarios;
            rep.DataBind();
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
            user.FechaNac = DateTime.Parse(FechaNac.Text);
            user.IDDepto = Convert.ToInt32(DDLDepto.SelectedValue);
            user.Estado = true;
            if (RadioAdmin.Checked == true) { user.Tipo = 1; }
            else { user.Tipo = 2; }
            int edad = negocio.ValidarEdad(user.FechaNac);
            if (edad < 18)
            {
                Response.Write("<script>alert('El usuario debe ser mayor de edad');</script>");


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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            var argument = ((Button)sender).CommandArgument;
            int ID = Convert.ToInt32(argument);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "confirm", "if(!confirm('esta seguro que quiere eliminar?')){window.location='ABMUsuarios.aspx'};", true);
            negocioUser.eliminar(ID);

            
          

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            //INTENTE USAR MODAL PERO NO LOGRO QUE DESDE EL BOTON MODIFICAR ME ABRA EL MODAL DEL FORMULARIO ,SI LO CARGA Y SI ACCEDO DEL BOTON "CREAR USUARIO" LO MUESTRA PRECARGADO ,CREO QUE SE DEBE A K NO USO BUTTON SINO ASPBUTTON 
            Usuario UsuarioaModificar = new Usuario();
            var argument = ((Button)sender).CommandArgument;
            int ID = Convert.ToInt32(argument);
            Session.Add("UserModif", ID);
            Response.Redirect("ModificacionUsuario.aspx");
        }
    }
}