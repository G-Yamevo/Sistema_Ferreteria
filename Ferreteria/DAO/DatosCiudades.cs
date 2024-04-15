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
    public class DatosCiudades
    {
        AccesoDatos ds = new AccesoDatos();
        public DataTable obtenerTablaCiudades()
        {
            string consulta = "SELECT * FROM CIUDADES";

            return ds.ObtenerTabla("Ciudades", consulta);
        }
        public DataTable obtenerTablaCiudadesXProv(string prov)
        {
            string consulta = "SELECT * FROM CIUDADES WHERE CodProvincia_CIU=" + prov;

            return ds.ObtenerTabla("Ciudades", consulta);
        }

    }
}
