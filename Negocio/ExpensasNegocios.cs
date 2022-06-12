using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
namespace Negocio
{
    public class ExpensasNegocios
    {
       public List<Archivos> ListarRegistros()
        {
            List<Archivos> lista = new List<Archivos>();
            AccesoDatos Datos = new AccesoDatos();

            Datos.setearConsulta("Select * From tbl_contents;");
            Datos.ejecutarLectura();
            try
            {
               

                {
                    
                    while (Datos.Lector.Read())
                    {
                        Archivos aux = new Archivos();
                        aux.ID = (Int32)Datos.Lector["ID"];
                        aux.visorImagen = "Preview.aspx?id=" + aux.ID;

                        lista.Add(aux);
                    }
                    
                    return lista;

                   
                }
               
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
