using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Marcas
    {
        string Cod_MA;
        string Nombre_MA;
        string Descripcion_MA;
        string Imagen_MA;

        public Marcas() { }
        public string getCod_MA()
        {
            return Cod_MA;
        }
        public void setCod_MA(string cod_MA)
        {
            Cod_MA = cod_MA;
        }
        public string getNombre_MA()
        {
            return Nombre_MA;
        }
        public void setNombre_MA(string nombre_MA)
        {
            Nombre_MA = nombre_MA;
        }
        public string getDescripcion_MA()
        {
            return Descripcion_MA;
        }
        public void setDescripcion_MA(string descripcion_MA)
        {
            Descripcion_MA = descripcion_MA;
        }
        public string getImagen_MA()
        {
            return Imagen_MA;
        }
        public void setImagen_MA(string imagen_MA)
        {
            Imagen_MA = imagen_MA;
        }
    }
}