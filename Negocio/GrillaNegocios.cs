using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
namespace Negocio
{
   public class GrillaNegocios
    {
        public List<Calendarios> Listar(int fecha)
        {
            List<Calendarios> lista = new List<Calendarios>();
            AccesoDatos Datos = new AccesoDatos();

            Datos.setearConsulta("select id,fecha,titulo,estado from calendarios where datepart(DAYOFYEAR,(fecha))=" + fecha );
            Datos.ejecutarLectura();

            try
            {
                while (Datos.Lector.Read())
                {
                    Calendarios aux = new Calendarios();
                    aux.Id = (long)Datos.Lector["id"];
                    aux.Horario = (DateTime)Datos.Lector["fecha"];
                    aux.Titulo = (string)Datos.Lector["titulo"];
                    aux.Estado = (bool)Datos.Lector["estado"];

                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                Datos.cerrarConexion();
            }

        }
    }
}
