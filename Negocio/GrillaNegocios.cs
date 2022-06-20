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
        public List<Calendarios> Listar(int dia)
        {
            List<Calendarios> lista = new List<Calendarios>();
            AccesoDatos Datos = new AccesoDatos();

            Datos.setearConsulta("select fecha,hora,titulo from calendarios where estado = 1 and datepart(DAYOFYEAR,(fecha) )=" + dia );
            Datos.ejecutarLectura();

            try
            {
                while (Datos.Lector.Read())
                {
                    Calendarios aux = new Calendarios();

                    aux.Fecha= (DateTime)Datos.Lector["fecha"];
                    aux.Horario = Convert.ToString(Datos.Lector["hora"]);
                    aux.Titulo = (string)Datos.Lector["titulo"];
                    
                    
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
