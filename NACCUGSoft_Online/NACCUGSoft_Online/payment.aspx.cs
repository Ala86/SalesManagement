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
using System.Drawing.Printing;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace NACCUGSoft_Online
{
    public partial class payment : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        int ncompid = Global.GlUserCompID;
        ReportDocument rprt = new ReportDocument();
        string filepath;
        string refnum = "000";

        DataTable dt = new DataTable();
        string ala;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.GlUserNames == "")  //|| Global.GlUserNames == " "
            {
                Response.Redirect("NewLoginUI.aspx");
            }

            if (!Page.IsPostBack)
            {
                if (ViewState["Records"] == null) {
                    dt.Columns.Add("cacctnumb");
                    dt.Columns.Add("product_id");
                    dt.Columns.Add("dpostdate");
                    dt.Columns.Add("dvaluedate");
                    dt.Columns.Add("ntranamnt");
                    dt.Columns.Add("ctrandesc");
                    dt.Columns.Add("nnewbal");
                    dt.Columns.Add("dtrandate");
                    dt.Columns.Add("compid");
                    dt.Columns.Add("receiptno");
                    dt.Columns.Add("quantity");
                    dt.Columns.Add("ccustcode");
                    dt.Columns.Add("cost_price");
                    dt.Columns.Add("profit");
                    dt.Columns.Add("discount");
                    ViewState["Records"] = dt;
                  }
                //cacctnumb,product_id,dpostdate,dvaluedate,ntranamnt,ctrandesc,nnewbal,dtrandate,compid,receiptno,quantity,ccustcode,cost_price,profit,discount
            }
            GenerateAutoID();
            //trandate.Text = DateTime.Now.ToString("dd-mm-yyyy");
          //  trandate.Text = DateTime.Now.ToString();
        }
        private void GenerateAutoID()
        {
            string ala;
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            SqlCommand command = new SqlCommand("SPAutoReceipt", con);
            //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.SelectedValue));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    // refnumber.Text = dr.GetInt32(dr.GetOrdinal("count")).ToString();
                    ala = dr.GetInt32(dr.GetOrdinal("count")).ToString();
                    TextBox7.Text = refnum + ala;
                }
            }
        }

        private void Caculate(object sender, EventArgs e)
        {
            double balances = Convert.ToDouble(TextBox8.Text.Trim()) * Convert.ToDouble(TextBox10.Text.Trim());
            TextBox5.Text = balances.ToString();
           // double amount = Convert.ToDouble(TotalBalance.Text.Trim());

        }
        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //    //TextBox1.Text = "";
        //    //TextBox2.Text = "";
        //    //TextBox3.Text = "";


        //    if (TextBox6.Text != string.Empty && TextBox10.Text != string.Empty)
        //    {
        //        double balances = Convert.ToDouble(TextBox5.Text.Trim()) - Convert.ToDouble(TextBox10.Text.Trim());
        //        double amount = Convert.ToDouble(TextBox5.Text.Trim());

        //        dt = (DataTable)ViewState["Records"];
        //        dt.Rows.Add(DropDownList1.SelectedValue.Trim(), DropDownList1.SelectedValue.Trim(), TextBox6.Text, TextBox6.Text, amount, TextBox9.Text.Trim(), balances, TextBox6.Text, 30, TextBox7.Text.Trim(), TextBox8.Text.Trim(), DropDownList2.SelectedValue.Trim(), TextBox1.Text.Trim(), TextBox3.Text.Trim(), TextBox2.Text.Trim());
        //        GridView1.DataSource = dt;
        //        GridView1.DataBind();

        //        // UpdateBalance();

        //        //string message = "Posting Completed!!!";

        //        //System.Text.StringBuilder sb = new System.Text.StringBuilder();

        //        //sb.Append("<script type = 'text/javascript'>");

        //        //sb.Append("window.onload=function(){");

        //        //sb.Append("alert('");

        //        //sb.Append(message);

        //        //sb.Append("')};");

        //        //sb.Append("</script>");

        //        //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        //    }

        //    else

        //    {

        //        string message = "Kindly fill the mandary fields!!!";

        //        System.Text.StringBuilder sb = new System.Text.StringBuilder();

        //        sb.Append("<script type = 'text/javascript'>");

        //        sb.Append("window.onload=function(){");

        //        sb.Append("alert('");

        //        sb.Append(message);

        //        sb.Append("')};");

        //        sb.Append("</script>");

        //        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        //    }

        //    //GenerateReport();

        //    CustomerAddress.Text = string.Empty;
        //    TextBox10.Text = string.Empty;
        //    //  InvoiceNumber.Text = string.Empty;
        //    TextBox6.Text = string.Empty;
        //    TextBox9.Text = string.Empty;
        //   // TextBox5.Text = string.Empty;

        //    GenerateAutoID();
        //    //   sms();
        //}

        private void GenerateReport()
        {

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            rprt.Load(Server.MapPath("~/CashReceipt.rpt"));
            rprt.FileName = Server.MapPath("~/CashReceipt.rpt");
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SPReceipt";
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@ReceiptNo", TextBox7.Text.Trim()));
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DatasetReceiptReport ds = new DatasetReceiptReport();
            sda.Fill(ds, "SPReceipt");
            rprt.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rprt;
            CrystalReportViewer1.DataBind();
            pdfdemo();

            rprt.Close();
            rprt.Dispose();

            //PrinterSettings getprinterName = new PrinterSettings();
            //rprt.PrintOptions.PrinterName = getprinterName.PrinterName;
            //rprt.PrintToPrinter(1, false, 0, 1);
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
      //  protected void Submitt_Click(object sender, EventArgs e)
      protected void Submitt_Click(object sender, EventArgs e)
        {
          //  TextBox2.Text = 0.00m.ToString();
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
                 //   TextBox4.Text = dr.GetDecimal(dr.GetOrdinal("sell_price")).ToString("N2");
                    TextBox10.Text = dr.GetDecimal(dr.GetOrdinal("sell_price")).ToString("N2");
                    TextBox1.Text = dr.GetDecimal(dr.GetOrdinal("buy_price")).ToString("N2");
                }
                //  TextBox2.Text = 0.00m.ToString();
                double discount = Convert.ToDouble(TextBox10.Text.Trim()) - Convert.ToDouble(TextBox2.Text.Trim());
                TextBox10.Text = discount.ToString("N2");
                double balances = Convert.ToDouble(TextBox8.Text.Trim()) * Convert.ToDouble(TextBox10.Text.Trim());
                TextBox5.Text = balances.ToString("N2");
                double profit = Convert.ToDouble(TextBox10.Text.Trim()) - Convert.ToDouble(TextBox1.Text.Trim()) ;
                double profitt = profit * Convert.ToDouble(TextBox8.Text.Trim());
                TextBox3.Text = profitt.ToString("N2");
                GenerateAutoID();
            }
            else
            {
                string message = "No details fund, Please confirm your Product Code!!!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            con.Close();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SPGetProducts";
           cmd.Parameters.AddWithValue("@custcode", DropDownList1.SelectedValue);
            cmd.Connection = con;
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

              //  TextBox4.Text = dr.GetString(dr.GetOrdinal("sell_price"));
                TextBox10.Text = dr.GetString(dr.GetOrdinal("sell_price"));
                TextBox1.Text = dr.GetString(dr.GetOrdinal("buy_price"));

            }
            con.Close();
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

        private void UpdateBalance()
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string cglquery = "Update invoice set totalamt = totalamt  -  '"+ Convert.ToDouble(TextBox10.Text.Trim()) + "'  where custcode = '" + DropDownList1.SelectedValue.Trim() + "' and compid = '"+Global.GlUserCompID+"'";
            SqlCommand cmd = new SqlCommand(cglquery, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter updCommand = new SqlDataAdapter();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
           // if (trandate.Text != string.Empty && ReceiptAmount.Text != string.Empty)
           // {
              //  double balances = Convert.ToDouble(TotalBalance.Text.Trim()) - Convert.ToDouble(ReceiptAmount.Text.Trim());
              //  double amount = Convert.ToDouble(TotalBalance.Text.Trim());
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
               
                foreach (GridViewRow gr in GridView1.Rows)
                {

                    string query = "insert into tranhist (cacctnumb,product_id,dpostdate,dvaluedate,ntranamnt,ctrandesc,nnewbal,dtrandate,compid,receiptno,quantity,ccustcode,cost_price,profit,discount,cuserid)  values (@cacctnumb,@product_id,@dpostdate,@dvaluedate,@ntranamnt,@ctrandesc,@nnewbal,@dtrandate,@compid,@receiptno,@quantity,@ccustcode,@cost_price,@profit,@discount,@cuserid)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@cacctnumb", gr.Cells[0].Text);
                    cmd.Parameters.AddWithValue("@product_id", Convert.ToInt32(gr.Cells[1].Text));
                    cmd.Parameters.AddWithValue("@dpostdate", gr.Cells[2].Text);
                    cmd.Parameters.AddWithValue("@dvaluedate", gr.Cells[3].Text);
                    cmd.Parameters.AddWithValue("@ntranamnt", Convert.ToDecimal(gr.Cells[4].Text));
                    cmd.Parameters.AddWithValue("@ctrandesc", gr.Cells[5].Text);
                    cmd.Parameters.AddWithValue("@nnewbal", Convert.ToDecimal(gr.Cells[6].Text));
                    cmd.Parameters.AddWithValue("@dtrandate", gr.Cells[7].Text);
                    cmd.Parameters.AddWithValue("@compid", gr.Cells[8].Text);
                    cmd.Parameters.AddWithValue("@receiptno", gr.Cells[9].Text);
                    cmd.Parameters.AddWithValue("@quantity", Convert.ToDouble(gr.Cells[10].Text));
                    cmd.Parameters.AddWithValue("@ccustcode", gr.Cells[11].Text);
                    cmd.Parameters.AddWithValue("@cost_price", Convert.ToDecimal(gr.Cells[12].Text));
                    cmd.Parameters.AddWithValue("@profit", Convert.ToDecimal(gr.Cells[13].Text));
                    cmd.Parameters.AddWithValue("@discount", Convert.ToDecimal(gr.Cells[14].Text));
                     cmd.Parameters.AddWithValue("@cuserid", Global.GlUserNames);
                con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    //  UpdateBalance();
                  //  GenerateReport();
                    // UpdateBalance();

                    string message = "Posting Completed!!!";

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                    sb.Append("<script type = 'text/javascript'>");

                    sb.Append("window.onload=function(){");

                    sb.Append("alert('");

                    sb.Append(message);

                    sb.Append("')};");

                    sb.Append("</script>");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                }
           // GridView1.DataSource = null;
           // GridView1.DataBind();
            GenerateReport();
            
            GridView1.DataSource = null;
            GridView1.DataBind();
         //   Response.Redirect("~/payment.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = null;
           GridView1.DataBind();
           Response.Redirect("~/payment.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (TextBox6.Text != string.Empty && TextBox10.Text != string.Empty)
            {
                double balances = Convert.ToDouble(TextBox5.Text.Trim()) - Convert.ToDouble(TextBox10.Text.Trim());
                double amount = Convert.ToDouble(TextBox5.Text.Trim());

                dt = (DataTable)ViewState["Records"];
                dt.Rows.Add(DropDownList1.SelectedValue.Trim(), DropDownList1.SelectedValue.Trim(), TextBox6.Text, TextBox6.Text, amount, TextBox9.Text.Trim(), balances, TextBox6.Text, Global.GlUserCompID, TextBox7.Text.Trim(), TextBox8.Text.Trim(), DropDownList2.SelectedValue.Trim(), TextBox1.Text.Trim(), TextBox3.Text.Trim(), TextBox2.Text.Trim());
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

            else

            {

                string message = "Kindly fill the mandary fields!!!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }

            //GenerateReport();

            CustomerAddress.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox8.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox1.Text = string.Empty;
            TextBox9.Text = "Receipt Transaction";
          //  TextBox2.Text = string.Empty;
           // TextBox7.Text = string.Empty;

            //  GenerateAutoID();
            //   sms();
        }

        //else

        //{

        //    string message = "Please enter the records";

        //    System.Text.StringBuilder sb = new System.Text.StringBuilder();

        //    sb.Append("<script type = 'text/javascript'>");

        //    sb.Append("window.onload=function(){");

        //    sb.Append("alert('");

        //    sb.Append(message);

        //    sb.Append("')};");

        //    sb.Append("</script>");

        //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        //}


        //  }
        //    protected void DropDownList1_TextChanged(object sender, EventArgs e)
        //{
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    SqlCommand command = new SqlCommand("SPGetProducts", con);
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.SelectedValue));
        //    command.CommandType = CommandType.StoredProcedure;
        //    SqlDataReader dr = command.ExecuteReader();
        //    if (dr.HasRows)
        //    {
        //        while (dr.Read())
        //        {
        //            ReceiptAmount.Text = dr.GetString(dr.GetOrdinal("sell_price"));
        //            TextBox1.Text = dr.GetString(dr.GetOrdinal("buy_price"));
        //        }
        //    }
        //    else
        //    {
        //        string message = "No details fund, Please confirm your Product Code!!!";

        //        System.Text.StringBuilder sb = new System.Text.StringBuilder();

        //        sb.Append("<script type = 'text/javascript'>");

        //        sb.Append("window.onload=function(){");

        //        sb.Append("alert('");

        //        sb.Append(message);

        //        sb.Append("')};");

        //        sb.Append("</script>");

        //        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        //    }
        //    con.Close();
        //}
    }
}