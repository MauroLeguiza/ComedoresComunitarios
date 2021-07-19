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
    public partial class CargarComedor : System.Web.UI.Page
    {
        NegocioComedor neg = new NegocioComedor();
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
                DataTable DropProvincias = neg.MostrarProvincias();
                ddlProvincias.AppendDataBoundItems = true;
                ddlProvincias.Items.Add("Seleccione...");
                ddlProvincias.DataSource = DropProvincias;
                ddlProvincias.DataTextField = "Nombre_Provincia";
                ddlProvincias.DataValueField = "Id_Provincia";
                ddlProvincias.DataBind();

                ddlClasificacion.DataSource = neg.MostrarClasificaciones();
                ddlClasificacion.DataTextField ="Nombre_Clasificacion";
                ddlClasificacion.DataValueField ="Id_Clasificacion";
                ddlClasificacion.DataBind();

                cblServicios.DataSource = neg.MostrarServicios();
                cblServicios.DataTextField = "Nombre_Servicio";
                cblServicios.DataValueField = "Id_Servicio";
                cblServicios.DataBind();

                
                
                
            }
 
        }

        protected void ddlProvincias_SelectedIndexChanged(object sender, EventArgs e)
        {

            ddlProvincias.Items.Remove("Seleccione...");
            DataTable DropLocalidades = neg.MostrarLocalidades(ddlProvincias.SelectedValue);
            ddlLocalidades.DataSource = DropLocalidades;
            ddlLocalidades.DataTextField = "Nombre_Localidad";
            ddlLocalidades.DataValueField = "Id_Localidad";
            ddlLocalidades.DataBind();
            
        }

        protected void btnAgregarComedor_Click(object sender, EventArgs e)
        {
            
            bool Estado = neg.AgregarComedor(txtCUIT.Text, ddlProvincias.SelectedValue, ddlLocalidades.SelectedValue, ddlClasificacion.SelectedValue, txtDireccionCome.Text, txtTelefonoComedor.Text);
       
            if (Estado) { 
            foreach (ListItem item in cblServicios.Items)
            {
                if (item.Selected == true)
                {
                    neg.AgregarInfraestructura(item.Value.ToString());
                       
                    }

            }
                Label1.Text = "Se guardo el comedor";
                limpiar();
                cblServicios.ClearSelection();
               
            }
            else
            {
                Label1.Text = "Error al cargar comedor";
            }
        }

        public void limpiar()
        {
            txtCUIT.Text = "";
            txtDireccionCome.Text = "";
            txtTelefonoComedor.Text = "";

        }
    }
}