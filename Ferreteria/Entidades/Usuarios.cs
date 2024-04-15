using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuarios
    {
        string Cuit_USU;
        string PerfilCod_USU;
        string Nombre_USU;
        string Apellido_USU;
        string Telefono_USU;
        string Email_USU;
        string Password_USU;
        int CodProvincia_USU;
        int CodCiudad_USU;
        string Imagen_USU;
        string RazonSocial_USU;

        public Usuarios() { }

        public string getCuit_USU()
        {
            return Cuit_USU;
        }
        public void setCuit_USU(string cuit_USU)
        {
            Cuit_USU = cuit_USU;
        }
        public string getNombre_USU()
        {
            return Nombre_USU;
        }
        public void setANombre_USU(string nombre_USU)
        {
            Nombre_USU = nombre_USU;
        }
        public string getApellido_USU()
        {
            return Apellido_USU;
        }
        public void setApellido_USU(string apellido_USU)
        {
            Apellido_USU = apellido_USU;
        }
        public string getContrasena_USU()
        {
            return Password_USU;
        }
        public void setContrasena_USU(string password_USU)
        {
            Password_USU = password_USU;
        }
        public string getTelefono_USU()
        {
            return Telefono_USU;
        }
        public void setTelefono_USU(string telefono_USU)
        {
            Telefono_USU = telefono_USU;
        }

        public string getEmail_USU()
        {
            return Email_USU;
        }
        public void setEmail_USU(string email_USU)
        {
            Email_USU = email_USU;
        }

        public int getCodProvincia_USU()
        {
            return CodProvincia_USU;
        }
        public void setCodProvincia_USU(int codProvincia_USU)
        {
            CodProvincia_USU = codProvincia_USU;
        }

        public int getCiudadCod_USU()
        {
            return CodCiudad_USU;
        }
        public void setCiudadCod_USU(int codCiudad_USU)
        {
            CodCiudad_USU = codCiudad_USU;
        }
        public string getImagen_USU()
        {
            return Imagen_USU;
        }
        public void setImagen_USU(string imagen_USU)
        {
            Imagen_USU = imagen_USU;
        }
        public string getRazonSocial_USU()
        {
            return RazonSocial_USU;
        }
        public void setRazonSocial_USU(string razonSocial_USU)
        {
            RazonSocial_USU = razonSocial_USU;
        }
        public string getPerfilCod_USU()
        {
            return PerfilCod_USU;
        }
        public void setPerfilCod_USU(string perfilCod_USU)
        {
            PerfilCod_USU = perfilCod_USU;
        }
    }
}
