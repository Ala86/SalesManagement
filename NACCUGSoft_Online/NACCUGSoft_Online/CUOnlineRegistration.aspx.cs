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
    public partial class CUOnlineRegistration : System.Web.UI.Page
    {
        int ncompid = Global.GlUserCompID;
        protected void Page_Load(object sender, EventArgs e)
        {
            getEntityAccounts();
     //       getEntityAccounts1();
        }
        protected void grd_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            //SqlConnection con = new SqlConnection(connStr);
            //con.Open();
            //SqlCommand command = new SqlCommand("SPstockUpdate", con);
            ////  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
            //command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
            //command.CommandType = CommandType.StoredProcedure;
            //SqlDataAdapter da = new SqlDataAdapter(command);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }
        private void getEntityAccounts()
        {

            //string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            //SqlConnection con = new SqlConnection(connStr);
            //con.Open();
            //SqlCommand command = new SqlCommand("SPstockUpdate", con);
            ////  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
            //command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
            //command.CommandType = CommandType.StoredProcedure;
            //SqlDataAdapter da = new SqlDataAdapter(command);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }
        private void getEntityAccounts1()
        {

            //string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            //SqlConnection con = new SqlConnection(connStr);
            //con.Open();
            //SqlCommand command = new SqlCommand("SPstockUpdate", con);
            ////  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
            //command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
            //command.CommandType = CommandType.StoredProcedure;
            //SqlDataAdapter da = new SqlDataAdapter(command);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //GridView2.DataSource = dt;
            //GridView2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //getEntityAccounts();
        }

        protected void acctgrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void acctgrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    acctgrid.Columns[1].ItemStyle.Width = 50;
            //    acctgrid.Columns[2].ItemStyle.Width = 50;
            //    acctgrid.Columns[3].ItemStyle.Width = 50;
            //    acctgrid.Columns[4].ItemStyle.Width = 50;
            //    acctgrid.Columns[5].ItemStyle.Width = 50;
            //    acctgrid.Columns[6].ItemStyle.Width = 50;
            //    acctgrid.Columns[7].ItemStyle.Width = 50;
            //    acctgrid.Columns[8].ItemStyle.Width = 50;
            //    acctgrid.Columns[9].ItemStyle.Width = 50;
            //    acctgrid.Columns[10].ItemStyle.Width = 50;
            //    acctgrid.Columns[11].ItemStyle.Width = 50;
            //    acctgrid.Columns[12].ItemStyle.Width = 50;
            //    acctgrid.Columns[13].ItemStyle.Width = 50;
            //    acctgrid.Columns[14].ItemStyle.Width = 50;
            //    acctgrid.Columns[15].ItemStyle.Width = 50;
            //    acctgrid.Columns[16].ItemStyle.Width = 50;
            //    acctgrid.Columns[17].ItemStyle.Width = 50;
            //    acctgrid.Columns[18].ItemStyle.Width = 50;
            //    acctgrid.Columns[19].ItemStyle.Width = 50;
            //    acctgrid.Columns[20].ItemStyle.Width = 50;
            //    acctgrid.Columns[21].ItemStyle.Width = 50;
            //    acctgrid.Columns[22].ItemStyle.Width = 50;
            //    acctgrid.Columns[23].ItemStyle.Width = 50;
            //    acctgrid.Columns[24].ItemStyle.Width = 50;
            //    acctgrid.Columns[25].ItemStyle.Width = 50;
            //    acctgrid.Columns[26].ItemStyle.Width = 50;
            //    acctgrid.Columns[27].ItemStyle.Width = 50;
            //    acctgrid.Columns[28].ItemStyle.Width = 50;
            //    acctgrid.Columns[29].ItemStyle.Width = 50;
            //    acctgrid.Columns[30].ItemStyle.Width = 50;
            //    acctgrid.Columns[31].ItemStyle.Width = 50;
            //    acctgrid.Columns[32].ItemStyle.Width = 50;
            //    acctgrid.Columns[33].ItemStyle.Width = 50;
            //    acctgrid.Columns[34].ItemStyle.Width = 50;
            //    acctgrid.Columns[35].ItemStyle.Width = 50;
            //    acctgrid.Columns[36].ItemStyle.Width = 50;
            //    acctgrid.Columns[37].ItemStyle.Width = 50;
            //    acctgrid.Columns[38].ItemStyle.Width = 50;
            //    acctgrid.Columns[39].ItemStyle.Width = 50;
            //}
        }

        protected void acctgrid_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}