using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using System.Net;
using System.IO;
using System.Text;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;


namespace NACCUGSoft_Online
{

    public partial class InvoiceForm : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        int ncompid = Global.GlUserCompID;
        ReportDocument rprt = new ReportDocument();
        string filepath;
        string refnum = "000";
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.GlUserNames == "")  //|| Global.GlUserNames == " "
            {
                Response.Redirect("NewLoginUI.aspx");
            }

            if (!Page.IsPostBack)
            {
                if (ViewState["Records"] == null)
                {
                    dt.Columns.Add("prod_name");
                    dt.Columns.Add("invoice_no");
                    dt.Columns.Add("inv_desc");
                    dt.Columns.Add("invoice_date");
                    dt.Columns.Add("cust_id");
                    dt.Columns.Add("cust_address");
                    dt.Columns.Add("quantity");
                    dt.Columns.Add("InvoiceAmount");
                    dt.Columns.Add("totalamt");
                    dt.Columns.Add("compid");
                    dt.Columns.Add("discount");
                    ViewState["Records"] = dt;

                  
                }

            }
            GenerateAutoID();

        }
      
        protected void Submit_Click(object sender, EventArgs e)
        {
            if (trandate.Text != string.Empty && InvoiceAmount.Text != string.Empty)
            {

                double balances = Convert.ToDouble(InvoiceAmount.Text.Trim()) + Convert.ToDouble(TotalBalance.Text.Trim());
                double amount = Convert.ToDouble(TotalBalance.Text.Trim());

                dt = (DataTable)ViewState["Records"];
                dt.Rows.Add(DropDownList1.SelectedValue.Trim(), InvoiceNumber.Text.Trim(), trandesc.Text, trandate.Text, DropDownList2.SelectedValue.Trim(), CustomerAddress.Text.Trim(), qty.Text.Trim(), InvoiceAmount.Text, amount, Global.GlUserCompID, TextBox2.Text);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

            else

            {

                string message = "Fill the Mandatry field!!!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            CustomerAddress.Text = string.Empty;
            InvoiceAmount.Text = string.Empty;
            TextBox1.Text = string.Empty;
            TextBox3.Text = string.Empty;
            trandate.Text = string.Empty;
            trandesc.Text = string.Empty;
            TotalBalance.Text = string.Empty;

            GenerateAutoID();

        }
        protected void Submitt_Click(object sender, EventArgs e)
        {
            TextBox2.Text = 0.00m.ToString();
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            SqlCommand command = new SqlCommand("SPGetProductsDetails", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.SelectedValue));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    InvoiceAmount.Text = dr.GetDecimal(dr.GetOrdinal("sell_price")).ToString("N2");
                    TextBox1.Text = dr.GetDecimal(dr.GetOrdinal("buy_price")).ToString("N2");
                }
               
                //double balances = Convert.ToDouble(qty.Text.Trim()) * Convert.ToDouble(InvoiceAmount.Text.Trim());
                //TotalBalance.Text = balances.ToString("N2");
                double balances = Convert.ToDouble(qty.Text.Trim()) * Convert.ToDouble(InvoiceAmount.Text.Trim());
                TotalBalance.Text = balances.ToString("N2");
                double profit =  Convert.ToDouble(InvoiceAmount.Text.Trim()) - Convert.ToDouble(TextBox1.Text.Trim());
                TextBox3.Text = profit.ToString("N2");
               
                GenerateAutoID();
            }
            con.Close();
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
            cmd.CommandText = "SPInvoices";
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@InvoiceNo", InvoiceNumber.Text.Trim()));
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            InvoiceDataSet ds = new InvoiceDataSet();
            sda.Fill(ds, "SPInvoices");
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
        private void sms()
        {
            // Find your Account Sid and Token at twilio.com / console
            //  DANGER!This is insecure.See http://twil.io/secure
            const string accountSid = "AC25bde79e64a93e1844baddb3a5a77608";
            const string authToken = "49b2e50d4eca4870a2f44dd38ec7eb9b";

            TwilioClient.Init(accountSid, authToken);
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls;
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls11;
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072;
            var message = MessageResource.Create(
                body: "Alagie Kuyateh is testing the Online Platform for Sofora! Powered by New Vision Technologies Ltd",
                from: new Twilio.Types.PhoneNumber("+12513129241"),
                to: new Twilio.Types.PhoneNumber("+2202790316")
            );

            Console.WriteLine(message.Sid);

        }
        private void GenerateAutoID()
        {
            string ala;
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            SqlCommand command = new SqlCommand("SPAutoInvoice", con);
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.SelectedValue));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    // refnumber.Text = dr.GetInt32(dr.GetOrdinal("count")).ToString();
                    ala = dr.GetInt32(dr.GetOrdinal("count")).ToString();
                    InvoiceNumber.Text = refnum + ala;
                 }
            }
        }
        private void UpdateBalance()
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string cglquery = "Update OnlineRegistration set nbookbal = nbookbal  +  '"+ Convert.ToDouble(InvoiceAmount.Text.Trim()) + "'  where custcode = '" + DropDownList1.SelectedValue.Trim() + "'";
            SqlCommand cmd = new SqlCommand(cglquery, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter updCommand = new SqlDataAdapter();
        }
            protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            SqlCommand command = new SqlCommand("SPOnlineRegistration", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.SelectedValue));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    //bname.Text = dr.GetString(dr.GetOrdinal("businessname"));
                    //baddress.Text = dr.GetString(dr.GetOrdinal("baddress"));
                    //phonenumber.Text = dr.GetString(dr.GetOrdinal("phone"));
                    //balance.Text = dr.GetDecimal(dr.GetOrdinal("nbookbal")).ToString();
                }
            }

            con.Close();
        }

        ///////
        protected void Save_Click(object sender, EventArgs e)
        {
            //if (trandate.Text != string.Empty && InvoiceAmount.Text != string.Empty)
            //{
                //  double balances = Convert.ToDouble(TotalBalance.Text.Trim()) - Convert.ToDouble(ReceiptAmount.Text.Trim());
                //  double amount = Convert.ToDouble(TotalBalance.Text.Trim());
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);

                foreach (GridViewRow gr in GridView1.Rows)
                {

                    string query = "insert into Invoice (prod_name,invoice_no ,inv_desc,invoice_date,cust_id,cust_address,quantity,InvoiceAmount,totalamt,compid, discount, user_id)  values (@prod_name,@invoice_no ,@inv_desc,@invoice_date,@cust_id,@cust_address,@quantity,@InvoiceAmount,@totalamt,@compid,@discount, @user_id)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@prod_name", gr.Cells[0].Text);
                    cmd.Parameters.AddWithValue("@invoice_no", gr.Cells[1].Text);
                    cmd.Parameters.AddWithValue("@inv_desc", gr.Cells[2].Text);
                    cmd.Parameters.AddWithValue("@invoice_date", gr.Cells[3].Text);
                    cmd.Parameters.AddWithValue("@cust_id", gr.Cells[4].Text);
                    cmd.Parameters.AddWithValue("@cust_address", gr.Cells[5].Text);
                    cmd.Parameters.AddWithValue("@quantity", Convert.ToDouble(gr.Cells[6].Text));
                    cmd.Parameters.AddWithValue("@InvoiceAmount", Convert.ToDecimal(gr.Cells[7].Text));
                    cmd.Parameters.AddWithValue("@totalamt", Convert.ToDecimal(gr.Cells[8].Text));
                    cmd.Parameters.AddWithValue("@compid", Global.GlUserCompID);
                    cmd.Parameters.AddWithValue("@discount", Convert.ToDecimal(gr.Cells[10].Text));
                     cmd.Parameters.AddWithValue("@user_id", Global.GlUserNames);
                 con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    //  UpdateBalance();
                    //  GenerateReport();
                    // UpdateBalance();

                    string message = "Invoice Completed!!!";

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                    sb.Append("<script type = 'text/javascript'>");

                    sb.Append("window.onload=function(){");

                    sb.Append("alert('");

                    sb.Append(message);

                    sb.Append("')};");

                    sb.Append("</script>");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                }

                GenerateReport();
                GenerateAutoID();
           // }
            //else
            //{
            //    string message = "Fill the mandatry fields!!!";

            //    System.Text.StringBuilder sb = new System.Text.StringBuilder();

            //    sb.Append("<script type = 'text/javascript'>");

            //    sb.Append("window.onload=function(){");

            //    sb.Append("alert('");

            //    sb.Append(message);

            //    sb.Append("')};");

            //    sb.Append("</script>");

            //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            //}
        }
        ///////
        protected void Button4_Click(object sender, EventArgs e)
        {

            GridView1.DataSource = null;
            GridView1.DataBind();
            Response.Redirect("~/InvoiceForm.aspx");
        }
    }
}