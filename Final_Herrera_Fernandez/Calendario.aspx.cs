using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;
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
                   DateTime fechasistema = Convert.ToDateTime(DateTime.Now.Date.ToShortDateString());
                    CalendarioEvento.VisibleDate = DateTime.Today;
                    CalendarioEvento.SelectedDate = DateTime.Today;
                    listaCalendario = negocio.Listar(fechasistema);
                    GVCalendario.DataSource = listaCalendario;
                    GVCalendario.DataBind();

                }

                DateTime fechaseleccionada = Convert.ToDateTime(CalendarioEvento.SelectedDate.ToShortDateString());
                listaCalendario = negocio.Listar(fechaseleccionada);
                GVCalendario.DataSource = listaCalendario;
                GVCalendario.DataBind();

            }
            catch (Exception ex)
            {

                Session.Add("Error", ex.ToString());

                Response.Redirect("Error.aspx");

            }




        }

    }

}
