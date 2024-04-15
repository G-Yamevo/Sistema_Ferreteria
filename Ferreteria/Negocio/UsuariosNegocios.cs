using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using Entidades;

namespace Negocio
{
    public class UsuariosNegocios
    {
        
        DatosUsuarios DU = new DatosUsuarios();
        public bool comprobarMail(string mail)
        {
            return DU.existeUsuario(mail);
        }
        public bool comprobarLogin(string mail, string contrasena)
        {
            return DU.comprobarLogin(mail, contrasena);
        }

        public string BuscarNombreUsuario(string mail)
        {
            return DU.DevolverNombreyApellido(mail);
        }
        public bool agregarUsuario(Usuarios cat)
        {
            int cantFilas = 0;
            if (DU.existeUsuario(cat.getEmail_USU()) == false)
            {
                cantFilas = DU.agregarUsuarioDAO(cat);
            }

            if (cantFilas == 1)
                return true;
            else
                return false;

        }
    }
}
