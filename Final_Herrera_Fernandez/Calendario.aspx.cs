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
        public List<Calendarios> listaGrilla { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            GrillaNegocios negocio = new GrillaNegocios();
            try
            {

                if (!IsPostBack)
                {
                    CalendarioConsorcio.SelectedDate = System.DateTime.Today;
                    listaGrilla = negocio.Listar(CalendarioConsorcio.SelectedDate.DayOfYear);
                    Gv_GrillaDiaria.DataSource = listaGrilla;
                    Gv_GrillaDiaria.DataBind();
                    


                }


                listaGrilla = negocio.Listar(CalendarioConsorcio.SelectedDate.DayOfYear);
                Gv_GrillaDiaria.DataSource=listaGrilla;
                Gv_GrillaDiaria.DataBind();
                   
                

            }
            catch (Exception ex)
            {

                Session.Add("Error", ex.ToString());
                
                Response.Redirect("Error.aspx");
            }
        }
    }
}