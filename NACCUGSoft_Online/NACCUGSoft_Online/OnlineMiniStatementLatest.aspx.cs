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
    public partial class OnlineMiniStatementLatest : System.Web.UI.Page
    {
        int ncompid = 30;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                if (Global.GCmemtype0 == "0")
                {
                    DropDownList2.Visible = false;
                    TextBox1.Text = Global.GlUserNames;
                    combobox1();
                    getEntityTransaction();

                }
                else
                {
                    TextBox1.Visible = false;
                    getEntityCode();
                    combobox11();
                    getEntityTransaction();

                }

            }
        }


        private void getEntityAccounts2()
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
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        private void combobox1()
        {

            // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

                string com = "Select cacctnumb, nbookbal, ltrim(rtrim(cacctname))+";
                com += "case when left(ltrim(rtrim(glmast.cacctnumb)), 3) in ('250','251') then ' << Savings >>' else ";
                com += "case when left(ltrim(rtrim(glmast.cacctnumb)), 3) in ('270','271') then ' << Shares >>' else ";
                com += " case when left(ltrim(rtrim(glmast.cacctnumb)), 3) in ('130','131') then ' << Loans >>' else '' ";
                com += "   end end end as Account_Name from glmast where ccustcode = '" + TextBox1.Text + "' and nbookbal <> 0";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "Account_Name";
                DropDownList1.DataValueField = "cacctnumb";
                DropDownList1.DataBind();
                //getEntityCode1();
            }
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
                DropDownList2.DataSource = dt;
                DropDownList2.DataBind();
                DropDownList2.DataTextField = "membname";
                DropDownList2.DataValueField = "ccustcode";
                DropDownList2.DataBind();
                //    getEntityAccounts2();
            }
        }
        private void combobox11()
        {

            // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

                string com = "Select cacctnumb,cacctname, nbookbal from glmast where ccustcode = '" + DropDownList2.SelectedValue + "' and nbookbal <> 0";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "cacctnumb";
                DropDownList1.DataValueField = "cacctnumb";
                DropDownList1.DataBind();
                //getEntityCode1();
            }
        }
        private void getEntityTransaction()
        {

            // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

                string com = "Select top(5) row_number() over (order by dtrandate desc) as 'Number', dtrandate as Transaction_Date,cacctnumb as Account_Number,ntranamnt as Transaction_Amount,ctrandesc as Transaction_Narrative from tranhist where cacctnumb = '" + DropDownList1.SelectedValue + "' and ntranamnt <> 0 and ctrancode <> 21 and reverseflag = 0 group by dtrandate ,cacctnumb, ntranamnt,ctrandesc order by dtrandate desc";

                //            string com = "Select top(10)  dtrandate,cacctnumb,ntranamnt,ctrandesc from tranhist where left(cacctnumb,3) = '250' and ccustcode = '" + TextBox1.Text + "' and ntranamnt > 0 order by dtrandate desc";
                SqlDataAdapter da = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                //getEntityCode1();
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Global.GCmemtype0 == "0")
            {
                getEntityTransaction();
            }
            else
            {
                combobox11();
                getEntityTransaction();
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
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
                DropDownList2.DataSource = dt;
                DropDownList2.DataBind();
                DropDownList2.DataTextField = "membname";
                DropDownList2.DataValueField = "ccustcode";
                DropDownList2.DataBind();
                //    getEntityAccounts2();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
//}