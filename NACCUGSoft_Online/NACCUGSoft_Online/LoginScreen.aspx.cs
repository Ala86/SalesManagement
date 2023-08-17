using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public partial class LoginScreen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Global.GCmemtype0 = RadioButtonList1.SelectedValue;
          //  Global.GCmemtype1= RadioButtonList2.SelectedValue;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if (RadioButtonList1.SelectedValue == "0")

            // {
            //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //    SqlConnection con = new SqlConnection(connStr);
            //    SqlDataAdapter sda = new SqlDataAdapter("select ccustcode,ccustfname,ccustmname,ccustlname,ccustname,ctel,payroll_id, count(*) as ala from cusreg where ctel='" + TextBox1.Text.ToString().Trim() + "' and pinnumber ='" + TextBox2.Text.ToString().Trim() + "' group by ccustcode,ccustfname,ccustmname,ccustlname,ccustname,ctel,payroll_id ", con);
            //    DataTable dt = new DataTable();
            //    sda.Fill(dt);
            //    //if (Convert.ToString(dt.Rows[0]["ala"]) == "1")
            //    if (dt.Rows.Count > 0)
            //    {

            //          Global.GlUserNames = Convert.ToString(dt.Rows[0]["ccustcode"]);
            //        Global.GlUserNamesf = Convert.ToString(dt.Rows[0]["ccustfname"]);
            //        Global.GlUserNamesm = Convert.ToString(dt.Rows[0]["ccustmname"]);
            //        Global.GlUserNamesl = Convert.ToString(dt.Rows[0]["ccustlname"]);
            //        Global.GlUserNamesc = Convert.ToString(dt.Rows[0]["ctel"]);
            //        Global.GlUserNamesp = Convert.ToString(dt.Rows[0]["payroll_id"]);
            //        this.Visible = false;
                  Response.Redirect("~/NewMenuUI.aspx");
                   
            //    }
            //    else
            //    {
            //        string message = "Incorrect MobileNo and Password.";

            //        System.Text.StringBuilder sb = new System.Text.StringBuilder();

            //        sb.Append("<script type = 'text/javascript'>");

            //        sb.Append("window.onload=function(){");

            //        sb.Append("alert('");

            //        sb.Append(message);

            //        sb.Append("')};");

            //        sb.Append("</script>");

            //        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            //    }
            //}
            //else  if (RadioButtonList1.SelectedValue == "1")
            //{  
            //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //    SqlConnection con1 = new SqlConnection(connStr);
            //    con1.Open();
            //    string dnewpass = Global.tclassChkpassWord.dpassWord(TextBox2.Text.Trim().ToUpper());
            //    SqlDataAdapter sda = new SqlDataAdapter("select count (*) from susers where oprcode ='" + TextBox1.Text.ToString().Trim() + "' and userpassword ='" + TextBox2.Text.ToString().Trim() + "'", con1);
            //    DataTable dt = new DataTable();
            //    sda.Fill(dt);
            //    if (dt.Rows[0][0].ToString() == "1")
            //  //  if (dt.Rows.Count > 0)
            //    {
            //        this.Visible = false;
            //        Response.Redirect("~/MainMenu.aspx");
            //    }
            //    else
            //    {
            //        string message = "Incorrect MobileNo and Password.";

            //        System.Text.StringBuilder sb = new System.Text.StringBuilder();

            //        sb.Append("<script type = 'text/javascript'>");

            //        sb.Append("window.onload=function(){");

            //        sb.Append("alert('");

            //        sb.Append(message);

            //        sb.Append("')};");

            //        sb.Append("</script>");

            //        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            //    }
            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/OnlineRegistration.aspx");
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (RadioButtonList1.SelectedValue == "0")
            //{
            //    TextBox3.Visible = false;
            //}
            //else
            //{
            //    TextBox1.Visible = false;
            //}
        }
    }
}