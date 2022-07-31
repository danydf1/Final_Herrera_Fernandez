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
        public List<Calendarios> Listar(DateTime fecha)
        {
            List<Calendarios> lista = new List<Calendarios>();
            AccesoDatos Datos = new AccesoDatos();
            //pongo en una cadena la fecha que viene por parametro , tuve que descomponer de esta manera la fecha por k en sql tiene este formato amo mes dia y no encontre otra forma de que me lo tome,
            string fechaseleccionada = "'" + fecha.Year  +"/"+ fecha.Month  +"/"+ fecha.Day + "'";
            
Datos.setearConsulta("select fecha,hora,titulo from calendarios where estado = 1 and fecha=" +fechaseleccionada+ "");
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
