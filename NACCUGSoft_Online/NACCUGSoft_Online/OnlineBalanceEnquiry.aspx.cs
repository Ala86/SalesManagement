using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public partial class OnlineBalanceEnquiry : System.Web.UI.Page
    {
        int ncompid = 30;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Global.GCmemtype0 == "0")
                {
                    DropDownList1.Visible = false;
                    TextBox1.Text = Global.GlUserNames;
                    getEntityAccounts();

                }
                else
                {
                    TextBox1.Visible = false;
                    getEntityCode();
                    getEntityAccounts2();
                }

            }
        }
        private void getEntityAccounts()
        {

            String strConnString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("tsp_getIndMembersAccounts_Ala", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", TextBox1.Text));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            acctgrid.DataSource = dt;
            acctgrid.DataBind();
        }
        private void getEntityAccounts2()
        {

            String strConnString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("tsp_getIndMembersAccounts_Ala", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.SelectedValue));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            acctgrid.DataSource = dt;
            acctgrid.DataBind();
        }


        private void getEntityCode()
        {

            // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

                string com = "select ltrim(rtrim(ccustfname))+' '+ltrim(rtrim(ccustmname))+' '+ltrim(rtrim(ccustlname))  as membname,ccustcode,cstaffno from cusreg where cusreg.compid=30 and lactive=1";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "membname";
                DropDownList1.DataValueField = "ccustcode";
                DropDownList1.DataBind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            getEntityAccounts2();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}