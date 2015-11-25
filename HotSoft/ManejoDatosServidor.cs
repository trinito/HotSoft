using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace HotSoft
{
    public class ManejoDatosServidor
    {
        public void ActualizarExperiencia(string Tabla, string Campo, string Dato,string CampoBase, string Dato2)
        {
            SqlConnection conn = new SqlConnection("Data Source=LOCALHOST;Initial Catalog=HotSoftServidor;Integrated Security=SSPI");
            SqlCommand Comando = new SqlCommand();
            Comando.CommandText = "Update " + Tabla + " set " + Campo + " =@dato where " +  CampoBase + "=@rol";
            Comando.Parameters.Add("@dato", SqlDbType.Int).Value = Dato;
            Comando.Parameters.Add("@rol", SqlDbType.VarChar).Value = Dato2;
            Comando.Connection = conn;
            conn.Open();
            Comando.ExecuteNonQuery();
            conn.Close();
            conn.Dispose();
        }
    }
}