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
    public partial class CalendarioAdmin : System.Web.UI.Page
    {
        public List<Calendarios> listaCalendarioAdmin { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            GrillaNegocios negocio = new GrillaNegocios();
            try
            {

                if (!IsPostBack)
                {
                    int mifecha = DateTime.Now.DayOfYear;
                    listaCalendarioAdmin = negocio.Listar(mifecha);
                    GVCalendario.DataSource = listaCalendarioAdmin;
                    GVCalendario.DataBind();

                }


                listaCalendarioAdmin = negocio.Listar(CalendarioEvento.SelectedDate.DayOfYear);
                GVCalendario.DataSource = listaCalendarioAdmin;
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