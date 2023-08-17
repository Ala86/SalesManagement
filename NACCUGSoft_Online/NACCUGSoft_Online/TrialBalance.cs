using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public class TrialBalances
    {
        //jtranid,cvoucherno,dtrandate,dpostdate ,ctrandesc,cacctnumb, ntranamnt ,cuserid ,compid ,sverified
        public string cacctnumb { get; set; }
        public string cacctname { get; set; }
        public decimal Debit { get; set; }
        public decimal Credit { get; set; }
        public string cuserid { get; set; }
    }
    public class TrialBalance
    {
        public static List<TrialBalances> GetAllsuppliers()
        {
            List<TrialBalances> ListTrialBalances = new List<TrialBalances>();
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {
                SqlCommand command = new SqlCommand("tsp_TrialBalance", con);
                //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
                command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
                command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
                command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@ToDate", Global.GlUserCompID));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataReader da = command.ExecuteReader();
                while (da.Read())
                {
                    // id,ccustcode,businessname,residential, baddress, phone, cperson, cpersonaddress, cpersonphone,email ,wproduct, datejoin, bregistrationDate
                    TrialBalances TrialBalance = new TrialBalances();
                    TrialBalance.cacctnumb = da["cacctnumb"].ToString();
                    TrialBalance.cacctname = da["cacctname"].ToString();
                    TrialBalance.Debit = Convert.ToDecimal(da["Debit"]);
                    TrialBalance.Credit = Convert.ToDecimal(da["Credit"]);
                    ListTrialBalances.Add(TrialBalance);
                }
            }
            return ListTrialBalances;
        }
    }
}