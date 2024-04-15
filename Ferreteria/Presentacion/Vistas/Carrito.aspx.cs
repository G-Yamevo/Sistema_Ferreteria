using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using Negocio;
using Entidades;

namespace Presentacion
{
    public partial class Carrito : System.Web.UI.Page
    {
        ArticulosNegocios tablaArticulos = new ArticulosNegocios();
        Articulos nuevoArticulo = new Articulos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NombreUsuario"] != null)
            {
                lblLogin.Text = Session["NombreUsuario"].ToString();
            }
            else 
            {
                if (Session["ArticulosACarrito"] == null)
                {
                    lbCarritoVacio.Text = "SU CARRITO ESTA VACIO!!";
                    btnConfirmarCompra.Visible = false;
                    lblTotal.Visible = false;
                }
                else 
                {
                    lbCarritoVacio.Visible = false;
                    btnConfirmarCompra.Visible = true;
                    lblTotal.Visible = true;
                }
                grdCarrito.DataSource = Session["ArticulosACarrito"];
                grdCarrito.DataBind();

                calcularTotal();
            }
        }
        public void calcularTotal()
        {
            decimal sumatoria = 0;
            for (int i = 0; i < grdCarrito.Rows.Count; i++)
            {
                sumatoria += Convert.ToDecimal(grdCarrito.Rows[i].Cells[4].Text) * Convert.ToDecimal(grdCarrito.Rows[i].Cells[5].Text);
            }
            lblTotal.Text = Convert.ToString(sumatoria);
        }

        protected void gridview_rowdeleting(object sender, GridViewDeleteEventArgs e)
        {
            ((DataTable)Session["ArticulosACarrito"]).Rows[e.RowIndex].Delete();

            grdCarrito.EditIndex = -1;

            grdCarrito.DataSource = Session["ArticulosACarrito"];
            grdCarrito.DataBind();

            calcularTotal();
        }

    }
}