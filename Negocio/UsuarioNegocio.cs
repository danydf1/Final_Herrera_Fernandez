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
    }
}
