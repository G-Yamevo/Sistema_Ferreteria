using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;


namespace DAO
{
    public class DatosArticulos
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable crearTabla()
        {
        
            DataTable dt = new DataTable();
            DataColumn columna = new DataColumn("Cod_ART", System.Type.GetType("System.String"));
            dt.Columns.Add(columna);
            columna = new DataColumn("Nombre_ART", System.Type.GetType("System.String"));
            dt.Columns.Add(columna);
            columna = new DataColumn("Precio_ART", System.Type.GetType("System.Decimal"));
            dt.Columns.Add(columna);
            columna = new DataColumn("Imagen_ART", System.Type.GetType("System.String"));
            dt.Columns.Add(columna);
            columna = new DataColumn("Cantidad", System.Type.GetType("System.String"));
            dt.Columns.Add(columna);

            return dt;
        } 

        public void agregarFila(DataTable tabla1, DataTable tabla2, string cantidad)
        {
            DataRow dr = tabla1.NewRow();
            DataRow drSeleccion = tabla2.Rows[0];
            dr["Cod_ART"] = drSeleccion["Cod_ART"].ToString();
            dr["Nombre_ART"] = drSeleccion["Nombre_ART"].ToString();
            dr["Precio_ART"] = drSeleccion["Precio_ART"].ToString();
            dr["Imagen_ART"] = drSeleccion["Imagen_ART"].ToString();
            dr["Cantidad"] =  cantidad;
            tabla1.Rows.Add(dr);
        }

        public bool verSiYaEsta(DataTable tabla1, string nombre)
        {
            for (int i = 0; i < tabla1.Rows.Count; i++)
            {
                if (tabla1.Rows[i]["Cod_ART"].ToString() == nombre)
                {
                    return true;
                }

            }
            return false;
        }

        public Articulos getArticulo(Articulos art)
        {
            DataTable tabla = ds.ObtenerTabla("Articulo", "Select * from articulos WHERE Cod_ART LIKE '%" + art.getCod_ART() + "%'");
            art.setCod_ART(tabla.Rows[0][0].ToString());
            art.setMarcaCod_ART(tabla.Rows[0][1].ToString());
            art.setCatCod_ART(tabla.Rows[0][2].ToString());
            art.setNombre_ART(tabla.Rows[0][3].ToString());
            art.setDescripcion_ART(tabla.Rows[0][4].ToString());
            art.setPrecio_ART(Convert.ToDecimal(tabla.Rows[0][5]));
            art.setImg_ART(tabla.Rows[0][6].ToString());
            return art;
        }
    }
}
