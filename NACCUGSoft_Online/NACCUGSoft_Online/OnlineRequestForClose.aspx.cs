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
    public partial class OnlineRequestForClose : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
            //    CombLoanReason();
            //    Combtitle();
            //}
            //TextBox7.Text = Global.GlUserNames;
            //TextBox2.Text = Global.GlUserNamesf;
            //TextBox3.Text = Global.GlUserNamesm;
            //TextBox4.Text = Global.GlUserNamesl;
            //TextBox1.Text = Global.GlUserNamesp;
            //TextBox5.Text = Global.GlUserNamesc;
        }
        //private void CombLoanReason()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select res_id,res_name from loanReason";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList4.DataSource = dt;
        //        DropDownList4.DataBind();
        //        DropDownList4.DataTextField = "res_name";
        //        DropDownList4.DataValueField = "res_name";
        //        DropDownList4.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        //private void Combtitle()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select tit_id,tit_name from titres";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList1.DataSource = dt;
        //        DropDownList1.DataBind();
        //        DropDownList1.DataTextField = "tit_name";
        //        DropDownList1.DataValueField = "tit_name";
        //        DropDownList1.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        protected void Button1_Click(object sender, EventArgs e)
        {
           // if ( TextBox2.Text != string.Empty &&  TextBox4.Text != string.Empty && TextBox5.Text != string.Empty && TextBox6.Text != string.Empty)
           // {
           //     string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
           //     SqlConnection con = new SqlConnection(connStr);
           //     con.Open();
           //     string query = "insert into OnlineRequestforClose ( empNo ,fname ,mname,lname,title,phone,trandate,reasonForClose)  values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList4.Text + "')";
           //     SqlCommand cmd = new SqlCommand(query, con);
           //     cmd.ExecuteNonQuery();

           //     string message = "Visa Statement Request Sent Successfully!!!";

           //     System.Text.StringBuilder sb = new System.Text.StringBuilder();

           //     sb.Append("<script type = 'text/javascript'>");

           //     sb.Append("window.onload=function(){");

           //     sb.Append("alert('");

           //     sb.Append(message);

           //     sb.Append("')};");

           //     sb.Append("</script>");

           //     ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
           // }

           // else

           // {

           //     string message = "Please enter the records";

           //     System.Text.StringBuilder sb = new System.Text.StringBuilder();

           //     sb.Append("<script type = 'text/javascript'>");

           //     sb.Append("window.onload=function(){");

           //     sb.Append("alert('");

           //     sb.Append(message);

           //     sb.Append("')};");

           //     sb.Append("</script>");

           //     ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
           // }

           // TextBox1.Text = string.Empty;
           // TextBox2.Text = string.Empty;
           // TextBox3.Text = string.Empty;
           // DropDownList1.SelectedIndex = -1;
           // DropDownList4.SelectedIndex = -1;
           // TextBox4.Text = string.Empty;
           // TextBox5.Text = string.Empty;
           //// TextBox7.Text = string.Empty;
           // TextBox6.Text = string.Empty;
           // // }
        }

    }
}