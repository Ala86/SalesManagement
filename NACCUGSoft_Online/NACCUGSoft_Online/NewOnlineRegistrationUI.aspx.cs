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
    public partial class NewOnlineRegistrationUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            string ccustcode = Request.Form["ccustcode"];
            string mempnumber = Request.Form["mempnumber"];
            string fname = Request.Form["fname"];
            string branch = Request.Form["branch"]; 
            double appliedamount = Convert.ToDouble(Request.Form["appliedamount"]);
            double savingsAmount = Convert.ToDouble(Request.Form["pamount"]);
            double pamount = Convert.ToDouble(Request.Form["savingsAmount"]);
            string yes = Request.Form["yes"];
            string no = Request.Form["no"];
            string mname = Request.Form["mname"];
            string occupation = Request.Form["occupation"];
            DateTime ddate = Convert.ToDateTime(Request.Form["ddate"]);
            string mnumber = Request.Form["mnumber"];
            string lname = Request.Form["lname"];
            string purpose = Request.Form["purpose"];
            DateTime cend = Convert.ToDateTime(Request.Form["cend"]);
            string addressline = Request.Form["addressline"];
            string country = Request.Form["country"];
            string pnumber = Request.Form["pnumber"];
            string email = Request.Form["email"];
            string city = Request.Form["city"];
            string semail = Request.Form["semail"];
            string gname = Request.Form["gname"];
            string gperiod = Request.Form["gperiod"];
            double gsaving = Convert.ToDouble(Request.Form["gsaving"]);
            string enumber = Request.Form["enumber"];
            string phonenum = Request.Form["phonenum"];
            string temail = Request.Form["temail"];
            string gname2 = Request.Form["gname2"];
            string g2phonenumber = Request.Form["g2phonenumber"];
            string gperiod2 = Request.Form["gperiod2"];
            double gsaving2 = Convert.ToDouble(Request.Form["gsaving2"]);
            string empnumber = Request.Form["empnumber"];
            string g2email = Request.Form["g2email"];
            //string country = Request.Form["country"];
            //string pnumber = Request.Form["pnumber"];

            if (ccustcode != string.Empty && fname != string.Empty  && lname != string.Empty && purpose != string.Empty)
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string query = "insert into OnlineLoanApplication (employeeNo,fname,mname,lname,previousAmount,appliedAmount,savingsAmount,branchid,position,loanreason,cwork,cends,trandate,country,city,PhoneNumber,[caddress],email,guarantor1,gua1phone,gua1ContractPeriod,gua1savings,gua1Empnumber,guarantor2,gua2phone,gua2ContractPeriod,gua2savings,gua2Empnumber,ccustcode)  values ('" + empnumber + "','" + fname + "','" + mname + "','" + lname + "','" + pamount + "','" + appliedamount + "','" + savingsAmount + "','" + branch + "','" + occupation + "','" + purpose + "','" + yes + "','" + cend + "','" + ddate + "','" + country + "','" + city + "','" + phonenum + "','" + addressline + "','" + email + "','" + gname + "','" + phonenum + "','" + gperiod + "','" + gsaving + "','" + enumber + "','" + gname2 + "','" + g2phonenumber + "','" + gperiod2 + "','" + gsaving2 + "','" + empnumber + "','" + ccustcode + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                string message = "Loan Application added successfully!!!";

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
           mname= string.Empty;
            lname = string.Empty;
            //DropDownList1.SelectedIndex = -1;
            //DropDownList2.SelectedIndex = -1;
            //DropDownList3.SelectedIndex = -1;
            addressline = string.Empty;
            appliedamount = 0;
            savingsAmount = 0;
            empnumber = string.Empty;
            email = string.Empty;
            phonenum = string.Empty;
          //  DropDownList5.SelectedIndex = -1;
            pnumber = string.Empty;
            gname = string.Empty;
            gname2 = string.Empty;
            gperiod = string.Empty;
            temail = string.Empty;
           // cend = string.Empty;
            city = string.Empty;
            country = string.Empty;
            purpose = string.Empty;
            pnumber = string.Empty;
           g2email = string.Empty;
            // = string.Empty;
            //TextBox24.Text = string.Empty;
            //TextBox26.Text = string.Empty;

        }
    }
}