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
    public partial class MiniStatementUI : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        int ncompid = 30;
        ReportDocument rprt = new ReportDocument();
        string filepath;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Global.GCmemtype0 == "0")
            //{
              //  string mcode = Request.Form["mcode"];
               if (!Page.IsPostBack)
               {
                 //   mcode = Global.GlUserNames;
               //     table.Clear();
                    getEntityCode1();
                    getEntityTransaction();
               }
           // }
            //if (!Page.IsPostBack)
            //{
            // //   getEntityCode();
            //    getEntityCode1();
            //    getEntityTransaction();
            //    //    getEntityCode1();
            //}
        }

      
        private void getEntityCode1()
        {

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

             //   string com = "Select custcode, nbookbal, ltrim(rtrim(businessname)) as Account_Name from cusreg where ccustcode = '" + TextBox1.Text.Trim() + "' and nbookbal <> 0";
                string com = "select product_id ,prod_name from products";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                selectemp.DataSource = dt;
                selectemp.DataBind();
                selectemp.DataTextField = "prod_name";
                selectemp.DataValueField = "product_id";
                selectemp.DataBind();
                //getEntityCode1();

            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //if (Global.GCmemtype0 == "0")
            //{
                Session.Clear();
                table.Clear();
             //   getEntityCode1();
                getEntityTransaction();
          //  }
          }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //if (Global.GCmemtype0 == "0")
            //{
               // Session.Clear();
               // table.Clear();
                getEntityCode();
         //   }
       }

        private void getEntityCode()
        {

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string datefrom = Request.Form["datefrom"];
            string dateto = Request.Form["dateto"];
            rprt.Load(Server.MapPath("~/CRPStatement.rpt"));
            rprt.FileName = Server.MapPath("~/CRPStatement.rpt");
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SPstatement";
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@FromDate", SqlDbType.Date)).Value = datefrom;
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@ToDate", SqlDbType.Date)).Value = dateto;
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@cacctnumb", selectemp.Value));
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            StatementDataSet ds = new StatementDataSet();
            sda.Fill(ds, "SPstatementOnline");
          //  rprt.SetDataSource(ds);
          //  CrystalReportViewer1.ReportSource = rprt;
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
       
        private void getEntityTransaction()
        {

            // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
            table.Clear();
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select top(15) row_number() over (order by dtrandate desc) as 'Number', dtrandate as Transaction_Date,cacctnumb as Account_Number,ntranamnt as Transaction_Amount,ctrandesc as Transaction_Narrative from tranhist where cacctnumb = '" + selectemp.Value + "' and ntranamnt <> 0 and ctrancode <> 21 and reverseflag = 0 and ctrancode <> 17 group by dtrandate ,cacctnumb, ntranamnt,ctrandesc order by dtrandate desc";
                cmd.Connection = con;
                SqlDataReader da = cmd.ExecuteReader();
                table.Append("<table border='1' cellpadding='5' cellspacing = '0' style='border: 2px solid #ccc; font-size: 11pt; font-family:Arial'>");
                table.Append("<tr><th style ='background-color: #B8DBFD; border: 2px solid #ccc'>Transaction Number</th><th style ='background-color: #B8DBFD; border: 1px solid #ccc'>Transaction Date</th><th style ='background-color: #B8DBFD; border: 1px solid #ccc'>Account Number</th><th style ='background-color: #B8DBFD; border: 1px solid #ccc'> Transaction Amount</th><th style ='background-color: #B8DBFD; border: 1px solid #ccc'> Transaction Narrative</th>");
                table.Append("</tr>");
                if (da.HasRows)
                {
                    while (da.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[0] + "</td>");
                        table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[1] + "</td>");
                        table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[2] + "</td>");
                        table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[3] + "</td>");
                        table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[4] + "</td>");
                        table.Append("<tr>");
                    }

                }

                table.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                da.Close();
            }
        }

             //            dtrandate,cacctnumb,ntranamnt,cchqno,nnewbal,
        //ctrandesc,ctrantime
        //}
    }
}