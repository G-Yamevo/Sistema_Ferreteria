using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Negocio;


namespace Presentacion
{
    public partial class Inicio : System.Web.UI.Page
    {
        ArticulosNegocios tablaArticulos = new ArticulosNegocios();
        CategoriasNegocios tablaCategorias = new CategoriasNegocios();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NombreUsuario"] != null) { 
                lblLogin.Text = Session["NombreUsuario"].ToString();
            }
            if (IsPostBack == false)
            {
                cargarArticulos();
                cargarCategorias();
            }
        }

        private void cargarArticulos()
        {
            lvArticulos.DataSource = tablaArticulos.getTabla("todo");
            lvArticulos.DataBind();
        }
        

        private void cargarCategorias()
        {
            dlCategorias.DataSource = tablaCategorias.getTabla("SELECT * FROM CATEGORIAS");
            dlCategorias.DataBind();
        }
        protected void dlCategorias_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnseleccionar_Command(object sender, CommandEventArgs e)
        {
            if (Session["ArticulosACarrito"] == null)
            {
                Session["ArticulosACarrito"] = tablaArticulos.crearTablaArticulos();
            }
            if(e.CommandName== "eventbutton")
            {
                string consulta = "select  Cod_ART,Nombre_ART,Precio_ART,Imagen_ART from articulos where Cod_ART ="+ e.CommandArgument.ToString();
                int cantidad;
                if (tablaArticulos.buscarRepetido((DataTable)Session["ArticulosACarrito"], e.CommandArgument.ToString()) == false)
                {
                    cantidad = 1;
                    tablaArticulos.agregarArticuloCarrito((DataTable)Session["ArticulosACarrito"], tablaArticulos.getTablaCarrito(consulta), cantidad);
                    
                    
                }
            }
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtBuscar.Text == "")
            {
                cargarArticulos();
            }
            else
            {
                string consulta = tablaArticulos.armarConsultaXNombreArt(txtBuscar.Text);
                lvArticulos.DataSource = tablaArticulos.getTabla(consulta);
                lvArticulos.DataBind();
            }
        
        }
        protected void lkbDetalles_Command(object sender, CommandEventArgs e)
        {

            Response.Redirect("detalleArticulo.aspx?id=" + e.CommandArgument.ToString());

        }

        protected void brnfiltrar_click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(tbvalorBajo.Text) && !String.IsNullOrEmpty(tbvalorAlto.Text))
            {
                string consulta = tablaArticulos.armarConsultaFiltradoXPrecio(Convert.ToDecimal(tbvalorBajo.Text), Convert.ToDecimal(tbvalorAlto.Text));
                lvArticulos.DataSource = tablaArticulos.getTabla(consulta);
                lvArticulos.DataBind();
            }

        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {

        }

        protected void btnCategorias_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "comandoBotonCategorias")
            {
                string consulta = tablaArticulos.armarConsultaFiltradoCategoria(e.CommandArgument.ToString());
                lvArticulos.DataSource = tablaArticulos.getTabla(consulta);
                lvArticulos.DataBind();
            }
        }

        protected void lvArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}