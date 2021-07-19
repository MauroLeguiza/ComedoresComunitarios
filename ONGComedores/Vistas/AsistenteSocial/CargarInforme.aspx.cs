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
    public partial class CargarInforme : System.Web.UI.Page
    {
        NegocioInforme neg = new NegocioInforme();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            this.Form.Attributes.Add("autocomplete", "off");

            if (Session["SessionString"] != null)
            {
               // lblUsuarioLogeado.Text = "Usuario ASISTENTE: " + Session["SessionString"].ToString();
            }

            if (!IsPostBack)
            {
                lblmensaje1.Text = "Informe cargado con exito";
                btnTerminarInforme.Visible = false;
            }
            lblIdInforme.Text = Session["SessionIDInforme"].ToString();



        }

        protected void btnAgregarInforme_Click(object sender, EventArgs e)
        {
            bool estado = false;
            int IdInforme =Convert.ToInt32(Session["SessionIDInforme"]);
           estado= neg.AgregarComensal(txtDNIComensal.Text, IdInforme, Convert.ToInt32(txtEdadComensal.Text), txtNombreComensal.Text, txtApellidoComensal.Text, txtTelefonoComensal.Text);

            if (estado) { 
                btnTerminarInforme.Visible = true;
                lblmensaje1.Text = "Comensal cargado";
                limpiar();

            }
        }

        public void limpiar()
        {
            txtApellidoComensal.Text = "";
            txtDNIComensal.Text = "";
            txtEdadComensal.Text = "";
            txtNombreComensal.Text = "";
            txtTelefonoComensal.Text = "";
        }

        protected void btnTerminarInforme_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Administrador/CargarInforme.aspx");
        }
    }
}