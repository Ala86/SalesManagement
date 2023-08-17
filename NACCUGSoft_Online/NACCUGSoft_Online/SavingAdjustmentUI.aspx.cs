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
    public partial class SavingAdjustmentUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            string mcode = Request.Form["mcode"];
            string fname = Request.Form["fname"];
            string mname = Request.Form["mname"];
            string phonenumber = Request.Form["phonenumber"];
            DateTime ddate = Convert.ToDateTime(Request.Form["ddate"]);
            string enumber = Request.Form["enumber"];
            string jobtitle = Request.Form["jobtitle"];
            string lname = Request.Form["lname"];
            string address = Request.Form["address"];
            string purpose = Request.Form["purpose"];
            double amount = Convert.ToDouble(Request.Form["amount"]);
            //  DateTime datejoin = Convert.ToDateTime(Request.Form["datejoin"]);

            if (mcode != string.Empty && fname != string.Empty && lname != string.Empty && phonenumber != string.Empty && ddate.ToString() != string.Empty)
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
              //  string query = "insert into OnlineVisaRequest ( empNo ,fname ,mname,lname,title,telephone,trandate,purpose,maddress,ccustcode)  values ('" + enumber + "','" + fname + "','" + mname + "','" + lname + "','" + jobtitle + "','" + phonenumber + "','" + ddate + "','" + purpose + "','" + address + "','" + mcode + "')";
               string query = "insert into OnlineSavingsAdjustment (EmpNo,fname,mname,lname,title,phone,trandate,amount,ccustcode) values ('" + enumber + "','" + fname + "','" + mname + "','" + lname + "','" + jobtitle + "','" + phonenumber + "','" + ddate + "','" + amount + "','" + mcode + "')";
               SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                string message = "Savings Adjustment Request Sent Successfully!!!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }

            else

            {

                string message = "Please enter the records";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }

            fname = string.Empty;
            mname = string.Empty;
            lname = string.Empty;
            purpose = string.Empty;
            address = string.Empty;
            jobtitle = string.Empty;
            enumber = string.Empty;
            phonenumber = string.Empty;
        }
    }
}