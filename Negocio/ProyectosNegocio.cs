using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class ProyectosNegocio
    {
        public List<Proyectos> ListarProyectosAprobados()
        {

            List<Proyectos> lista = new List<Proyectos>();
            AccesoDatos Datos = new AccesoDatos();

            Datos.setearConsulta("Select * From Proyectos where IDESTADO = 3 ");
            Datos.ejecutarLectura();
            try
            {
                while (Datos.Lector.Read())
                {
                    Proyectos aux = new Proyectos();
                    //aux.ID = (Int32)Datos.Lector["ID"];
                    aux.Nombre = Datos.Lector["NOMBRE"].ToString();
                    aux.Descripcion = Datos.Lector["DESCRIPCION"].ToString();
                    //aux.Tipo.ID = (Int32)Datos.Lector["IDESTADO"];
                    //aux.Monto = (decimal)Datos.Lector["Monto"];


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
