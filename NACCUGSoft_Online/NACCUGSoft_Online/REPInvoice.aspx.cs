using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.IO;
using System.Text;

namespace NACCUGSoft_Online
{
    public partial class REPInvoice : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
       // int ncompid = Global.GlUserCompID;
        ReportDocument rprt = new ReportDocument();
        string filepath;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.GlUserNames == "")  //|| Global.GlUserNames == " "
            {
                Response.Redirect("NewLoginUI.aspx");
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            GenerateReport();
        }
        private void GenerateReport()
        {

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            rprt.Load(Server.MapPath("~/CryInvoice.rpt"));
            rprt.FileName = Server.MapPath("~/CryInvoice.rpt");
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SPInvoice";
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@InvoiceNo", TextBox1.Text));
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            InvoiceDataSet ds = new InvoiceDataSet();
            sda.Fill(ds, "SPInvoice");
            rprt.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rprt;
            CrystalReportViewer1.DataBind();
            pdfdemo();
            rprt.Close();
            rprt.Dispose();
        }
        public void pdfdemo()
        {

            Response.Clear();
            filepath = Server.MapPath("~/" + "demo.pdf");
            rprt.ExportToDisk(ExportFormatType.PortableDocFormat, filepath);
            FileInfo fileinfo = new FileInfo(filepath);
            Response.AddHeader("Content-Disposition", "inline:filenam=demo.pdf");
            Response.ContentType = "application/pdf";
            Response.WriteFile(fileinfo.FullName);
        }
    }
}