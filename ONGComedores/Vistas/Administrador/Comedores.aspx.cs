using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;

namespace Vistas.Administrador
{
    public partial class Comedores : System.Web.UI.Page
    {
        NegocioComedor neg = new NegocioComedor();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionString"] != null)
            {
                lblUsuarioLogeado.Text = "Usuario: " + Session["SessionString"].ToString();
              
            }


            if (!IsPostBack) { 

            dlProvinciasADMIN.DataSource = neg.MostrarProvincias();
            dlProvinciasADMIN.DataBind();
            grvComedores.DataSource= neg.GetTabla();
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
                grvComedores.DataSource= neg.getComeProvincia(e.CommandArgument.ToString());
                grvComedores.DataBind();
            }
        }

        protected void btnMostrarTodo_Click(object sender, EventArgs e)
        {
            
            grvComedores.DataSource = neg.GetTabla();
            grvComedores.DataBind();
            lblMensaje.Text = "";

              

        }


        protected void grvComedores_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            lblMensaje.Text = "";
            bool estado = false;
            string s_IdCome = ((Label)grvComedores.Rows[e.RowIndex].FindControl("lbl_it_ID")).Text;

            estado = neg.EliminarComedor(Convert.ToInt32(s_IdCome));

            if (estado)
            {
                
                lblMensaje.Text = "Comedor eliminado";
            }
            else
            {
                lblMensaje.Text = "Error al eliminar comedor";
            }
        }

        protected void grvComedores_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMensaje.Text = "";
            grvComedores.EditIndex = e.NewEditIndex;
            grvComedores.DataSource = neg.GetTabla();
            grvComedores.DataBind();

        }

        protected void grvComedores_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvComedores.EditIndex = -1;
            grvComedores.DataSource = neg.GetTabla();
            grvComedores.DataBind();
        }

        protected void grvComedores_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            bool estado = false;
          
            string idcome = ((Label)grvComedores.Rows[e.RowIndex].FindControl("lbl_eit_ID")).Text;
            string telefono= ((TextBox)grvComedores.Rows[e.RowIndex].FindControl("txt_eit_Telefono")).Text;

            estado = neg.ActualizarComedor(Convert.ToInt32(idcome), telefono);
            grvComedores.EditIndex = -1;
            grvComedores.DataSource = neg.GetTabla();
            grvComedores.DataBind();


            if (estado)
                lblMensaje.Text = "Se actualizo la informacion";
            else

                lblMensaje.Text = "Error al actualizar";


        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            grvComedores.DataSource = neg.getCome(Convert.ToInt32(txtFiltrar.Text));
            grvComedores.DataBind();
            txtFiltrar.Text = "";
        }

        protected void grvComedores_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "EventoServicios")
            {
                cbServicios.ClearSelection();
                
                int fila = Convert.ToInt32(e.CommandArgument);
                int id= Convert.ToInt32(((Label)grvComedores.Rows[fila].FindControl("lbl_eit_ID")).Text);
                DataTable servicios= neg.NombreServicios(id);

                foreach (DataRow serv in servicios.Rows) { 
                foreach(ListItem ch in cbServicios.Items)
                {
                        if (ch.Text == serv["Nombre_Servicio"].ToString())
                            ch.Selected=true;



                        }
                }
                lbl_id_comedor.Text ="ID de Comedor: " + id.ToString();
                cbServicios.DataBind();
                
            }
            }

    }
    }
