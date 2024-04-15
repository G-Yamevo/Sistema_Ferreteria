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

namespace Presentacion.Vistas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ArticulosNegocios tablaArticulos = new ArticulosNegocios();
        Articulos nuevoArticulo = new Articulos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NombreUsuario"] != null)
            {
                lblLogin.Text = Session["NombreUsuario"].ToString();
            }
            String articuloVer = Request.QueryString["id"].ToString();
            if (!IsPostBack)
            {
                mostrarDetalleArticulo(articuloVer);
            }
        }
        private void mostrarDetalleArticulo(string articuloVer)
        {
            nuevoArticulo = tablaArticulos.buscarArticulo(articuloVer);
            lbNombre.Text = nuevoArticulo.getNombre_ART();
            lbCategoria.Text = nuevoArticulo.getCatCod_ART();
            lbMarca.Text = nuevoArticulo.getMarcaCod_ART();
            lbPrecio.Text = nuevoArticulo.getPrecio_ART().ToString();
            Image1.ImageUrl = nuevoArticulo.getImg_ART();
        }
        protected void btnAgregarCarrito(object sender, EventArgs e)
        {
            if(Session["ArticulosACarrito"] == null)
            {
                Session["ArticulosACarrito"] = tablaArticulos.crearTablaArticulos();
            }
            string consulta = "select  Cod_ART,Nombre_ART,Precio_ART,Imagen_ART from articulos where Cod_ART =" + Request.QueryString["id"].ToString() ;
            if(tablaArticulos.buscarRepetido((DataTable)Session["ArticulosACarrito"], Request.QueryString["id"].ToString())==false)
            {
                tablaArticulos.agregarFilaDataTable((DataTable)Session["ArticulosACarrito"], consulta,TextBox1.Text);
            }
        }
    }
}