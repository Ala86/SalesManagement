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
    public partial class OnlineMiniStatement : System.Web.UI.Page
    {
        int ncompid = 30;
        //DataTable intview = new DataTable();
        //DataTable acctview = new DataTable();
        //DataTable transview = new DataTable();
        //DataTable entview = new DataTable();
        //DataTable entAcctView = new DataTable();
        //DataTable entTranView = new DataTable();
       // string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

        public object searchValue { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            //DataTable intview = new DataTable();
            //  getAccounts();

            //if (!Page.IsPostBack)
            //{
            //        getEntityCode();
            //        getEntityCode1();
            //       //    getEntityCode1();
            //}
            
        }

      
        //private void getEntityCode()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "exec tsp_getIndMembers  " + "30";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList1.DataSource = dt;
        //        DropDownList1.DataBind();
        //        DropDownList1.DataTextField = "membname";
        //        DropDownList1.DataValueField = "ccustcode";
        //        DropDownList1.DataBind();
        //        //getEntityCode1();
        //    }
        //}

        //private void getDropdownlist2()
        //{

        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {
        //        string cval = DropDownList1.SelectedValue.ToString();
        //        Response.Write("i have Selected" + cval);
        //        Session.Clear();

        //        SqlCommand command = new SqlCommand("tsp_getIndMembersAccounts_Ala", con);
        //        command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
        //        command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", cval));
        //        command.CommandType = CommandType.StoredProcedure;
        //        SqlDataAdapter da = new SqlDataAdapter(command);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);
        //        DropDownList2.DataSource = dt;
        //        DropDownList2.DataBind();
        //        DropDownList2.DataTextField = "cacctnumb";
        //        DropDownList2.DataValueField = "cacctnumb";
        //        DropDownList2.DataBind();
        //    }

        //}
        private void DropDownList1_SelectedValueChanged(object sender, EventArgs e)
        {
           
           
            //string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //SqlConnection con = new SqlConnection(connStr);
            //con.Open();
            //{
            //    string cval = DropDownList1.SelectedValue.ToString();
            //    Response.Write("i have Selected" + cval);
            //    Session.Clear();

            //    SqlCommand command = new SqlCommand("tsp_getIndMembersAccounts_Ala", con);
            //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
            //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", cval));
            //    command.CommandType = CommandType.StoredProcedure;
            //    SqlDataAdapter da = new SqlDataAdapter(command);
            //    DataTable dt = new DataTable();
            //    da.Fill(dt);
            //    DropDownList2.DataSource = dt;
            //    DropDownList2.DataBind();
            //    DropDownList2.DataTextField = "cacctnumb";
            //    DropDownList2.DataValueField = "cacctnumb";
            //    DropDownList2.DataBind();
            //}
        }
        private void DropDownList2_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            
            //string cv = DropDownList2.SelectedValue.ToString();
            //string ccode = cv.Substring(3, 6);
         

        }
        private void getEntityCode1()
        {
          
            //string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //SqlConnection con = new SqlConnection(connStr);
            //con.Open();
            //{
            //    Session.Clear();

            //    SqlCommand command = new SqlCommand("tsp_getIndMembersAccounts_Ala", con);
            //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
            //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.Text));
            //    command.CommandType = CommandType.StoredProcedure;
            //    SqlDataAdapter da = new SqlDataAdapter(command);
            //    DataTable dt = new DataTable();
            //    da.Fill(dt);
            //    DropDownList2.DataSource = dt;
            //    DropDownList2.DataBind();
            //    DropDownList2.DataTextField = "cacctname";
            //    DropDownList2.DataValueField = "cacctnumb";
            //    DropDownList2.DataBind();

            //}
        }
        //private void getEntityAccounts()
        //{

        //    String strConnString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(strConnString);
        //    con.Open();
        //    SqlCommand command = new SqlCommand("tsp_getIndMembersAccounts_Ala1", con);
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@cacctnumb", DropDownList2.Text));
        //    command.CommandType = CommandType.StoredProcedure;
        //    SqlDataAdapter da = new SqlDataAdapter(command);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    acctgrid.DataSource = dt;
        //    acctgrid.DataBind();
        // }
        //private void getEntityTransaction()
        //{

        //    String strConnString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(strConnString);
        //    con.Open();
        //    SqlCommand command = new SqlCommand("tsp_AcctTransAll_Ala", con);
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@lcAcctNumb", DropDownList2.SelectedValue));
        //    command.CommandType = CommandType.StoredProcedure;
        //    SqlDataAdapter da = new SqlDataAdapter(command);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    transgrid.DataSource = dt;
        //    transgrid.DataBind();
        //   // getEntityCode1();
        //}
        //private void Combtitle()
        //{

        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "Select dtrandate,cacctnumb,ntranamnt,ctrandesc from tranhist ";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList1.DataSource = dt;
        //        DropDownList1.DataBind();
        //        DropDownList1.DataTextField = "cacctnumb";
        //        DropDownList1.DataValueField = "cacctnumb";
        //        DropDownList1.DataBind();
        //        //getEntityCode1();
        //    }
        //}
        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {
                
                
        //        string cval = DropDownList1.SelectedValue.ToString();
        //      //  Response.Write("i have Selected" + cval);
        //        Session.Clear();

        //        SqlCommand command = new SqlCommand("tsp_getIndMembersAccounts_Ala", con);
        //        command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
        //        command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", cval));
        //        command.CommandType = CommandType.StoredProcedure;
        //        SqlDataAdapter da = new SqlDataAdapter(command);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);
        //        DropDownList2.DataSource = dt;
        //        DropDownList2.DataBind();
        //        DropDownList2.DataTextField = "cacctnumb";
        //        DropDownList2.DataValueField = "cacctnumb";
        //        DropDownList2.DataBind();
        //    }
        //}
        private void GridView1_Enter(object sender, EventArgs e)
        {
               //getEntityTransaction();
           // GridView1.Rows[2].IsSelected = true;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        //    Session.Clear();
        //    getEntityAccounts();
        //    getEntityTransaction();
        }

        protected void acctGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
         //   getEntityCode1();
        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            Response.Write("i have Selected" );
        }
    }
}