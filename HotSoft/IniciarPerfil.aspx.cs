using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using ManejoBD;
namespace HotSoft
{
    public partial class IniciarPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                CargarEstados();
            }

            MVIniciarPerfil.ActiveViewIndex=0;
            MVIniciarPerfil.SetActiveView(ViewEstado);
           

           
        }


        void CargarEstados()
        {
            try
            {
                DataTable estados = new DataTable();
                ManejoDatos datos = new ManejoDatos();
                estados = datos.Estados();
                cm_estadp.DataSource = estados;
                cm_estadp.DataTextField = "DESCRIPCION";
                cm_estadp.DataValueField = "ID_ESTADO";
                cm_estadp.DataBind();
            }
            catch (Exception a)
            { MessageBox.Show(a.Message); } 
        }
      

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void RBSi_CheckedChanged(object sender, EventArgs e)
        {
            if (RBSi.Checked == true)
            {
                txtUni.Visible = true;
                txtInicio.Visible = true;
                txtFin.Visible = true;
                lblUniversidad.Visible = true;
                lblInicio.Visible = true;
                lblFin.Visible = true;

                lblCargo.Visible = false;
                lblEmpresa.Visible = false;
                txtCargo.Visible = false;
                txtEmpresa.Visible = false;
                lbl_ano.Visible = true;
                txt_ano.Visible = true;
                MVIniciarPerfil.SetActiveView(ViewEstudiante);
            }
        }

        protected void RBNo_CheckedChanged(object sender, EventArgs e)
        {
            if (RBNo.Checked == true)
            {
                txtUni.Visible = false;
                txtInicio.Visible = false;
                txtFin.Visible = false;
                lblUniversidad.Visible = false;
                lblInicio.Visible = false;
                lblFin.Visible = false;

                lblCargo.Visible = true;
                lblEmpresa.Visible = true;
                txtCargo.Visible = true;
                txtEmpresa.Visible = true;
                lbl_ano.Visible = true;
                txt_ano.Visible = true;
                MVIniciarPerfil.SetActiveView(ViewEstudiante);
            }
        }

        protected void btnSig_1_Click(object sender, EventArgs e)
        {
            if (cm_estadp.DataValueField == "" || cm_ciudad.Text=="")
            {
                MessageBox.Show("Favor de seleccionar todos los campos");
            }
            else
            {
                MVIniciarPerfil.SetActiveView(ViewEstudiante);
            }

          
        }

        protected void cm_estadp_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                cm_ciudad.Items.Clear();
                DataTable ciudades = new DataTable();
                ManejoDatos datos = new ManejoDatos();
                ciudades = datos.Ciudades(cm_estadp.SelectedValue.ToString());
                cm_ciudad.DataSource = ciudades;
                cm_ciudad.DataTextField = "DESCRIPCION";
                cm_ciudad.DataValueField = "ID_CIUDAD"; //datavaluefield toma el valorsito del drop down list
                cm_ciudad.DataBind();




            }
            catch (Exception a)
            { MessageBox.Show(a.Message); } 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            ////int ID = (int)Session["ID"];
            //int ID = 1;
            //ManejoDatos datos = new ManejoDatos();
            //if (RBSi.Checked == true)
            //{
            //    datos.AgregarDetalle(ID, cm_estadp.SelectedValue.ToString(), cm_ciudad.SelectedValue.ToString(), txtUni.Text, Convert.ToDateTime(txtInicio.Text), Convert.ToDateTime(txtFin.Text), Convert.ToDateTime(txt_ano.Text));
            //}
            //else if (RBNo.Checked == true)
            //{
            //    datos.AgregarDetalle(ID, cm_estadp.DataValueField.ToString(), cm_ciudad.DataValueField.ToString(), txtCargo.Text, txtEmpresa.Text, Convert.ToDateTime(txt_ano.Text));
            //}
            //else
            //{
            //    MessageBox.Show("Selecciona una opcion");
            //}

        }
    }
}