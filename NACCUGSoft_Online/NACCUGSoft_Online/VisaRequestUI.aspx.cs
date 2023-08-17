using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using System.Net;

namespace NACCUGSoft_Online
{
    public partial class VisaRequestUI : System.Web.UI.Page
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

            if (mcode != string.Empty && fname != string.Empty && lname != string.Empty && phonenumber != string.Empty && ddate.ToString() != string.Empty)
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string query = "insert into OnlineVisaRequest ( empNo ,fname ,mname,lname,title,telephone,trandate,purpose,maddress,ccustcode)  values ('" + enumber + "','" + fname + "','" + mname + "','" + lname + "','" + jobtitle + "','" + phonenumber + "','" + ddate + "','" + purpose + "','" + address + "','" + mcode + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                string message = "Visa Statement Request Sent Successfully!!!";

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
           address= string.Empty;
            jobtitle = string.Empty;
            enumber = string.Empty;
            phonenumber = string.Empty;

            sms();
        }
        private void sms()
        {
           // Find your Account Sid and Token at twilio.com / console
           //  DANGER!This is insecure.See http://twil.io/secure
            const string accountSid = "AC25bde79e64a93e1844baddb3a5a77608";
            const string authToken = "49b2e50d4eca4870a2f44dd38ec7eb9b";

            TwilioClient.Init(accountSid, authToken);
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls;
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls11;
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072;
            var message = MessageResource.Create(
                body: "Alagie Kuyateh is testing the Online Platform for Sofora! Powered by New Vision Technologies Ltd",
                from: new Twilio.Types.PhoneNumber("+12513129241"),
                to: new Twilio.Types.PhoneNumber("+2202790316")
            );

            Console.WriteLine(message.Sid);

        }
    }
}