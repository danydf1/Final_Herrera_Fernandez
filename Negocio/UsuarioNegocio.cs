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
    }
}
