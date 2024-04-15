using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
   public  class Articulos
    {
        string Cod_ART;
        string MarcaCod_ART;
        string CatCod_ART;
        string Nombre_ART;
        string Descripcion_ART;
        decimal Precio_ART;
        string Imagen_ART;
        bool Estado_ART;
        public Articulos() { }

        public string getCod_ART(){
            return Cod_ART;
        }
        public void setCod_ART(string cod_ART)
        {
            Cod_ART = cod_ART;
        }

        public string getMarcaCod_ART()
        {
            return MarcaCod_ART;
        }
        public void setMarcaCod_ART(string marcaCod_ART)
        {
            MarcaCod_ART = marcaCod_ART;
        }

        public string getCatCod_ART()
        {
            return CatCod_ART;
        }
        public void setCatCod_ART(string catCod_ART)
        {
            CatCod_ART = catCod_ART;
        }

        public string getNombre_ART()
        {
            return Nombre_ART;
        }
        public void setNombre_ART(string nombre_ART)
        {
            Nombre_ART = nombre_ART;
        }

        public string getDescripcion_ART()
        {
            return Descripcion_ART;
        }
        public void setDescripcion_ART(string descripcion_ART)
        {
            Descripcion_ART = descripcion_ART;
        }

        public decimal getPrecio_ART()
        {
            return Precio_ART;
        }
        public void setPrecio_ART(decimal precio_ART)
        {
            Precio_ART = precio_ART;
        }

        public string getImg_ART()
        {
            return Imagen_ART;
        }
        public void setImg_ART(string imagen_ART)
        {
            Imagen_ART = imagen_ART;
        }
        public bool getEstado_ART()
        {
            return Estado_ART;
        }
        public void setEstado_ART(bool estado_ART)
        {
            Estado_ART = estado_ART;
        }
    }


}
