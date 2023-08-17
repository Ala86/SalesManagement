using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace NACCUGSoft_Online
{
    public partial class JournalExit : System.Web.UI.Page
    {
        decimal gnTotaldebit = 0.00m;
        decimal gnTotalCredit = 0.00m;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ala();
                sumtotal();
            }
        }
        private void sumtotal()
        {
            gnTotaldebit = 0.00m;
            gnTotalCredit = 0.00m;
            foreach (GridViewRow gr in GridView1.Rows)

            {
                gnTotaldebit = Math.Abs(gnTotaldebit) + Math.Abs(Convert.ToDecimal(gr.Cells[4].Text));
                gnTotalCredit = gnTotalCredit + Convert.ToDecimal(gr.Cells[5].Text);
            }
            TextBox1.Text = gnTotaldebit.ToString("N2");
            TextBox2.Text = gnTotalCredit.ToString("N2");
        }
        void ala()
        {
            DateTime ldToday = DateTime.Today;
            //TextBox3.Text = ldToday;

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string datefrom = Request.Form["datefrom"];
            string dateto = Request.Form["dateto"];
            con.Open();
            SqlCommand command = new SqlCommand("tsp_TrialBalance", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@lnCompID", Global.GlUserCompID));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@branch", Global.GlUserCompID));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@ToDate", SqlDbType.Date)).Value = ldToday;
            command.CommandType = CommandType.StoredProcedure;
            var da = new SqlDataAdapter(command);
            var ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables.Count > 0)
            {
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
        }

        void ala1()
        {
            DateTime ldToday = DateTime.Today;
            //TextBox3.Text = ldToday;

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            //string datefrom = Request.Form["datefrom"];
            //string dateto = Request.Form["dateto"];
            con.Open();
            SqlCommand command = new SqlCommand("tsp_TrialBalance", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@lnCompID", Global.GlUserCompID));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@branch", Global.GlUserCompID));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@ToDate", SqlDbType.Date)).Value = TextBox3.Text;
            command.CommandType = CommandType.StoredProcedure;
            var da = new SqlDataAdapter(command);
            var ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables.Count > 0)
            {
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            ala1();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
        private void ExportGridToExcel()
        {
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
            GridView1.GridLines = GridLines.Both;
            GridView1.HeaderStyle.Font.Bold = true;
            GridView1.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }
    }
}