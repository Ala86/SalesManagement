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
    public partial class RegistrationUIInd : System.Web.UI.Page
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
           // string fname = Request.Form["fname"];
           // string mstatus = Request.Form["mstatus"];
           // string nationality = Request.Form["nationality"];
           // //double appliedamount = Convert.ToDouble(Request.Form["appliedamount"]);
           // //double savingsAmount = Convert.ToDouble(Request.Form["pamount"]);
           // //double pamount = Convert.ToDouble(Request.Form["savingsAmount"]);
           // string region = Request.Form["region"];
           // string branch = Request.Form["branch"];
           // string mname = Request.Form["mname"];
           // string title = Request.Form["title"];
           // DateTime ddate = Convert.ToDateTime(Request.Form["ddate"]);
           // string district = Request.Form["district"];
           // string ward = Request.Form["ward"];
           // string country = Request.Form["country"];
           // string pnumber = Request.Form["pnumber"];
           // string lname = Request.Form["lname"];
           // string gender = Request.Form["gender"];
           // DateTime datejoin = Convert.ToDateTime(Request.Form["datejoin"]);
           // string residential = Request.Form["residential"];
           // string idtype = Request.Form["idtype"];
           // string pissued = Request.Form["pissued"];
           // DateTime dateexpired = Convert.ToDateTime(Request.Form["dateexpired"]);
           // string idnumber = Request.Form["idnumber"];
           // string membership = Request.Form["membership"];
           // string Dependance = Request.Form["Dependance"];
           // string gperiod = Request.Form["gperiod"]; 
           // DateTime dateissued = Convert.ToDateTime(Request.Form["dateissued"]);
           //// double country = Convert.ToDouble(Request.Form["gsaving"]);
           // string refname = Request.Form["refname"];
           // string nextofkin = Request.Form["nextofkin"];
           // string Relationship = Request.Form["Relationship"]; 
           // string RelationshipAdress = Request.Form["RelationshipAdress"];
           // string city = Request.Form["city"];
           // string email = Request.Form["email"];
           // string refaddress = Request.Form["refaddress"];
           //// double gsaving2 = Convert.ToDouble(Request.Form["gsaving2"]);
           // string nextofkinPhone = Request.Form["nextofkinPhone"];
           // string Address = Request.Form["Address"];
           // string refphonenumber = Request.Form["refphonenumber"];
           // string refemail = Request.Form["refemail"]; 
           // string nextofkinaddress = Request.Form["nextofkinaddress"];
           // string Employer = Request.Form["Employer"];
           // double Salary = Convert.ToDouble(Request.Form["Salary"]);
           // string employeephne = Request.Form["employeephne"]; 
           // string employernumber = Request.Form["employernumber"];
           // string Position = Request.Form["Position"]; 
           // double monthlysave = Convert.ToDouble(Request.Form["monthlysave"]);
           // string employeraddress = Request.Form["employeraddress"];
           // string Department = Request.Form["Department"]; 

            if (fname.Text != string.Empty && lname.Text != string.Empty)
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string query = "insert into CustomerRegistration (fname,mname,lname,maritalstatus,title,gender,dob,datejoin,idtype,placeissued,idnumber,dateissued,dateexpired,nationality,residential,city,address,phone,email,compid)  values ('" + fname.Text + "','" + mname.Text + "','" + lname.Text + "','" + mstatus.SelectedValue + "','" + title.SelectedValue + "','" + gender.SelectedValue + "','" + dbirth.Text + "','" + datejoin.Text + "','" + idtype.SelectedValue + "','" + pissued.Text + "','" + idnumber.Text + "','" + dateissued.Text + "','" + dexpired.Text + "','" + Nationality.SelectedValue + "','" + Residential.SelectedValue + "','" + City.Text + "','" + Address.Text + "','" + phonenumber.Text + "','" + email.Text + "','"+Global.GlUserCompID+"')";
                //               string query = "insert into CustomerRegistration (fname,mname,lname,branch,maritalstatus,title,gender,dob,datejoin,idtype,placeissued,idnumber,dateissued,dateexpired,nationality,district,ward,residential,dependance,country,city,address,phone,email,rname,raddress,rmobile,remail,nextofkin,nextphone,relationship,relationaddress,employer,empaddress,employerphone,monthlysavings,EmpNo,salary,position,dept)  values ('" + fname + "','" + mname + "','" + lname + "','" + branch + "','" + mstatus + "','" + title + "','" + gender + "','" + ddate + "','" + datejoin + "','" + idtype + "','" + pissued + "','" + idnumber + "','" + dateissued + "','" + dateexpired + "','" + nationality + "','" + district + "','" + ward + "','" + residential + "','" + Dependance + "','" + country + "','" + city + "','" + Address + "','" + pnumber + "','" + email + "','" + refname + "','" + refaddress + "','" + refphonenumber + "','" + refemail + "','" + nextofkin + "','" + nextofkinPhone + "','" + Relationship + "','" + RelationshipAdress + "','" + Employer + "','" + employeraddress + "','" + employeephne + "','" + monthlysave + "','" + employernumber + "','" + Salary + "','" + Position + "','" + Department + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                string message = "Customer registration added successfully!!!";

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

            fname.Text = string.Empty;
            mname.Text = string.Empty;
            lname.Text = string.Empty;
            // DropDownList1.SelectedIndex = -1;
            // DropDownList2.SelectedIndex = -1;
            //DropDownList3.SelectedIndex = -1;
            //RadioButtonList4.SelectedValue = string.Empty;
            ////Nationality.Text = string.Empty;
            //branch = string.Empty;
            //DropDownList9.SelectedIndex = -1;
           // mstatus.Text = string.Empty;
          //  title.Text = string.Empty;
          //  idtype.Text = string.Empty;
            idnumber.Text = string.Empty;
            // DropDownList5.SelectedIndex = -1;
            //DropDownList7.SelectedIndex = -1;
            //  DropDownList8.SelectedIndex = -1;
            //RadioButtonList2.SelectedValue = string.Empty;
            //TextBox10.Text = string.Empty;
            // DropDownList10.SelectedIndex = -1;
            // DropDownList11.SelectedIndex = -1;
            // DropDownList12.SelectedIndex = -1;
           //gender= string.Empty;
            //residentia = string.Empty;
            // DropDownList13.SelectedIndex = -1;
            // DropDownList14.SelectedIndex = -1;

        }
    }
}