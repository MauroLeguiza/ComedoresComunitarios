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
    public partial class OlvideContraseña : System.Web.UI.Page
    {
        NegocioUsuario neg = new NegocioUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            this.Form.Attributes.Add("autocomplete", "off");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (txtNuevaContra.Text == txtRepitaContra.Text)
            {
                bool estado1 = neg.ExisteLegajo(txtLegajo.Text);

                if (estado1)
                {
                    bool estado = neg.ModificarContraseñaUsuario(txtLegajo.Text, txtRepitaContra.Text);

                    if (estado)
                    {
                        lblMensaje.Text = "Contraseña cambiada";
                        Response.Redirect("~/Login.aspx");
                    }
                    else
                    {
                        lblMensaje.Text = "Error al cambiar contraseña";
                        limpiar();
                    }

                }

                else
                {
                    lblMensaje.Text = "El legajo no existe";
                    limpiar();
                }
            }
            else
            {
                lblMensaje.Text = "Las contraseñas no coinciden";
                limpiar();
            }

        }

        public void limpiar()
        {
            txtLegajo.Text = "";
            txtNuevaContra.Text = "";
            txtRepitaContra.Text = "";
        }
    }
}