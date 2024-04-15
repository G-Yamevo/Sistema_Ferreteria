using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class MedioPagos
    {
        string Cod_MP;
        string Nombre_MP;
        string Detalles_MP;

        public MedioPagos() { }
        public string getCod_MP()
        {
            return Cod_MP;
        }
        public void setCod_MP(string cod_MP)
        {
            Cod_MP = cod_MP;
        }
        public string getNombre_MP()
        {
            return Nombre_MP;
        }
        public void setNombre_MP(string nombre_MP)
        {
            Nombre_MP = nombre_MP;
        }
        public string getDetalles_MP()
        {
            return Detalles_MP;
        }
        public void setDescripcion_MA(string detalles_MP)
        {
            Detalles_MP = detalles_MP;
        }
    }
}