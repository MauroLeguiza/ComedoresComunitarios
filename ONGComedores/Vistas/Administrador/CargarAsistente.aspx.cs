using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Negocio;

namespace Vistas.Administrador
{
    public partial class CargarAsistente : System.Web.UI.Page
    {
        NegocioUsuario neg = new NegocioUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            this.Form.Attributes.Add("autocomplete", "off");
            if (Session["SessionString"] != null)
            {
                lblUsuarioLogeado.Text = "Usuario: " + Session["SessionString"].ToString();
            }

        }

        protected void btnAgregarUsuario_Click(object sender, EventArgs e)
        {
         
           if (txtContraseñasAS.Text == txtrepetircontraseña.Text) { 

            string fecha = CalendarFechaIngreso.SelectedDate.ToShortDateString();
            
            if (fecha != "1/1/0001")
            {
               
                    bool estado = neg.AgregarUsuario(txtLegajoAS.Text, txtContraseñasAS.Text, Convert.ToBoolean(ddlNivelUsuario.SelectedValue), txtDNIAS.Text, txtNombreAs.Text, txtApeAS.Text, fecha, txtTelefonoAS.Text, txtDireccionAS.Text, txtEmailAS.Text);

                if (estado)
                {
                    lblMensaje.Text = "Se agrego el usuario con exito";
                }

                else
                {
                    lblMensaje.Text = "Error al cargar usuario";
                }
                LimpiarCampos();
            }
            else
            {
                lblMensaje.Text = "Debe seleccionar una fecha";
            }
            }
           else
            {
                lblmensajecontra.Text = "Las contraseñas deben ser iguales";
                txtContraseñasAS.Text = "";
                txtrepetircontraseña.Text = "";

            }
        }

        public void LimpiarCampos()
        {
            txtApeAS.Text = "";
            txtContraseñasAS.Text= "";
            txtDireccionAS.Text= "";
            txtDNIAS.Text= "";
            txtEmailAS.Text= "";
            txtLegajoAS.Text= "";
            txtNombreAs.Text= "";
            txtTelefonoAS.Text= "";
        }
    }
}