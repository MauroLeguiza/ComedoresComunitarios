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
    public partial class Login : System.Web.UI.Page
    {
        NegocioUsuario user = new NegocioUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
        
            Session["SessionString"] = null;
            Session["SessionLegajo"] = null;


        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            bool estado=user.ExisteUsuario(txtUsuario.Text, txtContra.Text);
            if (estado)
            {
                
                string nombre= user.GetNombreUsuario(txtUsuario.Text);
                string Legajo = txtUsuario.Text;
                Session["SessionString"] = nombre;
                Session["SessionLegajo"] = Legajo;
                estado = user.UsuarioAdministrador(txtUsuario.Text);
                if(estado)
                Response.Redirect("~/Administrador/MenuAdministrador.aspx");
                else
                Response.Redirect("~/AsistenteSocial/MenuAsistente.aspx");

            }
            else
            {
                limpiar();
                lblMensajeLogin.Text = "Legajo o Contraseña incorrectos";
            }
        }

        public void limpiar()
        {
            txtUsuario.Text = "";
            txtContra.Text = "";
        }
    }
}