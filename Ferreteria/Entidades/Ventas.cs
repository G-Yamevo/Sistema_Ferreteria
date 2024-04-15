using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Ventas
    {
        int Cod_V;
        string CuitCli_V;
        string MedioPago_V;
        string Fecha_V;
        decimal Total_V;
        

        public Ventas() { }
        public int getCod_V()
        {
            return Cod_V;
        }
        public void setCod_V(int cod_V)
        {
            Cod_V = cod_V;
        }
        public string getCuitCli_V()
        {
            return CuitCli_V;
        }
        public void setCuitCli_V(string cuitCli_V)
        {
            CuitCli_V = cuitCli_V;
        }
        public string getMedioPago_V()
        {
            return MedioPago_V;
        }
        public void setMedioPago_V(string medioPago_V)
        {
            MedioPago_V = medioPago_V;
        }
        public string getFecha_V()
        {
            return Fecha_V;
        }
        public void setFecha_V(string fecha_V)
        {
            Fecha_V = fecha_V;
        }
        public decimal getTotal_V()
        {
            return Total_V;
        }
        public void setTotal_V(decimal total_V)
        {
            Total_V = total_V;
        }
    }
}