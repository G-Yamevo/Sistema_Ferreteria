using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;
using DAO;

namespace Negocio
{
    public class ArticulosNegocios
    {
        AccesoDatos dao = new AccesoDatos();
        DatosArticulos da = new DatosArticulos();
        string consultaTotal = ("select Cod_ART, MarcaCod_ART, CatCod_ART, Nombre_ART, Descripcion_ART,Precio_ART,Imagen_ART from Articulos");
        public DataTable getTabla(string consulta)
        {
            if (consulta == "todo")
            {
                return dao.ObtenerTabla("Articulos", consultaTotal);
            }
            else return dao.ObtenerTabla("Articulos", consulta);
        }

        public string armarConsultaXNombreArt(string i)
        {
            string consulta = "select Cod_ART, MarcaCod_ART, CatCod_ART, Nombre_ART, Descripcion_ART,Precio_ART,Imagen_ART from articulos where Nombre_ART LIKE '%" + i + "%'";
            return consulta;
        }

        public string armarConsultaFiltradoXPrecio(decimal p1, decimal p2)
        {
            string consulta = "select Cod_ART, MarcaCod_ART, CatCod_ART, Nombre_ART, Descripcion_ART,Precio_ART,Imagen_ART from articulos where Precio_ART >= " + p1 + "and Precio_ART<=" + p2;
            return consulta;
        }
        public string armarConsultaFiltradoCategoria(string i)
        {
            string consulta = "select Cod_ART, MarcaCod_ART, CatCod_ART, Nombre_ART, Descripcion_ART,Precio_ART,Imagen_ART from articulos where CatCod_ART LIKE '%" + i + "%'";
            return consulta;
        }

        public Articulos buscarArticulo(string articuloVer)
        {
            Articulos articulo = new Articulos();
            articulo.setCod_ART(articuloVer);
            da.getArticulo(articulo);
            return articulo;
        }
        public DataTable crearTablaArticulos()
        {
            return da.crearTabla();
        }
        public void agregarFilaDataTable(DataTable parte1,string consulta, string cantidad)
        {
           da.agregarFila(parte1,dao.ObtenerTabla("Articulos", consulta),cantidad);
        }

        public bool buscarRepetido(DataTable parte1, string consulta)
        {
           return da.verSiYaEsta(parte1,consulta);
        }
        public void agregarArticuloCarrito(DataTable T1, DataTable T2, int cantidad)
        {
            da.agregarFila(T1, T2, cantidad.ToString());
        }
        public DataTable getTablaCarrito(string consulta)
        {
            return dao.ObtenerTabla("TablaCarrito", consulta);
        }

        public void eliminarArticulo(string codArt)
        {
            string consulta = "DELETE FROM ARTICULOS WHERE Cod_ART = " + codArt;
            dao.EjecutarConsulta(consulta);
        }
        public void actualizarArticulos(Articulos art, string PU)
        {
            string consulta = "UPDATE ARTICULOS AND ARTXPROV SET CatCod_ART = '" + art.getCatCod_ART() + "', Nombre_ART = '" + art.getNombre_ART() + "', Stock_AxP = '" + PU + "', Precio_ART = '" + art.getPrecio_ART() + "', Estado_ART = '" + art.getEstado_ART() + "', Imagen_ART = '" + art.getImg_ART() + "' WHERE Cod_ART = '" + art.getCod_ART()+ "'";

            dao.EjecutarConsulta(consulta);
        }
    }
}
