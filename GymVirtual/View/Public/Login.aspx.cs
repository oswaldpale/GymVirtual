using Ext.Net;
using GymVirtual.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymVirtual.View.Public
{
    public partial class Login : System.Web.UI.Page
    {
        ControllerUsuario _usuario = new ControllerUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [DirectMethod(ShowMask = true, Msg = "Verificando ...", Target = MaskTarget.Page)]
        public void ingresarUsuario(string correo, string contrasena)
        {

            if (_usuario.login(correo, contrasena))
            {
                Session.Timeout = 5;
                Response.Redirect("../Private/Escritorio.aspx");
                return;
            }
            else
            {
                X.AddScript("Ext.Msg.info({ui: 'danger', title: 'Notificación', html: 'Usuario o Contraseña incorrecta', iconCls: '#Exclamation'});");
            }

        }
    }
}