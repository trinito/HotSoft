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

        public void AgregarDetalle(int id, int ciudad, string escuela,string inicio, string final, string edad)
        {
            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("insert into DETALLE_PERSONAS values ("+id+",'"+ciudad+"','','','"+escuela+"','"+inicio+"','"+final+"','"+edad+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Dispose();
        }

        public void AgregarDetalle(int id, int ciudad, string cargo, string empresa, string edad)
        {
            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("insert into DETALLE_PERSONAS values ("+id+",'"+ciudad+"','"+cargo+"','"+empresa+"','','','','"+edad+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Dispose();
        }

        public int Registrar(string nombre,string apellido , string correo, string contra)
        {
            int resul=0;
            int aux;
            SqlConnection conn = Conexion();
            SqlCommand comando = new SqlCommand("Insert into Personas values" +
                                    "(@Nombre,@Apellidos,@Correo,@Contrasena ,'P')", conn);

            comando.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = nombre;
            comando.Parameters.Add("@Apellidos", SqlDbType.VarChar).Value = apellido;
            comando.Parameters.Add("@Correo", SqlDbType.VarChar).Value = correo;
            comando.Parameters.Add("@Contrasena", SqlDbType.VarChar).Value = contra;
            //wambi pendejo, ponte a hacer la pagina cuando te logeas mi amor.....:*
            conn.Open();
            aux=comando.ExecuteNonQuery(); //para saber si se ejecuto o no
            if (aux == 1)
            {
                SqlCommand cmd = new SqlCommand("SELECT ID_PERSONA FROM PERSONAS WHERE CORREO= '" + correo + "'", conn);
                resul = Convert.ToInt32(cmd.ExecuteScalar());
            }
            else
                resul = 0;

            conn.Dispose();
            return resul;
        }
        public int BuscarCorreo(string correo, string contra)
        {
            int resul = 0;
            SqlConnection conn = Conexion();
            SqlCommand cmd = new SqlCommand("SELECT ID_PERSONA FROM PERSONAS WHERE CORREO= '" + correo + "' AND CONTRASENA = '"+correo+"'", conn);
            conn.Open();
            resul = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Dispose();
            return resul;
        }

        public int Extracto(int ID, string estracto)
        {
            int resul = 0;
            SqlConnection conn = Conexion();
            SqlCommand cmd = new SqlCommand("INSERT INTO CURRICULUM VALUES ('"+ID+"','"+estracto+"')",conn);
            SqlCommand comando = new SqlCommand("select ID_CURRICULUM FROM CURRICULUM WHERE ID_PERSONA=" + ID + "", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            resul = Convert.ToInt32(comando.ExecuteScalar());
            conn.Dispose();
            return resul;
        }

        public void Experiencia(int id_curriculum, string empresa, int tiempo_trabajado, string puesto_Trabajo)
        {
            SqlConnection conn = Conexion();
            SqlCommand cmd = new SqlCommand("INSERT INTO EXPERIENCIA VALUES ('"+id_curriculum+"','"+empresa+"','"+tiempo_trabajado+"', "+
                                            "'"+puesto_Trabajo+"') ", conn);
            conn.Open();
            Convert.ToInt32(cmd.ExecuteScalar());
            conn.Dispose();
        }
        
        public void IdiomasHabilidades(int id_curriculum, string descripcion,int puntaje, string tabla)
        {
            SqlConnection conn = Conexion();
            SqlCommand cmd = new SqlCommand("INSERT INTO "+tabla+" VALUES ('"+id_curriculum+"','"+descripcion+"','"+puntaje+"')",conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Dispose();
        }

        public void CertiCursoApti(int id_curriculum, string descripcion, string tabla)
        {
            SqlConnection conn = Conexion();
            SqlCommand cmd = new SqlCommand("INSERT INTO " + tabla + " VALUES ('" + id_curriculum + "','" + descripcion + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Dispose();
        }

    }
}
