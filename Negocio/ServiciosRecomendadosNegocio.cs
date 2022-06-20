using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
namespace Negocio
{
    public class ServiciosRecomendadosNegocio
    {
        public List<Contactos> ServiciosRecomendados()
        {
            AccesoDatos Datos = new AccesoDatos();
            List<Contactos> lista = new List<Contactos>();
            Datos.setearConsulta("select * from ServiciosRecomendados");
            Datos.ejecutarLectura();

            try
            {

                while (Datos.Lector.Read())
                {
                    Contactos aux = new Contactos();

                    aux.id = Convert.ToInt32((long)Datos.Lector["ID"]);
                    aux.Servicio = (string)Datos.Lector["txt_Servicio"];
                    aux.NombreContacto = (string)Datos.Lector["txt_Nombre"];
                    aux.Telefono = (string)Datos.Lector["NroContacto"];
                    aux.estado = (bool)Datos.Lector["ESTADO"];

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
