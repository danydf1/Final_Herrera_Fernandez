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
        AccesoDatos Datos = new AccesoDatos();
        public List<Contactos> ServiciosRecomendados()
        {

            List<Contactos> lista = new List<Contactos>();
            Datos.setearConsulta("select * from ServiciosRecomendados where estado = 1");
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
                    aux.Horarios = (string)Datos.Lector["Horarios"];
                    aux.Sitio = (string)Datos.Lector["Sitio"];
                    aux.Ubicacion = (string)Datos.Lector["Ubicacion"];
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

        public bool Eliminar(int id)
        {
            try
            {
                Datos.setearConsulta("UPDATE ServiciosRecomendados SET Estado = 0 where ID = @id");
                Datos.setearParametro("@id", id);
                Datos.ejecutarLectura();
                return true;
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
        public bool Modificar(Contactos contactos)
        {
            try
            {
                Datos.setearConsulta("UPDATE ServiciosRecomendados SET txt_Servicio = @servicio, txt_Nombre = @Nombre,NroContacto = @Telefono,Horarios = @horarios, Estado = 1 where id=@id");
                Datos.setearParametro("@id", contactos.id);
                Datos.setearParametro("@servicio", contactos.Servicio);
                Datos.setearParametro("@Nombre", contactos.NombreContacto);
                Datos.setearParametro("@Telefono", contactos.Telefono);
                Datos.setearParametro("@horarios", contactos.Horarios);
                Datos.ejecutarLectura();
                return true;
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
