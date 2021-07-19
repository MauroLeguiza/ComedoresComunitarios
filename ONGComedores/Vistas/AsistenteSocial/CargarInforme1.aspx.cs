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
    public partial class CargarInforme1 : System.Web.UI.Page
    {
        NegocioInforme neg = new NegocioInforme();
        NegocioComedor negcome = new NegocioComedor();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            this.Form.Attributes.Add("autocomplete", "off");

            if (Session["SessionString"] != null)
            {
                lblUsuarioLogeado.Text = "Usuario ASISTENTE: " + Session["SessionString"].ToString();
            }


            if (!IsPostBack) { 
                ddlRangoEdad.DataSource = neg.MostrarRangoEdad();
                ddlRangoEdad.DataValueField = "ID_Rango_Edad";
                ddlRangoEdad.DataTextField = "Rango";
                ddlRangoEdad.DataBind();
                ddlPrestacion.DataSource = neg.MostrarPrestaciones();
                ddlPrestacion.DataValueField = "ID_Prestacion";
                ddlPrestacion.DataTextField = "Nombre_Prestacion";
                ddlPrestacion.DataBind();
                ddlComedores.DataSource =negcome.GetTabla();
                ddlComedores.DataValueField = "ID_Come";
                ddlComedores.DataTextField = "ID_Come";
                ddlComedores.DataBind();

            }
            lblidInforme.Text = neg.maximoinfo().ToString();

        }

        protected void lbtnVerInforme_Click(object sender, EventArgs e)
        {

        }

        protected void btnAgregarInforme_Click(object sender, EventArgs e)
        {
            bool estado = false;
            string legajo = Session["SessionLegajo"].ToString();
            string fecha = CalendarInforme.SelectedDate.ToShortDateString();
            string rangoedad = ddlRangoEdad.SelectedValue;
            int cantidad = Convert.ToInt32(txtCantidadPersonas.Text);
            string prestacion = ddlPrestacion.SelectedValue;
            int comedor = Convert.ToInt32(ddlComedores.SelectedValue);
            if (fecha != "1/1/0001")
            {
               estado= neg.AgregarInforme(fecha, rangoedad, cantidad,prestacion,legajo,comedor);
            }

            if (estado) { 
                limpiar();
                Session["SessionIDInforme"] = lblidInforme.Text;
                Response.Redirect("~/AsistenteSocial/CargarInforme.aspx");
               
            }
            else { 
                lblMensaje.Text = "Error al cargar informe";
            }
        }

        public void limpiar()
        {
            txtCantidadPersonas.Text = "";
            ddlComedores.ClearSelection();
            ddlPrestacion.ClearSelection();
            ddlRangoEdad.ClearSelection();
            ddlRangoEdad.ClearSelection();
        }
    }
}