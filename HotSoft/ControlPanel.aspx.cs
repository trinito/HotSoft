using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotSoft
{
    public partial class ControlPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnGuardarCurso_Click(object sender, EventArgs e)
        {

        }

        protected void btnGuardarIdioma_Click(object sender, EventArgs e)
        {
            ManejoBD.ManejoDatos Actualizar = new ManejoBD.ManejoDatos();
            ViewState.Add("Rol",lblJunior);
                
            Actualizar.Actualizar("ExperienciaAdmin","Puntaje",ViewState["Rol"].ToString(),"RolRequerido","Junior");
            Actualizar.Actualizar("ExperienciaAdmin", "Puntaje", lblMiddle.Text, "RolRequerido", "Middle");
            Actualizar.Actualizar("ExperienciaAdmin", "Puntaje", lblSenior.Text, "RolRequerido", "Senior");
        }
    }
}