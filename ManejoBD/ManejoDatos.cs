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

        public void AgregarDetalle(int id, string ciudad, string escuela,DateTime inicio, DateTime final, DateTime edad)
        {

            SqlConnection con = Conexion();
            SqlCommand cmd = new SqlCommand("insert into DETALLE_PERSONAS values ("+id+",'"+ciudad+"','','','"+escuela+"','"+inicio+"','"+final+"','"+edad+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Dispose();
        }

        public void AgregarDetalle(int id, string ciudad, string cargo, string empresa, DateTime edad)
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


        public bool Actualizar(string Tabla, string Campo, string Dato, string CampoBase, string Dato2)
        {
            bool Actualizado = false;
            SqlConnection conn = new SqlConnection("Data Source=LOCALHOST;Initial Catalog=HotSoftServidor;Integrated Security=SSPI");
            SqlCommand Comando = new SqlCommand();
            Comando.CommandText = "Update " + Tabla + " set " + Campo + " =@dato where " + CampoBase + "=@desc";
            Comando.Parameters.Add("@dato", SqlDbType.Int).Value = Dato;
            Comando.Parameters.Add("@desc", SqlDbType.VarChar).Value = Dato2;
            Comando.Connection = conn;
            conn.Open();

            if (Comando.ExecuteNonQuery() == 1)
                Actualizado = true;

            conn.Close();
            conn.Dispose();

            return Actualizado;
        }


    }
}
