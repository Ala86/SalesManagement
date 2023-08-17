using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NACCUGSoft_Online
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Fullname = Global.GlUserNamesf;
            Label1.Text = "Good day! " + Fullname;
            string compname = Global.GlUserNamesc;
            Label2.Text = "Welcome to! " + compname;
        }
    }
}