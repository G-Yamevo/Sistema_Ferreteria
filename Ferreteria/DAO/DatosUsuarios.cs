using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
namespace DAO
{
    public class DatosUsuarios
    {
        AccesoDatos AD = new AccesoDatos();

        public Boolean existeUsuario(string mail)
        {
            string consulta = "SELECT Email_USU FROM USUARIOS WHERE Email_USU = '" + mail+"'";

            return AD.existe(consulta);
        }

        public Boolean comprobarLogin(string mail, string contrasena)
        {
            string consulta = "SELECT * FROM USUARIOS WHERE Email_USU = '" + mail + "' AND Password_USU = '" + contrasena+"'";

            return AD.existe(consulta);
        }

        public int agregarUsuarioDAO(Usuarios cat)
        {
            string consulta = "INSERT INTO Usuarios(Cuit_USU,PerfilCod_USU,Nombre_USU,Apellido_USU,Telefono_USU,Email_USU,Password_USU,CodProvincia_USU,CodCiudad_USU)" +
                " VALUES('" + cat.getCuit_USU() + "', '" + cat.getPerfilCod_USU() + "' , '" + cat.getNombre_USU() + "' , '" + cat.getApellido_USU() + "' , '" + cat.getTelefono_USU() + "' , '" + cat.getEmail_USU() + "' , '" + cat.getContrasena_USU() + "' , '" + cat.getCodProvincia_USU() + "' , '" + cat.getCiudadCod_USU() + "')";

            return AD.EjecutarConsulta(consulta);

        }
        public string DevolverNombreyApellido(string mail)
        {
            string USUARIO = (AD.DevolverValorUsuario(mail,"Nombre_USU"))+" "+ (AD.DevolverValorUsuario(mail, "Apellido_USU"));
            return USUARIO;
        }
    }
}
