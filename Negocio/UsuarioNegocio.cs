using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class UsuarioNegocio
    {
        AccesoDatos datos = new AccesoDatos();
        Ecriptacion ecriptacion = new Ecriptacion();

        public void AgregarUsuario(Usuario user)
        {
            datos.setearSP("sp_ins_usuario");

            datos.setearParametro("@NombreUsuario", user.NombreUsuario);
            datos.setearParametro("@Nombre", user.Nombre);
            datos.setearParametro("@Apellido", user.Apellido);
            datos.setearParametro("@Email", user.Email);

            user.Pass = ecriptacion.Encripta(user.Pass);
            datos.setearParametro("@Pass" , user.Pass);
            
            datos.setearParametro("@FechaNac", user.FechaNac);
            
            datos.ejectutarAccion();
            datos.cerrarConexion();
        }
        public List<Usuario> ListaUsuarios()
        {
            AccesoDatos Datos = new AccesoDatos();
            List<Usuario> lista = new List<Usuario>();
            Datos.setearConsulta("select * from Usuarios");
            Datos.ejecutarLectura();

            try
            {
                while (Datos.Lector.Read())
                {
                    Usuario aux = new Usuario();

                    aux.ID = Convert.ToInt32((long)Datos.Lector["ID"]);
                    aux.Nombre = (string)Datos.Lector["NOMBRE"];
                    aux.Apellido = (string)Datos.Lector["APELLIDO"];
                    aux.Email = (string)Datos.Lector["EMAIL"];
                    aux.Pass = (string)Datos.Lector["PASS"];
                    //aux.FechaNac = (DateTime)datos.Lector["FECHANAC"];
                    //aux.Tipo = (string)datos.Lector["IDTIPO"];

                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                Datos.cerrarConexion();
            }
        }

        public Usuario ValidarUsuarios(string email, string pass)
        {
            Usuario cuenta = new Usuario();
            AccesoDatos Datos = new AccesoDatos();
            if(email != "vecino@gamil.com" || email != "admin@gmail.com")
            {
                pass = ecriptacion.Encripta(pass);
            }


            Datos.setearConsulta("select * from usuarios where email= '" + email + "'and pass='" + pass + "'");
            Datos.ejecutarLectura();

            try
            {
                Datos.Lector.Read();

                Usuario aux = new Usuario();
               
                aux.ID = (long)Datos.Lector["Id"];
                aux.NombreUsuario = (string)Datos.Lector["Nombreusuario"];
                aux.Apellido = (string)Datos.Lector["Apellido"];
                aux.Nombre = (string)Datos.Lector["Nombre"];
                aux.Email = (string)Datos.Lector["Email"];
                aux.Pass = (string)Datos.Lector["Pass"];
                aux.FechaNac = (DateTime)Datos.Lector["FechaNac"];
                aux.FechaAlta = (DateTime)Datos.Lector["Fechaalta"];
                aux.Tipo = (int)Datos.Lector["Idtipo"];
                aux.Estado = (bool)Datos.Lector["Estado"];


                return aux;
            }
            catch (Exception)
            {

                return null;
            }
            finally
            {
                Datos.cerrarConexion();
            }


        }
    }
}
