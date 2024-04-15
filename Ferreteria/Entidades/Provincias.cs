using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Provincias
    {
        int Cod_PCIAS;
        string Nombre_PCIAS;

        public Provincias() { }
        public int getCod_PCIAS()
        {
            return Cod_PCIAS;
        }
        public void setCod_PCIAS(int cod_PCIAS)
        {
            Cod_PCIAS = cod_PCIAS;
        }
        public string getNombre_PCIAS()
        {
            return Nombre_PCIAS;
        }
        public void setNombre_PCIAS(string nombre_PCIAS)
        {
            Nombre_PCIAS = nombre_PCIAS;
        }
    }
}