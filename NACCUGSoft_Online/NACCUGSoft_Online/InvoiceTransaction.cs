using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public class Invoice
    {
        //  InvoiceID, invoice_no,prod_name, inv_desc,invoice_date, totalamt, discount, cust_address, quantity, InvoiceAmount
        public int InvoiceID { get; set; }
        public string invoice_no { get; set; }
        public string prod_name { get; set; }
        public string inv_desc { get; set; }
        public DateTime invoice_date { get; set; }
        public double totalamt { get; set; }
        public double discount { get; set; }
        public string cust_address { get; set; }
        public int quantity { get; set; }
        public Double InvoiceAmount { get; set; }

    }
    public class InvoiceTransaction
    {
        public static List<Invoice> GetAllInvoiceTran()
        {
            List<Invoice> ListInvoiceTransac = new List<Invoice>();
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {
                SqlCommand command = new SqlCommand("SPInvoiceTran", con);
                //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
                command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
              //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@TranFromDate", SqlDbType.Date)).Value = datefrom.Text;
               // command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@TranToDate", SqlDbType.Date)).Value = dateto.Text;
                command.CommandType = CommandType.StoredProcedure;
                SqlDataReader da = command.ExecuteReader();
                while (da.Read())
                {
                    //  InvoiceID, invoice_no,prod_name, inv_desc,invoice_date, totalamt, discount, cust_address, quantity, InvoiceAmount
                    Invoice Invoives = new Invoice();
                    Invoives.InvoiceID = Convert.ToInt16(da["InvoiceID"]);
                    Invoives.invoice_no = da["invoice_no"].ToString();
                    Invoives.prod_name = da["prod_name"].ToString();
                    Invoives.inv_desc = da["inv_desc"].ToString();
                    Invoives.invoice_date = Convert.ToDateTime(da["invoice_date"]);
                    Invoives.totalamt = Convert.ToDouble(da["totalamt"]);
                    Invoives.discount = Convert.ToDouble(da["discount"]);
                    Invoives.cust_address = da["cust_address"].ToString();
                    Invoives.quantity = Convert.ToInt32(da["quantity"]);
                    Invoives.InvoiceAmount = Convert.ToDouble(da["InvoiceAmount"]);
                    ListInvoiceTransac.Add(Invoives);
                }
            }
            return ListInvoiceTransac;
        }
    }
}