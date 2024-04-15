using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Presentacion.Vistas
{
    public partial class Admin : System.Web.UI.Page
    {
        VentasNegocio VN = new VentasNegocio();
        ArticulosNegocios AN = new ArticulosNegocios();

        int mes = DateTime.Now.Month;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["NombreUsuario"] != null)
                {
                    lblLogin.Text = Session["NombreUsuario"].ToString();
                }

                cargarTablas(mes);
            }
        }
        public void cargarTablas(int mes)
        {
            cargarTablaEditarArticulos();
            cargarTablaVentas();
            cargarTablaVentasMes();
            cargarTablaVentasMarcasMes();
            cargarTablaVentasCatMes();

        }
        public void cargarTablaEditarArticulos()
        {
            grdEditarArticulos.DataSource = VN.getTablaEditarArticulos();
            grdEditarArticulos.DataBind();
        }
        public void cargarTablaVentas()
        {
            grdVentas.DataSource = VN.getTablaVentas();
            grdVentas.DataBind();
        }
        public void cargarTablaVentasMes()
        {
            grdVentasMes.DataSource = VN.getTablaVentasMes(mes);
            grdVentasMes.DataBind();
        }
        public void cargarTablaVentasMarcasMes()
        {
            grdVentasMarcaMes.DataSource = VN.getTablaVentasMarcasMes(mes);
            grdVentasMarcaMes.DataBind();
        }
        public void cargarTablaVentasCatMes()
        {
            grdVentasCatMes.DataSource = VN.getTablaVentasCatMes(mes);
            grdVentasCatMes.DataBind();
        }

        protected void grdEditarArticulos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            String codArticulo = ((Label)grdEditarArticulos.Rows[e.RowIndex].FindControl("lblCodArticulo")).Text;

            AN.eliminarArticulo(codArticulo);
        }

        protected void grdEditarArticulos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdEditarArticulos.EditIndex = e.NewEditIndex;
            cargarTablaEditarArticulos();
        }

        protected void grdEditarArticulos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdEditarArticulos.EditIndex = -1;
            cargarTablaEditarArticulos();
        }

        protected void grdEditarArticulos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Articulos Art = new Articulos();

            String codArticulo =  ((Label)grdEditarArticulos.Rows[e.RowIndex].FindControl("lblCodArticulo")).Text;
            String codCategoria = ((TextBox)grdEditarArticulos.Rows[e.RowIndex].FindControl("txtCodCategoria")).Text;
            String Nombre = ((TextBox)grdEditarArticulos.Rows[e.RowIndex].FindControl("txtNombre")).Text;
            String Stock = ((TextBox)grdEditarArticulos.Rows[e.RowIndex].FindControl("txtStock")).Text;
            String PU = ((TextBox)grdEditarArticulos.Rows[e.RowIndex].FindControl("txtPU")).Text;
            String Estado = ((TextBox)grdEditarArticulos.Rows[e.RowIndex].FindControl("txtEstado")).Text;
            String Imagen = ((TextBox)grdEditarArticulos.Rows[e.RowIndex].FindControl("txtImagen")).Text;

            Art.setCatCod_ART(codArticulo);
            Art.setCatCod_ART(codCategoria);
            Art.setNombre_ART(Nombre);
            Art.setPrecio_ART(Convert.ToDecimal(PU));
            Art.setEstado_ART(Convert.ToBoolean(Estado));
            Art.setImg_ART(Imagen);

            AN.actualizarArticulos(Art, Stock);
        }

        protected void grdEditarArticulos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdEditarArticulos.PageIndex = e.NewPageIndex;
            cargarTablaEditarArticulos();
        }

        protected void btnEnero_Click(object sender, EventArgs e)
        {
            mes = 1;
        }

        protected void btnFebrero_Click(object sender, EventArgs e)
        {
            mes = 2;
        }

        protected void btnMarzo_Click(object sender, EventArgs e)
        {
            mes = 3;
        }

        protected void btnAbril_Click(object sender, EventArgs e)
        {
            mes = 4;
        }

        protected void btnMayo_Click(object sender, EventArgs e)
        {
            mes = 5;
        }

        protected void btnJunio_Click(object sender, EventArgs e)
        {
            mes = 6;
        }

        protected void btnJulio_Click(object sender, EventArgs e)
        {
            mes = 7;
        }

        protected void btnAgosto_Click(object sender, EventArgs e)
        {
            mes = 8;
        }

        protected void btnSeptiembre_Click(object sender, EventArgs e)
        {
            mes = 9;
        }

        protected void btnOctubre_Click(object sender, EventArgs e)
        {
            mes = 10;
        }

        protected void btnNoviembre_Click(object sender, EventArgs e)
        {
            mes = 11;
        }

        protected void btnDiciembre_Click(object sender, EventArgs e)
        {
            mes = 12;
        }
    }
}