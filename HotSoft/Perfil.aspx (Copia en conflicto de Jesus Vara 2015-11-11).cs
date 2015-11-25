using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ManejoBD;

namespace HotSoft
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<script> alert('Seleccione y conteste correctaente. Solo podra hacer esto 1 vez.') </script>");
        }
        int ID_CURRICULUM = 10;
        bool opc = false;
        protected void btnGuardarExtracto_Click(object sender, EventArgs e)
        {


            if (TxAExtracto.Text!="")
            {
                ManejoDatos Extracto = new ManejoDatos();
                //int ID = (int)Session["UsuarioID"];
                try
                {
                    int ID = 1;
                    ID_CURRICULUM = Extracto.Extracto(ID, TxAExtracto.Text);
                    if (ID_CURRICULUM == 0)
                        opc = false;
                    else
                        opc = true;
                }

                catch (Exception a)
                {
                    Response.Write("<script> alert('Ha ocurrido un error.') </script>");
                }
            }
            else {
                Response.Write("<script> alert('Ingrese valores en el extracto.') </script>");
                TxAExtracto.Focus();
            
            }


        }

        protected void btnCancelarExtracto_Click(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox67_CheckedChanged(object sender, EventArgs e)
        {
            
                
        }

        protected void btnExpGuardar_Click(object sender, EventArgs e)
        {
            if (txtExpEmpresa.Text=="")
            {
                Response.Write("<script> alert('Ingrese una empresa.') </script>");
            }
            else if (txtExpTiempo.Text=="")
            {
                Response.Write("<script> alert('Ingrese el tiempo.') </script>");

            }
            else if (txtExpPuesto.Text=="")
            {
                Response.Write("<script> alert('Ingrese un puesto.') </script>");
            }
            else if (opc==false)
            {
                Response.Write("<script> alert('Primero se tiene que registrar el Extracto.') </script>");
            }
            else
            {
                ManejoDatos Experiencia = new ManejoDatos();
                try
                {
                    Experiencia.Experiencia(ID_CURRICULUM, txtExpEmpresa.Text, Convert.ToInt32(txtExpTiempo), txtExpPuesto.Text);
                }                   
                catch(Exception a)
                {
                    Response.Write("<script> alert('Ha ocurrido un error.') </script>");
                }
                

            }
        }

        protected void btnGuardarIdioma_Click(object sender, EventArgs e)
        {
            ManejoDatos Idiomas = new ManejoDatos();
          int perro = Convert.ToInt32(rangoingles.Value);
            try
            {
                if (ChkIngles.Checked == true)
                    Idiomas.IdiomasHabilidades(ID_CURRICULUM, "Ingles", Convert.ToInt32(rangoingles.Value), "IDIOMAS");
                if (ChkAleman.Checked == true)
                    Idiomas.IdiomasHabilidades(ID_CURRICULUM, "Aleman", Convert.ToInt32(rangoAleman.Value), "IDIOMAS");
                if (ChkFrances.Checked == true)
                    Idiomas.IdiomasHabilidades(ID_CURRICULUM, "Frances", Convert.ToInt32(rangoFrances.Value), "IDIOMAS");
                if (ChkJapones.Checked == true)
                    Idiomas.IdiomasHabilidades(ID_CURRICULUM, "Japones", Convert.ToInt32(rangoJapones.Value), "IDIOMAS");
                if (ChkRuso.Checked == true)
                    Idiomas.IdiomasHabilidades(ID_CURRICULUM, "Ruso", Convert.ToInt32(rangoRuso.Value), "IDIOMAS");
                if (ChkChino.Checked == true)
                    Idiomas.IdiomasHabilidades(ID_CURRICULUM, "Chino", Convert.ToInt32(rangoChino.Value), "IDIOMAS");
                if (ChkPortugues.Checked == true)
                    Idiomas.IdiomasHabilidades(ID_CURRICULUM, "Portugues", Convert.ToInt32(rangoPortugues.Value), "IDIOMAS");
            }
            catch (Exception a)
            {
                Response.Write("<script> alert('"+a.ToString()+"') </script>");
            }


        }

        protected void btnGuardarCert_Click(object sender, EventArgs e)
        {
          
        }

        protected void btnGuardarCert_Click1(object sender, EventArgs e)
        {
            ManejoDatos Certificaciones = new ManejoDatos();

            if (ChkSharp.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "C#", "CERTIFICACIONES");
            if (ChkHtml.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "HTML", "CERTIFICACIONES");
            if (ChkEnsamblador.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "Ensamblador", "CERTIFICACIONES");
            if (ChkNesc.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "NesC", "CERTIFICACIONES");
            if (ChkC.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "C", "CERTIFICACIONES");
            if (ChkPython.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "Python", "CERTIFICACIONES");

            if (ChkRuby.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "Ruby", "CERTIFICACIONES");
            if (ChkCss.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "CSS", "CERTIFICACIONES");
            if (ChkFortran.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "Fortran", "CERTIFICACIONES");
            if (ChkProlog.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "Prolog", "CERTIFICACIONES");
            if (ChkMasmas.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "C++", "CERTIFICACIONES");
            if (ChkPascal.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "Pascal", "CERTIFICACIONES");

            if (ChkVisual.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "Visual Studio", "CERTIFICACIONES");
            if (ChkJava.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "Java", "CERTIFICACIONES");
            if (ChkUml.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "UML", "CERTIFICACIONES");
            if (ChPhp.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "PHP", "CERTIFICACIONES");
            if (ChkCobol.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "Cobol", "CERTIFICACIONES");
            if (ChkJavascrip.Checked == true)
                Certificaciones.CertiCursoApti(ID_CURRICULUM, "JavaScript", "CERTIFICACIONES");
        }
    }
}