using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace NACCUGSoft_Online
{
    public partial class OnlineRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{

            //    Combranch();
            //    Commatrial();
            //    Combtitle();
            //    CombNationality();
            //    CombCountry();
            //    CombRegion();
            //    CombWard();
            //    CombIdtype();
            //    CombCity();
            //    CombEmployer();
            //    Combposition();
            //    Combdept();

            //}
        }
        private void Combranch()
        {

            //// using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
            //string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //SqlConnection con = new SqlConnection(connStr);
            //con.Open();
            //{

            //    string com = "select branchid,br_name from branch";
            //    SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            //    DataTable dt = new DataTable();
            //    adpt.Fill(dt);
            //    DropDownList1.DataSource = dt;
            //    DropDownList1.DataBind();
            //    DropDownList1.DataTextField = "br_name";
            //    DropDownList1.DataValueField = "br_name";
            //    DropDownList1.DataBind();
            //    //getEntityCode1();
            //}
        }
        //private void Commatrial()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select mar_id,mar_name from marystat";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList2.DataSource = dt;
        //        DropDownList2.DataBind();
        //        DropDownList2.DataTextField = "mar_name";
        //        DropDownList2.DataValueField = "mar_name";
        //        DropDownList2.DataBind();
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
        //        DropDownList3.DataSource = dt;
        //        DropDownList3.DataBind();
        //        DropDownList3.DataTextField = "tit_name";
        //        DropDownList3.DataValueField = "tit_name";
        //        DropDownList3.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        //private void CombNationality()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select cou_id,cou_name from country";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList5.DataSource = dt;
        //        DropDownList5.DataBind();
        //        DropDownList5.DataTextField = "cou_name";
        //        DropDownList5.DataValueField = "cou_name";
        //        DropDownList5.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        //private void CombWard()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select ward_id,ward_name from ward";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList8.DataSource = dt;
        //        DropDownList8.DataBind();
        //        DropDownList8.DataTextField = "ward_name";
        //        DropDownList8.DataValueField = "ward_name";
        //        DropDownList8.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        //private void CombCountry()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select cou_id,cou_name from country";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList10.DataSource = dt;
        //        DropDownList10.DataBind();
        //        DropDownList10.DataTextField = "cou_name";
        //        DropDownList10.DataValueField = "cou_name";
        //        DropDownList10.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        //private void CombRegion()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select coun_id,coun_name from county";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList7.DataSource = dt;
        //        DropDownList7.DataBind();
        //        DropDownList7.DataTextField = "coun_name";
        //        DropDownList7.DataValueField = "coun_name";
        //        DropDownList7.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        //private void CombIdtype()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select idtype,id_name from id_type";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList9.DataSource = dt;
        //        DropDownList9.DataBind();
        //        DropDownList9.DataTextField = "id_name";
        //        DropDownList9.DataValueField = "id_name";
        //        DropDownList9.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        //private void CombCity()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select city_id,city_name from city";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList11.DataSource = dt;
        //        DropDownList11.DataBind();
        //        DropDownList11.DataTextField = "city_name";
        //        DropDownList11.DataValueField = "city_name";
        //        DropDownList11.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        //private void CombEmployer()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select emp_id,emp_name from employer";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList12.DataSource = dt;
        //        DropDownList12.DataBind();
        //        DropDownList12.DataTextField = "emp_name";
        //        DropDownList12.DataValueField = "emp_name";
        //        DropDownList12.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        //private void Combposition()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select des_id,des_name from designation";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList13.DataSource = dt;
        //        DropDownList13.DataBind();
        //        DropDownList13.DataTextField = "des_name";
        //        DropDownList13.DataValueField = "des_name";
        //        DropDownList13.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        //private void Combdept()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select dep_id,dep_name from dept";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList14.DataSource = dt;
        //        DropDownList14.DataBind();
        //        DropDownList14.DataTextField = "dep_name";
        //        DropDownList14.DataValueField = "dep_name";
        //        DropDownList14.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        protected void Button1_Click(object sender, EventArgs e)
        {
            //if ( TextBox4.Text != string.Empty && TextBox5.Text != string.Empty && TextBox11.Text != string.Empty && TextBox17.Text != string.Empty && TextBox18.Text != string.Empty)
            //{
            //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //    SqlConnection con = new SqlConnection(connStr);
            //    con.Open();
            //    string query = "insert into OnlineRegistration (fname,mname,lname,branch,maritalstatus,title,gender,dob,datejoin,idtype,placeissued,idnumber,dateissued,dateexpired,nationality,district,ward,residential,dependance,country,city,address,phone,email,rname,raddress,rmobile,remail,nextofkin,nextphone,relationship,relationaddress,employer,empaddress,employerphone,monthlysavings,EmpNo,salary,position,dept)  values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + RadioButtonList4.SelectedValue + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList9.Text + "','" + TextBox7.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + DropDownList5.Text + "','" + DropDownList7.Text + "','" + DropDownList8.Text + "','" + RadioButtonList2.SelectedValue + "','" + TextBox10.Text + "','" + DropDownList10.Text + "','" + DropDownList11.Text + "','" + TextBox26.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + DropDownList12.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "','" + TextBox25.Text + "','" + TextBox23.Text + "','" + TextBox24.Text + "','" + DropDownList13.Text + "','" + DropDownList14.Text + "')";
            //    SqlCommand cmd = new SqlCommand(query, con);
            //    cmd.ExecuteNonQuery();

            //    string message = "Customer registration added successfully!!!";

            //    System.Text.StringBuilder sb = new System.Text.StringBuilder();

            //    sb.Append("<script type = 'text/javascript'>");

            //    sb.Append("window.onload=function(){");

            //    sb.Append("alert('");

            //    sb.Append(message);

            //    sb.Append("')};");

            //    sb.Append("</script>");

            //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            //}

            //else

            //{

            //    string message = "Please enter the records";

            //    System.Text.StringBuilder sb = new System.Text.StringBuilder();

            //    sb.Append("<script type = 'text/javascript'>");

            //    sb.Append("window.onload=function(){");

            //    sb.Append("alert('");

            //    sb.Append(message);

            //    sb.Append("')};");

            //    sb.Append("</script>");

            //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


            //}

            //TextBox1.Text = string.Empty;
            //TextBox2.Text = string.Empty;
            //TextBox3.Text = string.Empty;
            // DropDownList1.SelectedIndex = -1;
            // DropDownList2.SelectedIndex = -1;
            //DropDownList3.SelectedIndex = -1;
            //RadioButtonList4.SelectedValue = string.Empty;
            //TextBox4.Text = string.Empty;
            //TextBox5.Text = string.Empty;
            //DropDownList9.SelectedIndex = -1;
            //TextBox7.Text = string.Empty;
            //TextBox6.Text = string.Empty;
            //TextBox8.Text = string.Empty;
            //TextBox9.Text = string.Empty;
            // DropDownList5.SelectedIndex = -1;
            //DropDownList7.SelectedIndex = -1;
            //  DropDownList8.SelectedIndex = -1;
            //RadioButtonList2.SelectedValue = string.Empty;
            //TextBox10.Text = string.Empty;
            // DropDownList10.SelectedIndex = -1;
            // DropDownList11.SelectedIndex = -1;
            //TextBox26.Text = string.Empty;
            //TextBox11.Text = string.Empty;
            //TextBox12.Text = string.Empty;
            //TextBox13.Text = string.Empty;
            //TextBox14.Text = string.Empty;
            //TextBox15.Text = string.Empty;
            //TextBox16.Text = string.Empty;
            //TextBox17.Text = string.Empty;
            //TextBox18.Text = string.Empty;
            //TextBox19.Text = string.Empty;
            //TextBox20.Text = string.Empty;
            // DropDownList12.SelectedIndex = -1;
            //TextBox21.Text = string.Empty;
            //TextBox22.Text = string.Empty;
            //TextBox25.Text = string.Empty;
            //TextBox23.Text = string.Empty;
            //TextBox24.Text = string.Empty;
            // DropDownList13.SelectedIndex = -1;
            // DropDownList14.SelectedIndex = -1;
        }

        protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}