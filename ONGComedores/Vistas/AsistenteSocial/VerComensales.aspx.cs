using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Negocio;

namespace Vistas.AsistenteSocial
{
    public partial class VerComensales : System.Web.UI.Page
    {
        NegocioInforme neg = new NegocioInforme();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Session["SessionId"]);
                grdComensales.DataSource = neg.GetTablaComensales(id);
                grdComensales.DataBind();

            }


        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Session["SessionId"] = null;
            Response.Redirect("~/AsistenteSocial/VerInforme.aspx");
        }
    }
}