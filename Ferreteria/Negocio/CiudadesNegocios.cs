using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using System.Data;

namespace Negocio
{
    public class CiudadesNegocios
    {
        public DataTable getTablaCiudades()
        {
            DatosCiudades DA = new DatosCiudades();

            return DA.obtenerTablaCiudades();
        }
        public DataTable getTablaCiudadesXProv(string prov)
        {
            DatosCiudades DA = new DatosCiudades();

            return DA.obtenerTablaCiudadesXProv(prov);
        }
    }
}
