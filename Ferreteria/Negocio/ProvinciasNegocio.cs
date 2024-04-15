using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using System.Data;

namespace Negocio
{
    public class ProvinciasNegocio
    {
        public DataTable getTablaProvincias()
        {
            DatosProvincias DA = new DatosProvincias();

            return DA.obtenerTablaProvincias();
        }
    }
}
