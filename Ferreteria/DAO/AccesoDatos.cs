using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DAO
{
    public class AccesoDatos
    {
        String rutaBDFerreteria = "Data Source=localhost\\sqlexpress;Initial Catalog=DBFerreteria;Integrated Security=True";
        public AccesoDatos()
        {

        }

        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(rutaBDFerreteria);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }


        private SqlDataAdapter ObtenerAdaptador(String consultaSql, SqlConnection cn)
        {
            SqlDataAdapter adaptador;
            try
            {
                adaptador = new SqlDataAdapter(consultaSql, cn);
                return adaptador;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public DataTable ObtenerTabla(String NombreTabla, String Sql)
        {
            DataSet ds = new DataSet();
            SqlConnection Conexion = ObtenerConexion();
            SqlDataAdapter adp = ObtenerAdaptador(Sql, Conexion);
            adp.Fill(ds, NombreTabla);
            Conexion.Close();
            return ds.Tables[NombreTabla];
        }
        public int EjecutarConsulta(string consultaSQL)
        {
            SqlConnection conn = new SqlConnection(rutaBDFerreteria);
            conn.Open();
            SqlCommand cmd = new SqlCommand(consultaSQL, conn);
            int filas = (int)cmd.ExecuteNonQuery();
            conn.Close();
            return filas;
        }

        public string DevolverValorUsuario(string mail, string campo)
        {
            string Valor;
            SqlConnection con = new SqlConnection(rutaBDFerreteria);
            con.Open();
            SqlCommand com = new SqlCommand("select "+campo+" from USUARIOS Where Email_USU='"+mail+"'", con);
            SqlDataReader reader = com.ExecuteReader();
            reader.Read();
            Valor = reader[campo].ToString();
            return Valor;
        }

        public Boolean existe(String consulta)
        {
            Boolean estado = false;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                estado = true;
            }
            Conexion.Close();
            return estado;
        }

        public int ObtenerMaximo(String consulta)
        {
            int max = 0;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                max = Convert.ToInt32(datos[0].ToString());
            }
            Conexion.Close();
            return max;
        }

    }
}
