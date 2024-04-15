using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAO
{
    public class DatosVentas
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable ObtenerTablaEditarArticulos()
        {
            string consulta = "SELECT Cod_ART AS CodArticulo, CatCod_ART AS CodCategoria, Nombre_ART AS Nombre, Stock_AXP AS Stock, Precio_ART AS PrecioUnitario, Estado_ART AS Estado, Imagen_ART AS Imagen " +
                "FROM ARTICULOS INNER JOIN ARTXPROV " +
                "ON ARTICULOS.Cod_ART = ARTXPROV.Cod_AxP";

            return ds.ObtenerTabla("TEditarArticulos", consulta);
        }

        public DataTable obtenerTablaVentas()
        {
            string consulta = "SELECT * FROM VENTAS";

            return ds.ObtenerTabla("TVentas", consulta);
        }
        public DataTable obtenerTablaVentasMes(int mes)
        {
            string consulta = "SELECT DISTINCT Fecha_V AS Fecha, CodArtxProv_DV AS CodProducto, Nombre_ART AS Nombre, Descripcion_ART AS Descripcion, (SELECT SUM(Unidades_DV) FROM DETALLEVENTAS WHERE CodArtxProv_DV = CodArtxProv_DV) AS CantTotalVendida " +
                "FROM VENTAS INNER JOIN DETALLEVENTAS " +
                "ON VENTAS.Cod_V = DETALLEVENTAS.CodVenta_DV " +
                "INNER JOIN ARTICULOS " +
                "ON DETALLEVENTAS.CodArtxProv_DV = ARTICULOS.Cod_ART " +
                "WHERE MONTH(FECHA_V) =  " + mes;

            return ds.ObtenerTabla("TVentasMes", consulta);
        }
        public DataTable obtenerTablaVentasMarcasMes(int mes)
        {
            string consulta = "SELECT DISTINCT Fecha_V AS Fecha, Cod_MA AS CodMarca, Nombre_MA AS Nombre, Descripcion_MA AS Descripcion, (SELECT SUM(Unidades_DV) FROM DETALLEVENTAS WHERE CodArtxProv_DV = CodArtxProv_DV) AS CantTotalVendida " +
                "FROM VENTAS INNER JOIN DETALLEVENTAS " +
                "ON VENTAS.Cod_V = DETALLEVENTAS.CodVenta_DV " +
                "INNER JOIN ARTICULOS " +
                "ON DETALLEVENTAS.CodArtxProv_DV = Cod_ART " +
                "INNER JOIN MARCAS " +
                "ON ARTICULOS.MarcaCod_ART = MARCAS.Cod_MA " +
                "WHERE MONTH(FECHA_V) =  " + mes;

            return ds.ObtenerTabla("TVentasMarcasMes", consulta);
        }
        public DataTable obtenerTablaVentasCatMes(int mes)
        {
            string consulta = "SELECT DISTINCT Fecha_V AS Fecha, CatCod_ART AS CodCategoria, Nombre_CA AS Nombre, Descripcion_CA AS Descripcion, (SELECT SUM(Unidades_DV) FROM DETALLEVENTAS WHERE CodArtxProv_DV = CodArtxProv_DV) AS CantTotalVendida " +
                "FROM VENTAS INNER JOIN DETALLEVENTAS " +
                "ON VENTAS.Cod_V = DETALLEVENTAS.CodVenta_DV " +
                "INNER JOIN ARTICULOS " +
                "ON DETALLEVENTAS.CodArtxProv_DV = Cod_ART " +
                "INNER JOIN CATEGORIAS " +
                "ON ARTICULOS.CatCod_ART = CATEGORIAS.Cod_CA " +
                "WHERE MONTH(FECHA_V) = "+mes;

            return ds.ObtenerTabla("TVentasCatMes", consulta);
        }
    }
}
