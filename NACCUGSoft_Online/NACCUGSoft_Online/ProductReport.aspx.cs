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
    public partial class ProductReport : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        int ncompid = Global.GlUserCompID;
        ReportDocument rprt = new ReportDocument();
        string filepath;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getEntityCode1();
                DropDownList1.Items.Insert(0, new ListItem(string.Empty, string.Empty));
            }
        }

        private void getEntityCode1()
        {

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

                //   string com = "Select custcode, nbookbal, ltrim(rtrim(businessname)) as Account_Name from cusreg where ccustcode = '" + TextBox1.Text.Trim() + "' and nbookbal <> 0";
                string com = "select product_id ,prod_name,compid from products where compid = '"+Global.GlUserCompID+"'";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "prod_name";
                DropDownList1.DataValueField = "product_id";
                DropDownList1.DataBind();
                //getEntityCode1();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            getEntityCode();
        }
        private void getEntityCode()
        {

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string datefrom = Request.Form["datefrom"];
            string dateto = Request.Form["dateto"];
            rprt.Load(Server.MapPath("~/CryProductReport.rpt"));
            rprt.FileName = Server.MapPath("~/CryProductReport.rpt");
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SPRepProductsDetails";
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@FromDate", SqlDbType.Date)).Value = datefrom;
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@ToDate", SqlDbType.Date)).Value = dateto;
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@cacctnumb", DropDownList1.SelectedValue));
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid" , Global.GlUserCompID));
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            ProductReportDataSet ds = new ProductReportDataSet();
            sda.Fill(ds, "SPRepProductsDetails");
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