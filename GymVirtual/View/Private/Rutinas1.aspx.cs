using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GymVirtual.Controller;
using System.Data;
using Ext.Net;

namespace GymVirtual.View.Private
{
    public partial class Rutinas1 : System.Web.UI.Page
    {

        controller_Rutina control_ruti = new controller_Rutina();
        String idusuario = "1";

        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar_Rutina();
        }

        protected void Cargar_Rutina()
        {
            
            DataTable tabla = control_ruti.consultarRutina();
            Store1.DataSource = tabla;
            Store1.DataBind();
        }
        [DirectMethod(ShowMask = true, Msg = "Registrando..", Target = MaskTarget.Page)]
        public bool InsertarRutina(String idrutina)
        {
            return control_ruti.insertarRutina2(idusuario, idrutina);
        }
    }
}