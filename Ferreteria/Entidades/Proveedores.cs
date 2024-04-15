using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Proveedores
    {
        string Cuit_PROV;
        string ID_PROV;
        string RazonSocial_PROV;
        string Contacto_PROV;

        public Proveedores() { }
        public string getCuit_PROV()
        {
            return Cuit_PROV;
        }
        public void setCuit_PROV(string cuit_PROV)
        {
            Cuit_PROV = cuit_PROV;
        }
        public string getID_PROV()
        {
            return ID_PROV;
        }
        public void setID_PROV(string id_PROV)
        {
            ID_PROV = id_PROV;
        }
        public string getRazonSocial_PROV()
        {
            return RazonSocial_PROV;
        }
        public void setRazonSocial_PROV(string razonsocial_PROV)
        {
            RazonSocial_PROV = razonsocial_PROV;
        }
        public string getContacto_PROV()
        {
            return Contacto_PROV;
        }
        public void setContacto_PROV(string contacto_PROV)
        {
            Contacto_PROV = contacto_PROV;
        }
    }
}