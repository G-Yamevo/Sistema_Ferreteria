using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using DAO;

namespace DAO
{
    public class DatosProvincias
    {
        AccesoDatos ds = new AccesoDatos();
        public DataTable obtenerTablaProvincias()
        {
            string consulta = "SELECT * FROM PROVINCIAS";

            return ds.ObtenerTabla("Provincias", consulta);
        }
    }
}
