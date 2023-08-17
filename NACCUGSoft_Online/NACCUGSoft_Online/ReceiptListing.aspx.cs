using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public partial class ReceiptListing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ala1();
                //Global.fromdate = TextBox1.Text;
                //Global.todate = TextBox2.Text;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            ala();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }

        void ala()
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string datefrom = Request.Form["datefrom"];
            string dateto = Request.Form["dateto"];
            con.Open();
            SqlCommand command = new SqlCommand("SPReceiptTran", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@TranFromDate", SqlDbType.Date)).Value = datefrom;
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@TranToDate", SqlDbType.Date)).Value = dateto;
            command.CommandType = CommandType.StoredProcedure;
            var da = new SqlDataAdapter(command);
            var ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables.Count > 0)
            {
                GridView2.DataSource = ds.Tables[0];
                GridView2.DataBind();
            }
        }

        /////////////////////////////////////////
        void ala1()
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            SqlCommand command = new SqlCommand("SPInvoiceTran", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@TranFromDate", SqlDbType.Date)).Value = datefrom.Text;
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@TranToDate", SqlDbType.Date)).Value = dateto.Text;
            command.CommandType = CommandType.StoredProcedure;

            var da = new SqlDataAdapter(command);
            var ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables.Count > 0)
            {
                GridView2.DataSource = ds.Tables[0];
                GridView2.DataBind();
            }
            //SqlDataReader dr = command.ExecuteReader();
            //if (dr.HasRows)
            //{
            //while (dr.Read())
            //{
            //  //  string message = "Fill the Mandatry field!!!";
            //    GridView2.DataSource = dr;
            //    GridView2.DataBind();
            //}

        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
        /////////////////////////////////////////////////////////////////////
        private void ExportGridToExcel()
        {
            //Response.Clear();
            //Response.Buffer = true;
            //Response.ClearContent();
            //Response.ClearHeaders();
            //Response.Charset = "";
            //string FileName = "Vithal" + DateTime.Now + ".xls";
            //StringWriter strwritter = new StringWriter();
            //HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //Response.ContentType = "application/vnd.ms-excel";
            //Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            //GridView2.GridLines = GridLines.Both;
            //GridView2.HeaderStyle.Font.Bold = true;
            //GridView2.RenderControl(htmltextwrtter);
            //Response.Write(strwritter.ToString());
            //Response.End();


            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Vithal" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            GridView2.GridLines = GridLines.Both;
            GridView2.HeaderStyle.Font.Bold = true;
            GridView2.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();

        }

        ///////////////////
        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            this.ala();
        }
    }
}