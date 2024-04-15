using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Ciudades
    {
        int CodCiudad_CIU;
        int CodProvincia_CIU;
        string Nombre_CIU;

        public Ciudades() { }
        public int getCodCiudad_CIU()
        {
            return CodCiudad_CIU;
        }
        public void setCodCiudad_CIU(int codCiudad_CIU)
        {
            CodCiudad_CIU = codCiudad_CIU;
        }
        public int getCodProvincia_CIU()
        {
            return CodProvincia_CIU;
        }
        public void setCodProvincia_CIU(int codProvincia_CIU)
        {
            CodProvincia_CIU = codProvincia_CIU;
        }
        public string getNombre_CIU()
        {
            return Nombre_CIU;
        }
        public void setNombre_CIU(string nombre_CIU)
        {
            Nombre_CIU = nombre_CIU;
        }
    }
}