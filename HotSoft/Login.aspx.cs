using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ManejoBD;
using System.Windows.Forms;

namespace HotSoft
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MViewLogin.ActiveViewIndex = 1;
            MViewLogin.SetActiveView(ViewLogin);
        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            string user = this.txtUser.Text.Replace(";", "").Replace("--", "");
            string pass = this.txtPass.Text.Replace(";", "").Replace("--", "");
            int ID;
           
           try
           {
               ManejoDatos correo = new ManejoDatos();
               ID = correo.BuscarCorreo(txtUser.Text, txtPass.Text);
               if (ID>0)
               {
                   Session["UsuarioID"] = ID;
                   Response.Redirect("Index.aspx");
               }
               else
               {
                   Response.Write("<script> alert('Usuario o Contraseña incorrectos.') </script>");   
               }
             
           }
            catch (SqlException a)
           {
               Response.Write("Error #"+a.Message);
           }

        }

        protected void LBRegister_Click(object sender, EventArgs e)
        {
            MViewLogin.SetActiveView(ViewRegister);
        
        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {

            if (txtContraseña.Text == TextBox4.Text)
            {
                try
                {
                    int ID;
                    ManejoDatos registrar = new ManejoDatos();
                    ID = registrar.Registrar(txtNombres.Text, txtApellidos.Text, txtCorreo.Text, txtContraseña.Text);
                    Session["UsuarioID"] = ID;
                    Response.Redirect("IniciarPerfil.aspx");
                }
                catch (SqlException a)
                {
                    if (a.Number == 2601)
                    {
                        Response.Write("<script> alert('El correo ya existe.') </script>");
                        MViewLogin.SetActiveView(ViewRegister);
                    }
                    else
                    {
                        Response.Write("<script> alert('Ha ocurrido un error.') </script>");
                        MViewLogin.SetActiveView(ViewRegister);
                    }
                }
            }
            else
            {
                Response.Write("<script> alert('Las contraseñas no coindicen.') </script>");
                TextBox4.Text = "";
                TextBox4.Focus();
                MViewLogin.SetActiveView(ViewRegister);
            }
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}