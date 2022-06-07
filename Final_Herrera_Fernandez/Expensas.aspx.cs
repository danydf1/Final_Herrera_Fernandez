using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Final_Herrera_Fernandez
{
    public partial class Expensas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListarRegistros();
        }

        private void ListarRegistros()
        {
            
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("insert into ArchivosPdf(content) values ( @content)");

                datos.setearParametro("@content", Archivo.FileBytes);
                datos.ejectutarAccion();
                datos.cerrarConexion();
            }
            catch (Exception)
            {

                throw;
            }


        }
    }
}