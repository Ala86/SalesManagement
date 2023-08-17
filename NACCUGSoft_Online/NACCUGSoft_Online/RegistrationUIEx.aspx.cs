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
    public partial class RegistrationUIEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.GlUserNames == "")  //|| Global.GlUserNames == " "
            {
                Response.Redirect("NewLoginUI.aspx");
            }
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            // string memtype = Request.Form["memtype"];
            // string bname = Request.Form["bname"];
            // string rstatus = Request.Form["rstatus"];
            // string nationality = Request.Form["nationality"];
            // string region = Request.Form["region"];
            // string branch = Request.Form["branch"];
            // string bnature = Request.Form["bnature"];
            // string tin = Request.Form["tin"];
            // DateTime rdate = Convert.ToDateTime(Request.Form["rdate"]);
            // DateTime renewaldate = Convert.ToDateTime(Request.Form["renewaldate"]);
            // string district = Request.Form["district"];
            // string ward = Request.Form["ward"];
            // string country = Request.Form["country"];
            // string phonenumber = Request.Form["phonenumber"];
            // string web = Request.Form["web"];
            //// string gender = Request.Form["gender"];
            // DateTime datejoin = Convert.ToDateTime(Request.Form["datejoin"]);
            // string residential = Request.Form["residential"];
            // string idtype = Request.Form["idtype"];
            // string pissued = Request.Form["pissued"];
            // DateTime dexpired = Convert.ToDateTime(Request.Form["dexpired"]);
            // string idnumber = Request.Form["idnumber"];
            // string membership = Request.Form["membership"];
            // DateTime dateissued = Convert.ToDateTime(Request.Form["dateissued"]);
            // string cperson = Request.Form["cperson"];
            // string empnongam = Request.Form["empnongam"];
            // string Relationship = Request.Form["Relationship"]; 
            // string RelationshipAdress = Request.Form["RelationshipAdress"];
            // string city = Request.Form["city"];
            // string email = Request.Form["email"];
            // string cpersonaddress = Request.Form["cpersonaddress"];
            // string empgam = Request.Form["empgam"];
            // string baddress = Request.Form["baddress"];
            // string cpersonphonenumber = Request.Form["cpersonphonenumber"];
            // string cpersonemail = Request.Form["cpersonemail"]; 
            // string skillemp = Request.Form["skillemp"];
            // string unskillemp = Request.Form["unskillemp"];
            // string marketserved = Request.Form["marketserved"]; 
            // string capacityproduct = Request.Form["capacityproduct"];
            // int totemployees = Convert.ToInt16(Request.Form["totemployees"]);
            // int totmale = Convert.ToInt16(Request.Form["totmale"]);
            // int totfemale = Convert.ToInt16(Request.Form["totfemale"]);
            // double monthlysave = Convert.ToDouble(Request.Form["monthlysave"]);
            // string employeraddress = Request.Form["employeraddress"];
            // string wproduct = Request.Form["wproduct"]; 

            if (bname.Text != string.Empty && phonenumber.Text != string.Empty && email.Text != string.Empty)
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string query = "insert into OnlineRegistration (businessname,residential,region,branch,bnature,district,tin,datejoin,dateexpired,web,placeissued,idnumber,dateissued,phone,country,city,email,cperson,cpersonaddress,cpersonphone,baddress,renewdate,idtype,bregistrationDate,compid)  values ('" + bname.Text + "','" + rstatus.Text + "','" + Region.Text + "','" + branch.Text + "','" + bnature.Text + "','" + district.Text + "','" + tin.Text + "','" + datejoin.Text + "','" + dexpired.Text + "','" + web.Text + "','" + pissued.Text + "','" + idnumber.Text + "','" + dateissued.Text + "','" + phonenumber.Text + "','" + country.Text + "','" + city.Text + "','" + email.Text + "','" + cperson.Text + "','" + cpersonaddress.Text + "','" + cpersonPhone.Text + "','" + baddress.Text + "','" + renewaldate.Text + "','" + idtype.Text + "','" + rdate.Text + "','"+Global.GlUserCompID+"')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                string message = "Supplier registration added successfully!!!";

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

            bname.Text = string.Empty;
            //  bnature.SelectedIndex = -1;
            rstatus.Text = string.Empty;
            // DropDownList1.SelectedIndex = -1;
            // DropDownList2.SelectedIndex = -1;
            //DropDownList3.SelectedIndex = -1;
            //RadioButtonList4.SelectedValue = string.Empty;
            //nationality = string.Empty;
            //  branch.Text = string.Empty;
            //DropDownList9.SelectedIndex = -1;
            //   Region.Text = string.Empty;
            //  district.Text = string.Empty;
            //  idtype.Text = string.Empty;
            idnumber.Text = string.Empty;
            // DropDownList5.SelectedIndex = -1;
            //DropDownList7.SelectedIndex = -1;
            //  DropDownList8.SelectedIndex = -1;
            //RadioButtonList2.SelectedValue = string.Empty;
            //TextBox10.Text = string.Empty;
            // DropDownList10.SelectedIndex = -1;
            // DropDownList11.SelectedIndex = -1;
            cperson.Text = string.Empty;
            cpersonPhone.Text = string.Empty;
            email.Text = string.Empty;
            cpersonPhone.Text = string.Empty;
            baddress.Text = string.Empty;
            //  district.Text= string.Empty;
            //   w. = string.Empty;
            //  country.Text = string.Empty;
            // DropDownList12.SelectedIndex = -1;
            //  gender= string.Empty;
            // rstatus.Text = string.Empty;
            // DropDownList13.SelectedIndex = -1;
            // DropDownList14.SelectedIndex = -1;

        }
    }
}