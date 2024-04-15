using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class DetalleVenta
    {
        int CodVenta_DV;
        string CodArtxProv_DV;
        int Unidades_DV;
        decimal PrecioUnitario_DV;

        public DetalleVenta() { }
        public int getCodVenta_DV()
        {
            return CodVenta_DV;
        }
        public void setCod_CA(int codVenta_DV)
        {
            CodVenta_DV = codVenta_DV;
        }
        public string getCodArtxProv_DV()
        {
            return CodArtxProv_DV;
        }
        public void setCodArtxProv_DV(string codArtxProv_DV)
        {
            CodArtxProv_DV = codArtxProv_DV;
        }
        public int getUnidades_DV()
        {
            return Unidades_DV;
        }
        public void setUnidades_DV(int unidades_DV)
        {
            Unidades_DV = unidades_DV;
        }
        public decimal getPrecioUnitario_DV()
        {
            return PrecioUnitario_DV;
        }
        public void setImagen_CA(decimal precioUnitario_DV)
        {
            PrecioUnitario_DV = precioUnitario_DV;
        }
    }
}