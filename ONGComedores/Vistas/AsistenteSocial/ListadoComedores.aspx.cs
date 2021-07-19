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
    public partial class ListadoComedores : System.Web.UI.Page
    {
        NegocioComedor neg = new NegocioComedor();
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
                dlProvinciasASIS.DataSource = neg.MostrarProvincias();
                dlProvinciasASIS.DataBind();
                grvComedores.DataSource = neg.GetTabla();
                grvComedores.DataBind();

                cbServicios.DataSource = neg.MostrarServicios();
                cbServicios.DataTextField = "Nombre_Servicio";
                cbServicios.DataValueField = "ID_Servicio";
                cbServicios.DataBind();

            }

        }


        protected void btnProvincias_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "EventoProvincia")
            {
                lblMensaje.Text = "";
                grvComedores.DataSource = neg.getComeProvincia(e.CommandArgument.ToString());
                grvComedores.DataBind();
            }
        }

        protected void btnMostrarTodo_Click(object sender, EventArgs e)
        {
            grvComedores.DataSource = neg.GetTabla();
            grvComedores.DataBind();
            lblMensaje.Text = "";


        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            grvComedores.DataSource = neg.getCome(Convert.ToInt32(txtFiltrar.Text));
            grvComedores.DataBind();
            txtFiltrar.Text = "";
        }

        protected void grvComedores_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EventoServicios")
            {
                cbServicios.ClearSelection();

                int fila = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(((Label)grvComedores.Rows[fila].FindControl("lbl_it_ID")).Text);
                DataTable servicios = neg.NombreServicios(id);

                foreach (DataRow serv in servicios.Rows)
                {
                    foreach (ListItem ch in cbServicios.Items)
                    {
                        if (ch.Text == serv["Nombre_Servicio"].ToString())
                            ch.Selected = true;



                    }
                }
                //lbl_id_comedor.Text = "ID de Comedor: " + id.ToString();
                cbServicios.DataBind();
            }
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            txtFiltrar.Text = "";
            grvComedores.DataSource = neg.GetTabla();
            grvComedores.DataBind();
        }
    }
}