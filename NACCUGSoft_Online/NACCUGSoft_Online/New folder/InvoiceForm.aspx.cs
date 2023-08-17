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
using System.IO;
using System.Text;

namespace NACCUGSoft_Online
{
    public partial class withdrawalForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  string mcode = Request.Form["mcode"];
          //  mcode = Global.GlUserNames;

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            if (trandate.Text != string.Empty && tranamount.Text != string.Empty)
            {
                double balances = Convert.ToDouble(tranamount.Text.Trim()) + Convert.ToDouble(balance.Text.Trim());
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string query = "insert into tranhist (cacctnumb,ccontra,dpostdate,dvaluedate,receiptno,ntranamnt,ctrandesc,nnewbal,dtrandate,compid)  values ('" + DropDownList1.SelectedValue.Trim() + "','" + DropDownList1.SelectedValue.Trim() + "','" + trandate.Text + "','" + trandate + "','" + refnumber.Text.Trim() + "','" + tranamount.Text.Trim() + "','" + trandesc.Text.Trim() + "', '" + balances + "' ,'" + trandate.Text + "',30)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                UpdateBalance();

                string message = "Contribution Sent Successfully!!!";

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

           // TextBox1.Text = string.Empty;
            baddress.Text = string.Empty;
            bname.Text = string.Empty;
           // balance = string.Empty;
            baddress.Text = string.Empty;
            refnumber.Text = string.Empty;
           // tranamount = string.Empty;
            phonenumber.Text = string.Empty;

            sms();
        }
        protected void Submitt_Click(object sender, EventArgs e)
        {

           // string mcode = Request.Form["mcode"];
           // string bname = Request.Form["bname"];
           // string baddress = Request.Form["baddress"];
           // string phonenumber = Request.Form["phonenumber"];
           // string trandesc = Request.Form["trandesc"];
           // string refnumber = Request.Form["refnumber"];
           // string balance = Request.Form["balance"];

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();

            SqlCommand command = new SqlCommand("SPOnlineRegistration", con);
          //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.SelectedValue));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = command.ExecuteReader();
             if (dr.HasRows)
            {
                while (dr.Read())
                {
                    bname.Text = dr.GetString(dr.GetOrdinal("businessname"));
                    baddress.Text = dr.GetString(dr.GetOrdinal("baddress"));
                    phonenumber.Text = dr.GetString(dr.GetOrdinal("phone"));
                    balance.Text = dr.GetDecimal(dr.GetOrdinal("nbookbal")).ToString();
                }
            }
            else
            {
                string message = "No details fund, Please confirm your Member Code!!!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            con.Close();
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

        private void UpdateBalance()
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string cglquery = "Update OnlineRegistration set nbookbal = nbookbal  +  '"+ Convert.ToDouble(tranamount.Text.Trim()) + "'  where custcode = '" + DropDownList1.SelectedValue.Trim() + "'";
            SqlCommand cmd = new SqlCommand(cglquery, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter updCommand = new SqlDataAdapter();
        }
            protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            SqlCommand command = new SqlCommand("SPOnlineRegistration", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.SelectedValue));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    bname.Text = dr.GetString(dr.GetOrdinal("businessname"));
                    baddress.Text = dr.GetString(dr.GetOrdinal("baddress"));
                    phonenumber.Text = dr.GetString(dr.GetOrdinal("phone"));
                    balance.Text = dr.GetDecimal(dr.GetOrdinal("nbookbal")).ToString();
                }
            }
            else
            {
                string message = "No details fund, Please confirm your Member Code!!!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            con.Close();
        }
    }
}