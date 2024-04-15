using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Categorias
    {
        string Cod_CA;
        string Nombre_CA;
        string Descripcion_CA;
        string Imagen_CA;

        public Categorias() { }
        public string getCod_CA()
        {
            return Cod_CA;
        }
        public void setCod_CA(string cod_CA)
        {
            Cod_CA = cod_CA;
        }
        public string getNombre_CA()
        {
            return Nombre_CA;
        }
        public void setNombre_CA(string nombre_CA)
        {
            Nombre_CA = nombre_CA;
        }
        public string getDescripcion_CA()
        {
            return Descripcion_CA;
        }
        public void setDescripcion_CA(string descripcion_CA)
        {
            Descripcion_CA = descripcion_CA;
        }
        public string getImagen_CA()
        {
            return Imagen_CA;
        }
        public void setImagen_CA(string imagen_CA)
        {
            Imagen_CA = imagen_CA;
        }
    }
}