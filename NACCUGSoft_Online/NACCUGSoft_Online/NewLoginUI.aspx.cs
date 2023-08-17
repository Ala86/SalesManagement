using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.IO;
using System.ComponentModel;
using System.Text.RegularExpressions;

namespace NACCUGSoft_Online
{
    public partial class NewLoginUI : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

          //  Global.GCmemtype0 = RadioButtonList1.SelectedValue;
           Global.GCmemtype0 = 0.ToString();
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            string name = Request.Form["Name"];
            string password = Request.Form["password"];
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            //  int distance;
            if (RadioButtonList1.SelectedValue == "1")
            {

                string connStr2 = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con2 = new SqlConnection(connStr2);
                SqlDataAdapter sda2 = new SqlDataAdapter("select usernumb, oprcode, pswd, susers.compid, username, com_name from susers, company where  company.compid = susers.compid and oprcode ='" + name.ToString().Trim() + "' and pswd ='" + password.ToString().Trim() + "' and accesslvl = 1 ", con2);
                DataTable dt2 = new DataTable();
                sda2.Fill(dt2);
                // if (dt1.Rows[0][0].ToString() == "1")
                if (dt2.Rows.Count > 0)
                {
                    Global.GlUserNames = Convert.ToString(dt2.Rows[0]["oprcode"]);
                    Global.GlUserCompID = Convert.ToInt32(dt2.Rows[0]["compid"]);
                    Global.GlUserNamesf = Convert.ToString(dt2.Rows[0]["username"]);
                    Global.GlUserNamesc = Convert.ToString(dt2.Rows[0]["com_name"]);
                    this.Visible = false;
                    Response.Redirect("~/UserDashboard.aspx");
                    //   Response.Redirect("~/CUDashboard.aspx");
                }
                else //if (RadioButtonList1.SelectedValue == "0")
                {

                    string message = "Incorrect UserName and Password";

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                    sb.Append("<script type = 'text/javascript'>");

                    sb.Append("window.onload=function(){");

                    sb.Append("alert('");

                    sb.Append(message);

                    sb.Append("')};");

                    sb.Append("</script>");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                }
            }
            else
            {
                string connStr1 = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con1 = new SqlConnection(connStr1);
                SqlDataAdapter sda1 = new SqlDataAdapter("select usernumb, oprcode, pswd, susers.compid, username, com_name from susers, company where  company.compid = susers.compid and oprcode ='" + name.ToString().Trim() + "' and pswd ='" + password.ToString().Trim() + "' and accesslvl = 0", con1);
                DataTable dt1 = new DataTable();
                sda1.Fill(dt1);
                // if (dt1.Rows[0][0].ToString() == "1")
                if (dt1.Rows.Count > 0)
                {
                    Global.GlUserNames = Convert.ToString(dt1.Rows[0]["oprcode"]);
                    Global.GlUserCompID = Convert.ToInt32(dt1.Rows[0]["compid"]);
                    Global.GlUserNamesf = Convert.ToString(dt1.Rows[0]["username"]);
                    Global.GlUserNamesc = Convert.ToString(dt1.Rows[0]["com_name"]);
                    this.Visible = false;
                    Response.Redirect("~/NewDashboard.aspx");
                    //   Response.Redirect("~/CUDashboard.aspx");
                }
                else //if (RadioButtonList1.SelectedValue == "0")
                {

                    string message = "Incorrect UserName and Password";

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                    sb.Append("<script type = 'text/javascript'>");

                    sb.Append("window.onload=function(){");

                    sb.Append("alert('");

                    sb.Append(message);

                    sb.Append("')};");

                    sb.Append("</script>");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                }
            }


        }
        protected void Submitt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RegistrationUIEx.aspx");
        }
        
    }
}