using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class ArticuloXProveedor
    {
        string Cod_AxP;
        string Cuit_AxP;
        string CodArt_AxP;
        decimal PrecioUnitario_AxP;
        int Stock_AxP;

        public ArticuloXProveedor() { }
        public string getCod_AxP()
        {
            return Cod_AxP;
        }
        public void setCod_AxP(string cod_AxP)
        {
            Cod_AxP = cod_AxP;
        }
        public string getCuit_AxP()
        {
            return Cuit_AxP;
        }
        public void setCuit_AxP(string cuit_AxP)
        {
            Cuit_AxP = cuit_AxP;
        }
        public string getCodArt_AxP()
        {
            return CodArt_AxP;
        }
        public void setCodArt_AxP(string codArt_AxP)
        {
            CodArt_AxP = codArt_AxP;
        }
        public decimal getPrecioUnitario_AxP()
        {
            return PrecioUnitario_AxP;
        }
        public void setImagen_CA(decimal precioUnitario_AxP)
        {
            PrecioUnitario_AxP = precioUnitario_AxP;
        }
        public int getStock_AxP()
        {
            return Stock_AxP;
        }
        public void setImagen_CA(int stock_AxP)
        {
            Stock_AxP = stock_AxP;
        }
    }
}