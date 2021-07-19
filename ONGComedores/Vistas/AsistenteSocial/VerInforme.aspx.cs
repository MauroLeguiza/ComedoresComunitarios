using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Negocio;
namespace Vistas
{
    public partial class VerInforme : System.Web.UI.Page
    {

        NegocioInforme neg = new NegocioInforme();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            this.Form.Attributes.Add("autocomplete", "off");

            if (Session["SessionString"] != null)
            {
                lblUsuarioLogeado.Text = "Usuario ASISTENTE: " + Session["SessionString"].ToString();
            }

            if (!IsPostBack)
            {
             

            }
        }

        protected void btnMostrarInformes_Click(object sender, EventArgs e)
        {
            grvInformes.DataSource = neg.GetTabla();
            grvInformes.DataBind();
            limpiar();
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string fecha1 = CalendarFechaInforme.SelectedDate.ToShortDateString();
            grvInformes.DataSource = neg.GetTablaFecha(fecha1);
            grvInformes.DataBind();
            limpiar();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtIdCome.Text);
            //lblpromedio.Text = neg.MostrarPROMEDIO(id).ToString();
            grvInformes.DataSource = neg.GetTablaIDCome(id);
            grvInformes.DataBind();
            limpiar();
        }

        protected void btnLegajo_Click(object sender, EventArgs e)
        {
            grvInformes.DataSource = neg.GetTablaLegajo(txtBusquedaLegajo.Text);
            grvInformes.DataBind();
            limpiar();
        }

        protected void btnInforme_Click(object sender, EventArgs e)
        {
            grvInformes.DataSource = neg.GetTablaID(Convert.ToInt32(txtNumInfo.Text));
            grvInformes.DataBind();
            limpiar();
        }

        public void limpiar()
        {
            txtBusquedaLegajo.Text = "";
            txtIdCome.Text = "";
            txtNumInfo.Text = "";
           
        }

        protected void grvInformes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "EventoComensales")
            {
                int fila= Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(((Label)grvInformes.Rows[fila].FindControl("lbl_IT_IdInforme")).Text);
                Session["SessionId"]=id;
                Response.Redirect("~/AsistenteSocial/VerComensales.aspx");
             
            }
        }
    }
    }
