using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace Final_Herrera_Fernandez
{
    public partial class Calendario : System.Web.UI.Page
    {
        public List<Calendarios> listaCalendario { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            GrillaNegocios negocio = new GrillaNegocios();
            try
            {

                if (!IsPostBack)
                {
                    int mifecha = DateTime.Now.DayOfYear;
                    listaCalendario = negocio.Listar(mifecha);
                    GvCalendario.DataSource = listaCalendario;
                    GvCalendario.DataBind();

                }


                listaCalendario = negocio.Listar(CalendarioEvento.SelectedDate.DayOfYear);
                GvCalendario.DataSource = listaCalendario;
                GvCalendario.DataBind();
<<<<<<< HEAD



=======
>>>>>>> c847e23524c80f21269b4b36462d9ef9813dc7d6
            }
            catch (Exception ex)
            {

                Session.Add("Error", ex.ToString());

                Response.Redirect("Error.aspx");
<<<<<<< HEAD
            }
        
            
      
=======
            }     
>>>>>>> c847e23524c80f21269b4b36462d9ef9813dc7d6
        }

        
    }
}