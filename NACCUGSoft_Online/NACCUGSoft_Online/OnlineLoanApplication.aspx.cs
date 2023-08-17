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
    public partial class OnlineLoanApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{

            //    Combranch();
            //    CombNationality();
            //    CombCity();
            //    Combposition();
            //    CombLoanReason();
              

            //}
            //TextBox26.Text = Global.GlUserNames;
            //TextBox2.Text = Global.GlUserNamesf;
            //TextBox3.Text = Global.GlUserNamesm;
            //TextBox4.Text = Global.GlUserNamesl;
            //TextBox1.Text = Global.GlUserNamesp;
            //TextBox19.Text = Global.GlUserNamesc;

        }
        private void Combranch()
        {

            // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

                string com = "select branchid,br_name from branch";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "br_name";
                DropDownList1.DataValueField = "br_name";
                DropDownList1.DataBind();
                //getEntityCode1();
            }
        }
        private void Combposition()
        {

            // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

                string com = "select des_id,des_name from designation";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataBind();
                DropDownList2.DataTextField = "des_name";
                DropDownList2.DataValueField = "des_name";
                DropDownList2.DataBind();
                //getEntityCode1();
            }
        }
        private void CombLoanReason()
        {

            // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

                string com = "select res_id,res_name from loanReason";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataBind();
                DropDownList3.DataTextField = "res_name";
                DropDownList3.DataValueField = "res_name";
                DropDownList3.DataBind();
                //getEntityCode1();
            }
        }
        private void CombCity()
        {

            // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

                string com = "select city_id,city_name from city";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList5.DataSource = dt;
                DropDownList5.DataBind();
                DropDownList5.DataTextField = "city_name";
                DropDownList5.DataValueField = "city_name";
                DropDownList5.DataBind();
                //getEntityCode1();
            }
        }
        private void CombNationality()
        {

            // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

                string com = "select cou_id,cou_name from country";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList4.DataSource = dt;
                DropDownList4.DataBind();
                DropDownList4.DataTextField = "cou_name";
                DropDownList4.DataValueField = "cou_name";
                DropDownList4.DataBind();
                //getEntityCode1();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        //    if (TextBox2.Text != string.Empty && TextBox4.Text != string.Empty && TextBox5.Text != string.Empty && TextBox6.Text != string.Empty && TextBox19.Text != string.Empty)
        //    {
        //        string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //        SqlConnection con = new SqlConnection(connStr);
        //        con.Open();
        //        string query = "insert into OnlineLoanApplication (employeeNo,fname,mname,lname,previousAmount,appliedAmount,savingsAmount,branchid,position,loanreason,cwork,cends,trandate,country,city,PhoneNumber,[caddress],email,guarantor1,gua1phone,gua1ContractPeriod,gua1savings,gua1Empnumber,guarantor2,gua2phone,gua2ContractPeriod,gua2savings,gua2Empnumber,ccustcode)  values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + RadioButtonList1.SelectedValue + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox18.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox15.Text + "','" + TextBox24.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox22.Text + "','" + TextBox23.Text + "','" + TextBox25.Text + "','" + TextBox26.Text + "')";
        //        SqlCommand cmd = new SqlCommand(query, con);
        //        cmd.ExecuteNonQuery();

        //        string message = "Loan Application added successfully!!!";

        //        System.Text.StringBuilder sb = new System.Text.StringBuilder();

        //        sb.Append("<script type = 'text/javascript'>");

        //        sb.Append("window.onload=function(){");

        //        sb.Append("alert('");

        //        sb.Append(message);

        //        sb.Append("')};");

        //        sb.Append("</script>");

        //        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        //    }

        //    else

        //    {

        //        string message = "Please enter the records";

        //        System.Text.StringBuilder sb = new System.Text.StringBuilder();

        //        sb.Append("<script type = 'text/javascript'>");

        //        sb.Append("window.onload=function(){");

        //        sb.Append("alert('");

        //        sb.Append(message);

        //        sb.Append("')};");

        //        sb.Append("</script>");

        //        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


        //    }

        //    TextBox1.Text = string.Empty;
        //    TextBox2.Text = string.Empty;
        //    TextBox3.Text = string.Empty;
        //    DropDownList1.SelectedIndex = -1;
        //    DropDownList2.SelectedIndex = -1;
        //    DropDownList3.SelectedIndex = -1;
        //   TextBox4.Text = string.Empty;
        //    TextBox5.Text = string.Empty;
        //    TextBox7.Text = string.Empty;
        //    TextBox6.Text = string.Empty;
        //    TextBox8.Text = string.Empty;
        //    TextBox9.Text = string.Empty;
        //    DropDownList5.SelectedIndex = -1;
        //    TextBox10.Text = string.Empty;
        //     TextBox11.Text = string.Empty;
        //    TextBox12.Text = string.Empty;
        //    TextBox13.Text = string.Empty;
        //    TextBox14.Text = string.Empty;
        //    TextBox15.Text = string.Empty;
        //    TextBox18.Text = string.Empty;
        //    TextBox19.Text = string.Empty;
        //    TextBox20.Text = string.Empty;
        //    TextBox22.Text = string.Empty;
        //    TextBox25.Text = string.Empty;
        //    TextBox23.Text = string.Empty;
        //    TextBox24.Text = string.Empty;
        //    TextBox26.Text = string.Empty;
        }
    }
}