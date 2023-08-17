using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.IO;

namespace NACCUGSoft_Online
{
    public partial class SupplierReport : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
     //   int ncompid = 30;
        ReportDocument rprt = new ReportDocument();
        string filepath;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void getEntityCode()
        {

            if (datefrom.Text != string.Empty && dateto.Text != string.Empty)
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                rprt.Load(Server.MapPath("~/CrySupplierRep.rpt"));
                rprt.FileName = Server.MapPath("~/CrySupplierRep.rpt");
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SPRepSupplierDetails";
                cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@FromDate", SqlDbType.Date)).Value = datefrom.Text;
                cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@ToDate", SqlDbType.Date)).Value = dateto.Text;
                cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
                cmd.Connection = con;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                SupplierRepDataSet ds = new SupplierRepDataSet();
                sda.Fill(ds, "SPRepSupplierDetails");
                rprt.SetDataSource(ds);
                CrystalReportViewer1.ReportSource = rprt;
                CrystalReportViewer1.DataBind();
                pdfdemo();
                rprt.Close();
                rprt.Dispose();
            }
            else

            {

                string message = "Select the correct date range!!! ";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


            }
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            getEntityCode();
        }
    }
}