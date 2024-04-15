using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAO;

namespace Negocio
{
    public class CategoriasNegocios
        {
        string consultaTotal = ("select Cod_CA, Nombre_CA, Descripcion_CA,Imagen_CA from CATEGORIAS");
        public DataTable getTabla(string consulta)
        {
            AccesoDatos dao = new AccesoDatos();
            if (consulta == "todo")
            {
                return dao.ObtenerTabla("CATEGORIAS", consultaTotal);
            }
            else return dao.ObtenerTabla("CATEGORIAS", consulta);
        }
    }
}
