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
    public partial class createuser : System.Web.UI.Page
    {
        int ncompid = Global.GlUserCompID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.GlUserNames == "")  //|| Global.GlUserNames == " "
            {
                Response.Redirect("NewLoginUI.aspx");
            }
            getEntityCode1();
        }

        private void getEntityCode1()
        {

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {
                SqlCommand command = new SqlCommand("SPcompID", con);
                //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
                command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
                command.CommandType = CommandType.StoredProcedure;
                //  SqlDataReader da = command.ExecuteReader();

                //   string com = "Select custcode, nbookbal, ltrim(rtrim(businessname)) as Account_Name from cusreg where ccustcode = '" + TextBox1.Text.Trim() + "' and nbookbal <> 0";
                //  string com = "select product_id ,prod_name from products";
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "com_name";
                DropDownList1.DataValueField = "compid";
                DropDownList1.DataBind();
                //getEntityCode1();

            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (fname.Text != string.Empty && lname.Text != string.Empty && mname.Text != string.Empty && ddate.Text != string.Empty)
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                //    string query = "insert into OnlineVisaRequest ( empNo ,fname ,mname,lname,title,telephone,trandate,purpose,maddress,ccustcode)  values ('" + enumber + "','" + fname + "','" + mname + "','" + lname + "','" + jobtitle + "','" + phonenumber + "','" + ddate + "','" + purpose + "','" + address + "','" + mcode + "')";
                string query = "insert into susers (oprcode,username,pswd,firstname,lastname,dateforce,mobileNo,midname,accesslvl,compid)  values ('" + mname.Text + "','" + fname.Text + "','" + enumber.Text + "','" + fname.Text + "','" + lname.Text + "','" + ddate.Text + "','" + phonenumber.Text + "','" + jobtitle.Text + "','"+ RadioButtonList1.SelectedValue + "','"+ Global.GlUserCompID + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                string message = "User Successfully Add!!!";

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

                string message = "Please make sure all the mandatory fields are filled!!!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }

            mname.Text = string.Empty;
            fname.Text = string.Empty;
            enumber.Text = string.Empty;
            fname.Text = string.Empty;
            lname.Text = string.Empty;
            ddate.Text = string.Empty;
            phonenumber.Text = string.Empty;
            jobtitle.Text = string.Empty;
        }
    }
}