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
        if (!IsPostBack)
        {
            Response.Write("<script> alert('Seleccione y conteste correctaente. Solo podra hacer esto 1 vez.') </script>");
        }
        else 
        {

        }
        
        
        }
       // int ID = 1    ; para las pruebas

        void limpiar()
        {
chIngles.Checked=false;     chJapones.Checked=false;
chChino.Checked=false;      chAleman.Checked=false;
chRuso.Checked=false;       chPortugues.Checked=false;
chFrances.Checked=false;    chVB.Checked=false;
chC.Checked=false;          chCPlus.Checked=false;
chJava.Checked=false;       chPython.Checked=false;
chPascal.Checked=false;     chCSharp.Checked=false;
chRuby.Checked=false;       chPHP.Checked=false;
chHTML.Checked=false;       chCSS.Checked=false;
chJS.Checked=false;         chEnsamblador.Checked=false;
chFortran.Checked=false;    chCOBOL.Checked=false;
chNesC.Checked=false;       chProlog.Checked=false;
chUML.Checked=false;        chCurInternet.Checked=false;
chCurWord.Checked=false;    chCurMA.Checked=false;
chCurSE.Checked=false;      chCurExcel.Checked=false;
chCurMSD.Checked=false;     chCurERP.Checked=false;
chCurPhotoshop.Checked=false; chCurVirtualizacion.Checked=false;
chCurIHC.Checked=false;     chCurGDocs.Checked=false;
chCurWS.Checked=false;      chCurSQL.Checked=false;
chCurW10.Checked=false;     chCurES.Checked=false;
chApt1.Checked=false;       chApt2.Checked=false;
chApt3.Checked=false;       chApt4.Checked=false;
chApt5.Checked=false;       chApt6.Checked=false;
chApt7.Checked=false;       chApt8.Checked=false;
chApt9.Checked=false;       chApt10.Checked=false;
chApt11.Checked=false;      chApt12.Checked=false;
chApt13.Checked=false;      chApt14.Checked=false;
chApt15.Checked=false;      chVB2.Checked=false;
chC2.Checked=false;         chCPlus2.Checked=false;
chJava2.Checked=false;      chPython2.Checked=false;
chPascal2.Checked=false;    chCSharp2.Checked=false;
chRuby2.Checked=false;      chPHP2.Checked=false;
chHTML2.Checked=false;      chCSS2.Checked=false;
chJS2.Checked=false;        chEnsamblador2.Checked=false;
chFortran2.Checked=false;   chCOBOL2.Checked=false;
chNesC2.Checked=false;      chProlog2.Checked=false;
chUML2.Checked = false;
txtEduEscuela.Text = "";    txtExpEmpresa.Text = "";
txtExpPuesto.Text = "";     txtExpTiempo.Text = "";
txtEdutitulo.Text = "";
        }
        protected void btnGuardarExtracto_Click(object sender, EventArgs e)
        {
            //extracto
            if (TxAExtracto.Value.ToString() != "")
               
            {
                ManejoDatos Extracto = new ManejoDatos();
                int ID = (int)Session["UsuarioID"];
                try
                {
                   
                    int i = Extracto.Busqueda("ID_CURRICULUM","CURRICULUM","ID_PERSONA",ID.ToString());
                    if (i>0)
                    {
                        Response.Write("<script> alert('Ya no puede volver a registrar el Extracto.') </script>");
                    }
                    else
                    {
                        Extracto.Extracto(ID, TxAExtracto.Value.ToString());
                        Response.Write("<script> alert('Se registro correctamente el Extracto.') </script>");
                    }
                }

                catch (Exception a)
                {
                    Response.Write("<script> alert('Ha ocurrido un error.') </script>");
                }
            }
            else
            {
                Response.Write("<script> alert('Ingrese valores en el extracto.') </script>");
                TxAExtracto.Focus();

            }
        }

        protected void btnCancelarExtracto_Click(object sender, EventArgs e)
        {
            TxAExtracto.Value = "";
        }

        protected void CheckBox67_CheckedChanged(object sender, EventArgs e)
        {
            
                
        }

        protected void btnExpGuardar_Click(object sender, EventArgs e)
        {
            ManejoDatos Experiencia = new ManejoDatos();
            int ID = (int)Session["UsuarioID"];
            int i = Experiencia.Busqueda("ID_CURRICULUM", "CURRICULUM", "ID_PERSONA", ID.ToString());
            if (txtExpEmpresa.Text == "")
            {
                Response.Write("<script> alert('Ingrese una empresa.') </script>");
            }
            else if (txtExpTiempo.Text == "")
            {
                Response.Write("<script> alert('Ingrese el tiempo.') </script>");

            }
            else if (txtExpPuesto.Text == "")
            {
                Response.Write("<script> alert('Ingrese un puesto.') </script>");
            }
            else if (i<1)
            {
                Response.Write("<script> alert('Primero se tiene que registrar el Extracto.') </script>");
            }
            else
            {
                try
                {
                    Experiencia.Experiencia(i, txtExpEmpresa.Text, Convert.ToInt32(txtExpTiempo.Text), txtExpPuesto.Text);
                    Response.Write("<script> alert('Se registro correctamente su experiencia.') </script>");
                }
                catch (Exception a)
                {
                    Response.Write("<script> alert('Ha ocurrido un error.') </script>");
                }
            }
        }

        protected void btnGuardarIdioma_Click(object sender, EventArgs e)
        {
            ManejoDatos Idiomas = new ManejoDatos();
            try
            {
            int i = Idiomas.Busqueda("ID_CURRICULUM", "CURRICULUM", "ID_PERSONA", ID.ToString());
            int x = Idiomas.Busqueda("ID_CURRICULUM", "IDIOMAS", "ID_CURRICULUM", i.ToString());

            if (i>0)
            {
                if (x<1)
                { 
                if (chIngles.Checked == true)
                    Idiomas.IdiomasHabilidades(i, "Ingles", Convert.ToInt32(rangoingles.Value), "IDIOMAS");
                if (chAleman.Checked == true)
                    Idiomas.IdiomasHabilidades(i, "Aleman", Convert.ToInt32(rangoAleman.Value), "IDIOMAS");
                if (chFrances.Checked == true)
                    Idiomas.IdiomasHabilidades(i, "Frances", Convert.ToInt32(rangoFrances.Value), "IDIOMAS");
                if (chJapones.Checked == true)
                    Idiomas.IdiomasHabilidades(i, "Japones", Convert.ToInt32(rangoJapones.Value), "IDIOMAS");
                if (chRuso.Checked == true)
                    Idiomas.IdiomasHabilidades(i, "Ruso", Convert.ToInt32(rangoRuso.Value), "IDIOMAS");
                if (chChino.Checked == true)
                    Idiomas.IdiomasHabilidades(i, "Chino", Convert.ToInt32(rangoChino.Value), "IDIOMAS");
                if (chPortugues.Checked == true)
                    Idiomas.IdiomasHabilidades(i, "Portugues", Convert.ToInt32(rangoPortugues.Value), "IDIOMAS");
                Response.Write("<script> alert('Se registraron correctamente sus idiomas.') </script>");
                limpiar();
                }
                else
                { Response.Write("<script> alert('Ya no puede volver a registrar Idiomas.') </script>"); }
            }
            else
            {
                Response.Write("<script> alert('Primero tiene que registrar el Extracto.') </script>");
            }
            }
            catch (Exception a)
            {
                Response.Write("<script> alert('" + a.ToString() + "') </script>");
            }
            
        }

        protected void btnGuardarCert_Click(object sender, EventArgs e)
        {
            ManejoDatos Certificaciones = new ManejoDatos();
            try
            {
                int i = Certificaciones.Busqueda("ID_CURRICULUM", "CURRICULUM", "ID_PERSONA", ID.ToString());
                int x = Certificaciones.Busqueda("ID_CURRICULUM", "CERTIFICACIONES", "ID_CURRICULUM", i.ToString());
                if (i>0)
                {
                    if (x<1)
                    {

                    
                if (chVB.Checked == true)
                    Certificaciones.CertiCursoApti(i, "Visual Studio", "CERTIFICACIONES");
                if (chC.Checked == true)
                    Certificaciones.CertiCursoApti(i, "C", "CERTIFICACIONES");
                if (chCPlus.Checked == true)
                    Certificaciones.CertiCursoApti(i, "C++", "CERTIFICACIONES");
                if (chJava.Checked == true)
                    Certificaciones.CertiCursoApti(i, "Java", "CERTIFICACIONES");
                if (chPython.Checked == true)
                    Certificaciones.CertiCursoApti(i, "Python", "CERTIFICACIONES");
                if (chPascal.Checked == true)
                    Certificaciones.CertiCursoApti(i, "Pascal", "CERTIFICACIONES");

                if (chCSharp.Checked == true)
                    Certificaciones.CertiCursoApti(i, "C#", "CERTIFICACIONES");
                if (chRuby.Checked == true)
                    Certificaciones.CertiCursoApti(i, "Ruby", "CERTIFICACIONES");
                if (chPHP.Checked == true)
                    Certificaciones.CertiCursoApti(i, "PHP", "CERTIFICACIONES");
                if (chHTML.Checked == true)
                    Certificaciones.CertiCursoApti(i, "HTML", "CERTIFICACIONES");
                if (chCSS.Checked == true)
                    Certificaciones.CertiCursoApti(i, "CSS", "CERTIFICACIONES");
                if (chJS.Checked == true)
                    Certificaciones.CertiCursoApti(i, "JavaScript", "CERTIFICACIONES");

                if (chEnsamblador.Checked == true)
                    Certificaciones.CertiCursoApti(i, "Ensamblador", "CERTIFICACIONES");
                if (chFortran.Checked == true)
                    Certificaciones.CertiCursoApti(i, "Fortran", "CERTIFICACIONES");
                if (chCOBOL.Checked == true)
                    Certificaciones.CertiCursoApti(i, "Cobol", "CERTIFICACIONES");
                if (chNesC.Checked == true)
                    Certificaciones.CertiCursoApti(i, "NesC", "CERTIFICACIONES");
                if (chProlog.Checked == true)
                    Certificaciones.CertiCursoApti(i, "Prolog", "CERTIFICACIONES");
                if (chUML.Checked == true)
                    Certificaciones.CertiCursoApti(i, "UML", "CERTIFICACIONES");
                Response.Write("<script> alert('Se registraron correctamente sus certificaciones.') </script>");
                limpiar();
                 }
                    else
                    { Response.Write("<script> alert('Ya no puede volver a registrar mas Certificaciones.') </script>"); }
                }
                else
                {
                    Response.Write("<script> alert('Primero tiene que registrar el Extracto.') </script>");
                }
            }
            catch (Exception a)
            {
                Response.Write("<script> alert('" + a.ToString() + "') </script>");
            }
        }

        protected void btnGuardarCurso_Click(object sender, EventArgs e)
        {
            ManejoDatos Cursos = new ManejoDatos();
            try
            {
                int i = Cursos.Busqueda("ID_CURRICULUM", "CURRICULUM", "ID_PERSONA", ID.ToString());
                int x = Cursos.Busqueda("ID_CURRICULUM", "CURSOS", "ID_CURRICULUM", i.ToString());
                if (i>0)
                {
                    if (x<1)
                    {

                    
                if (chCurInternet.Checked == true)
                    Cursos.CertiCursoApti(i, "Internet de las cosas", "CURSOS");
                if (chCurWord.Checked == true)
                    Cursos.CertiCursoApti(i, "Word", "CURSOS");
                if (chCurMA.Checked == true)
                    Cursos.CertiCursoApti(i, "Microsoft Azure", "CURSOS");
                if (chCurSE.Checked == true)
                    Cursos.CertiCursoApti(i, "Sistemas embebidos", "CURSOS");
                if (chCurExcel.Checked == true)
                    Cursos.CertiCursoApti(i, "Excel", "CURSOS");
                if (chCurMSD.Checked == true)
                    Cursos.CertiCursoApti(i, "MS Dynamics", "CURSOS");

                if (chCurERP.Checked == true)
                    Cursos.CertiCursoApti(i, "ERP", "CURSOS");
                if (chCurPhotoshop.Checked == true)
                    Cursos.CertiCursoApti(i, "Photoshop", "CURSOS");
                if (chCurVirtualizacion.Checked == true)
                    Cursos.CertiCursoApti(i, "Virtualizacion", "CURSOS");
                if (chCurIHC.Checked == true)
                    Cursos.CertiCursoApti(i, "IHC", "CURSOS");
                if (chCurGDocs.Checked == true)
                    Cursos.CertiCursoApti(i, "Google Docs", "CURSOS");
                if (chCurWS.Checked == true)
                    Cursos.CertiCursoApti(i, "Windows Server", "CURSOS");

                if (chCurSQL.Checked == true)
                    Cursos.CertiCursoApti(i, "MS SQL Server", "CURSOS");
                if (chCurW10.Checked == true)
                    Cursos.CertiCursoApti(i, "Windows 10", "CURSOS");
                if (chCurES.Checked == true)
                    Cursos.CertiCursoApti(i, "Exchange Server", "CURSOS");
                Response.Write("<script> alert('Se registraron correctamente sus cursos.') </script>");
                limpiar();
                }
                    else { Response.Write("<script> alert('Ya no puede volver a registrar mas cursos.') </script>"); }
                }
                else
                {
                    Response.Write("<script> alert('Primero tiene que registrar el Extracto.') </script>");
                }
            }
            catch (Exception a)
            {
                Response.Write("<script> alert('" + a.ToString() + "') </script>");
            }
            
        }

        protected void btnGuardarAptitud_Click(object sender, EventArgs e)
        {
            ManejoDatos Aptitudes = new ManejoDatos();
            try
            {
                int i = Aptitudes.Busqueda("ID_CURRICULUM", "CURRICULUM", "ID_PERSONA", ID.ToString());
                int x = Aptitudes.Busqueda("ID_CURRICULUM", "APTITUDES", "ID_CURRICULUM", i.ToString());
                if (i>0)
                {
                    if (x<1)
                    {

                if (chApt1.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Autodidacta", "APTITUDES");
                if (chApt2.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Trabajo en equipo", "APTITUDES");
                if (chApt3.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Responsable", "APTITUDES");
                if (chApt4.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Etico", "APTITUDES");
                if (chApt5.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Liderazgo", "APTITUDES");
                if (chApt6.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Autocritica", "APTITUDES");

                if (chApt7.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Organizado", "APTITUDES");
                if (chApt8.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Analista", "APTITUDES");
                if (chApt9.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Social", "APTITUDES");
                if (chApt10.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Puntual", "APTITUDES");
                if (chApt11.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Cooperativo", "APTITUDES");
                if (chApt12.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Perseverante", "APTITUDES");

                if (chApt13.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Matemático", "APTITUDES");
                if (chApt14.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Creativo", "APTITUDES");
                if (chApt15.Checked == true)
                    Aptitudes.CertiCursoApti(i, "Comunicativo", "APTITUDES");
                Response.Write("<script> alert('Se registraron correctamente sus aptitudes.') </script>");
                limpiar();
                 }
                    else
                    { Response.Write("<script> alert('Ya no puede volver a registrar mas Aptitudes.') </script>"); }
             }
                else
                {
                    Response.Write("<script> alert('Primero tiene que registrar el Extracto.') </script>");
                }
            }
            catch (Exception a)
            {
                Response.Write("<script> alert('" + a.ToString() + "') </script>");
            }
        }

        protected void btnEduGuardar_Click(object sender, EventArgs e)
        {
            ManejoDatos Educacion = new ManejoDatos();
            try
            {
                int i = Educacion.Busqueda("ID_CURRICULUM", "CURRICULUM", "ID_PERSONA", ID.ToString());
                if (i>0)
                {
                    if (txtEduEscuela.Text=="")
                 {
                    Response.Write("<script> alert('Ingrese una escuela.') </script>");
                 }
                    else if (DDLEduNivel.Value == "")
                  {
                    Response.Write("<script> alert('Ingrese su nivel de estudio.') </script>");
                  }
                 else if (txtEdutitulo.Text=="")
                  { 
                    Response.Write("<script> alert('Ingrese su titulo.') </script>");
                  }
                 else
                 {
                    Educacion.Educacion(i,DDLEduNivel.Value,txtEdutitulo.Text,txtEduEscuela.Text);
                    Response.Write("<script> alert('Se registro correctamente su titulo.') </script>");
                    limpiar();
                    }
               }
                else
                {
                    Response.Write("<script> alert('Primero tiene que registrar el Extracto.') </script>");
                }
            }
            catch (Exception a)
            {
                Response.Write("<script> alert('" + a.ToString() + "') </script>");
            }
        }

        protected void btnHabGuardar_Click(object sender, EventArgs e)
        {
            ManejoDatos Habilidades = new ManejoDatos();
            try
            {
                int i = Habilidades.Busqueda("ID_CURRICULUM", "CURRICULUM", "ID_PERSONA", ID.ToString());
                int x = Habilidades.Busqueda("ID_CURRICULUM", "HABILIDADES", "ID_CURRICULUM", i.ToString());
                 if (i > 0)
                 {
                     if (x<1)
                     {
                     if (chVB2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "Visual Studio", Convert.ToInt32(rangoVB.Value), "HABILIDADES");
                     if (chC2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "C", Convert.ToInt32(rangoC.Value), "HABILIDADES");
                     if (chCPlus2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "C++", Convert.ToInt32(rangoCPlus.Value), "HABILIDADES");
                     if (chJava2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "Java", Convert.ToInt32(rangoJava.Value), "HABILIDADES");
                     if (chPython2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "Python", Convert.ToInt32(rangoPython.Value), "HABILIDADES");
                     if (chPascal2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "Pascal", Convert.ToInt32(rangoPascal.Value), "HABILIDADES");

                     if (chCSharp2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "C#", Convert.ToInt32(rangoCSharp.Value), "HABILIDADES");
                     if (chRuby2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "Ruby", Convert.ToInt32(rangoRuby.Value), "HABILIDADES");
                     if (chPHP2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "PHP", Convert.ToInt32(rangoPHP.Value), "HABILIDADES");
                     if (chHTML2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "HTML", Convert.ToInt32(rangoHTML.Value), "HABILIDADES");
                     if (chCSS2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "CSS", Convert.ToInt32(rangoCSS.Value), "HABILIDADES");
                     if (chJS2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "JavaScript", Convert.ToInt32(rangoJavaScript.Value), "HABILIDADES");

                     if (chEnsamblador2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "Ensamblador", Convert.ToInt32(rangoEnsamblador.Value), "HABILIDADES");
                     if (chFortran2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "Fortran", Convert.ToInt32(rangoFortran.Value), "HABILIDADES");
                     if (chCOBOL2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "Cobol", Convert.ToInt32(rangoCOBOL.Value), "HABILIDADES");
                     if (chNesC2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "NesC", Convert.ToInt32(rangoNesC.Value), "HABILIDADES");
                     if (chProlog2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "Prolog", Convert.ToInt32(rangoProlog.Value), "HABILIDADES");
                     if (chUML2.Checked == true)
                         Habilidades.IdiomasHabilidades(i, "UML", Convert.ToInt32(rangoUML.Value), "HABILIDADES");
                     Response.Write("<script> alert('Se registraron correctamente sus habilidades.') </script>");
                     limpiar();
                     }
                     else
                     { Response.Write("<script> alert('Ya no puede volver a registrar mas Habilidades.') </script>"); }
                 }
                 else
                 {
                     Response.Write("<script> alert('Primero tiene que registrar el Extracto.') </script>");
                 }
                }
            catch (Exception a)
            {
                Response.Write("<script> alert('" + a.ToString() + "') </script>");
            }
        }

        protected void btnExpCancelar_Click(object sender, EventArgs e)
        {
            txtExpEmpresa.Text = "";
            txtExpPuesto.Text = "";
            txtExpTiempo.Text = "";
        }

        protected void btnEduCancelar_Click(object sender, EventArgs e)
        {
            txtEduEscuela.Text = "";
            txtEdutitulo.Text = "";
        }
    }
}