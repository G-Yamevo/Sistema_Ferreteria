using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAO;

namespace Negocio
{
    public class VentasNegocio
    {
            public DataTable getTablaEditarArticulos()
            {
                DatosVentas DA = new DatosVentas();

                return DA.ObtenerTablaEditarArticulos();
            }
            public DataTable getTablaVentas()
            {
                DatosVentas DA = new DatosVentas();

                return DA.obtenerTablaVentas();
            }
            public DataTable getTablaVentasMes(int mes)
            {
                DatosVentas DA = new DatosVentas();

                return DA.obtenerTablaVentasMes(mes);
            }
            public DataTable getTablaVentasMarcasMes(int mes)
            {
                DatosVentas DA = new DatosVentas();

                return DA.obtenerTablaVentasMarcasMes(mes);
            }
            public DataTable getTablaVentasCatMes(int mes)
            {
                DatosVentas DA = new DatosVentas();

                return DA.obtenerTablaVentasCatMes(mes);
            }
    }
}
