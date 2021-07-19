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
    public partial class ListadoAsistentes : System.Web.UI.Page
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

            if (!IsPostBack)
            {
               
               grdAsistentes.DataSource= neg.GetTabla();
                grdAsistentes.DataBind();


            }
        }

        protected void grdAsistentes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string Legajo= ((Label)grdAsistentes.Rows[e.RowIndex].FindControl("lbl_it_Legajo")).Text;

                neg.EliminarUsuario(Legajo);

  
                lblMensaje.Text = "Usuario eliminado";
                grdAsistentes.DataBind();
          
        }

        protected void grdAsistentes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMensaje.Text = "";
            grdAsistentes.EditIndex = e.NewEditIndex;
            grdAsistentes.DataSource = neg.GetTabla();
            grdAsistentes.DataBind();
        }

        protected void grdAsistentes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdAsistentes.EditIndex = -1;
            grdAsistentes.DataSource = neg.GetTabla();
            grdAsistentes.DataBind();
        }

        protected void grdAsistentes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

           
            string leg, Contra, email, Direccion, telefono;
            leg= ((Label)grdAsistentes.Rows[e.RowIndex].FindControl("lbl_eit_Legajo")).Text;
            Contra= ((TextBox)grdAsistentes.Rows[e.RowIndex].FindControl("txt_eit_Contraseña")).Text;
            email= ((TextBox)grdAsistentes.Rows[e.RowIndex].FindControl("txt_eit_Email")).Text;
            Direccion= ((TextBox)grdAsistentes.Rows[e.RowIndex].FindControl("txt_eit_Direccion")).Text;
            telefono= ((TextBox)grdAsistentes.Rows[e.RowIndex].FindControl("txt_eit_Telefono")).Text;


            neg.EditUsuario(leg, Contra, email, Direccion, telefono);
            grdAsistentes.EditIndex = -1;
            grdAsistentes.DataSource = neg.GetTabla();
            grdAsistentes.DataBind();
            limpiar();
        }

        protected void btnLegajo_Click(object sender, EventArgs e)
        {
            bool estado = false;
            
            estado = neg.ExisteLegajo(txtLegajo.Text);

            if (estado) { 
            grdAsistentes.DataSource=neg.GetTablaLegajo(txtLegajo.Text);
            grdAsistentes.DataBind();
            }
            else
            {
                lblMensajeLegajo.Text = "El legajo no existe";
            }
            limpiar();

        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            
            grdAsistentes.DataSource = neg.GetTabla();
            grdAsistentes.DataBind();
            limpiar();
        }

        protected void btnFiltrar2_Click(object sender, EventArgs e)
        {
            bool estado = false;
            
            estado = neg.ExisteApellido(txtApellido.Text);

                if(estado) 
            { 

            grdAsistentes.DataSource = neg.GetTablaApellido(txtApellido.Text);
            grdAsistentes.DataBind();

            }
                else
            {
                lblMensajeApellido.Text = "No existe el Apellido";
               
            }
            limpiar();
        }

        public void limpiar()
        {
            txtApellido.Text = "";
            txtLegajo.Text = "";
            lblMensajeApellido.Text = "";
            lblMensajeLegajo.Text = "";
        }
    }
}