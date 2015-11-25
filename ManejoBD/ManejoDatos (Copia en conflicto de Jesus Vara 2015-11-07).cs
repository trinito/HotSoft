using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace ManejoBD
{
    public class ManejoDatos
    {
        public  SqlConnection Conexion ()
        {
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=BD_HOTSOFT;Integrated Security=SSPI");
            
            return conn;
        }
        public void Registrar(string nombres, string apellidos, string correo, string pass)//registra tu cuenta
        {

            ManejoDatos datos = new ManejoDatos();
            SqlConnection conn = datos.Conexion();





            SqlCommand comando = new SqlCommand("Insert into Personas values" +
                                    "(@Nombre,@Apellidos,@Correo,@Contrasena ,'P')", conn);

            comando.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = nombres;
            comando.Parameters.AddWithValue("@Apellidos", SqlDbType.VarChar).Value = apellidos;
            comando.Parameters.AddWithValue("@Correo", SqlDbType.VarChar).Value = correo;
            comando.Parameters.AddWithValue("@Contrasena", SqlDbType.VarChar).Value = pass;
            //wambi pendejo, ponte a hacer la pagina cuando te logeas mi amor.....:*
            conn.Open();
            comando.ExecuteNonQuery();
            conn.Close();
            conn.Dispose();
        }

        public int ID_PERSONA(string correo)
        {
            int disponibles;
            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("select ID_PERSONA from PERSONAS where CORREO='" + correo + "'", con);
            con.Open();
            disponibles = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            con.Dispose();
            return disponibles;
        }

        public DataTable Estados()
        {
            DataTable disponibles = new DataTable();
            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("select ID_ESTADO, DESCRIPCION FROM ESTADOS_REPRUBLICA", con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(disponibles);
            con.Close();
            con.Dispose();
            return disponibles;
        }

        public int consultar(string correo)
        {
            int id;
            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("select ID_PERSONA from PERSONAS where CORREO = '" + correo + "'", con);
            con.Open();
            id = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            con.Dispose();

            return id;
        }
        public DataTable Ciudades( string estado)
        {
            DataTable disponibles = new DataTable();
            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("select ID_CIUDAD, DESCRIPCION from CIUDADES_REPRUBLICA where ID_ESTADO ="+estado+"", con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(disponibles);
            con.Close();
            con.Dispose();
            return disponibles;
        }

        public void AgregarDetalle(int id, int estado, int ciudad, string escuela,string inicio, string final, string edad)
        {

            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("insert into DETALLE_PERSONAS values ("+id+",'"+estado+"','"+ciudad+"','','','"+escuela+"',@inicio,@final,@edad)", con);
            cmd.Parameters.Add("@inicio", SqlDbType.Date).Value = inicio;
            cmd.Parameters.Add("@final", SqlDbType.Date).Value = final;
            cmd.Parameters.Add("@edad", SqlDbType.Date).Value = edad;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Dispose();


        }

        public void AgregarDetalle(int id, int estado, int ciudad, string cargo, string empresa, string edad)
        {

            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("insert into DETALLE_PERSONAS values (" + id + ",'" + estado + "','" + ciudad + "','" + cargo + "','" + empresa + "','','','',@edad)", con);
            cmd.Parameters.Add("@edad", SqlDbType.Date).Value = edad;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Dispose();
        }

        public void InsertarVarios(string tabla, int id_curriculum, string descripcion)
        {

            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("insert into " + tabla + " values (" + id_curriculum + ",'" + descripcion + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Dispose();
        }

        public void Educacion(int id_curriculum, string nivel_educacion, string titulo, string institucion)
        {

            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("insert into EDUCACION values (" + id_curriculum + ",'" + nivel_educacion + "','" + titulo + "','" + institucion + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Dispose();
        }

        public void Experiencia(int id_curriculum, string nombre_empresa, int tiempo_trabajo, string puesto_trabajo)
        {

            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("insert into EXPERIENCIA values (" + id_curriculum + ",'" + nombre_empresa + "','" + tiempo_trabajo + "','" + puesto_trabajo + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Dispose();
        }

        public void Curriculum(int id_persona, string extracto)
        {
            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("insert into CURRICULUM values (" + id_persona + ",'" + extracto + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Dispose();
        }


    }
}
