using Ext.Net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymVirtual.View.Private
{
    public partial class Escritorio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Logout_Click(object sender, DirectEventArgs e)
        {
            // Logout from Authenticated Session
            Session.RemoveAll();
            this.Response.Redirect("../Public/Login.aspx");
        }
      

    }
}