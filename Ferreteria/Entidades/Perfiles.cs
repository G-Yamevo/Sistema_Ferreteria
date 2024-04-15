using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Perfiles
    {
        string Cod_PER;
        string Nombre_PER;

        public Perfiles() { }
        public string getCod_PER()
        {
            return Cod_PER;
        }
        public void setCod_PER(string cod_PER)
        {
            Cod_PER = cod_PER;
        }
        public string getNombre_PER()
        {
            return Nombre_PER;
        }
        public void setNombre_PER(string nombre_PER)
        {
            Nombre_PER = nombre_PER;
        }
    }
}