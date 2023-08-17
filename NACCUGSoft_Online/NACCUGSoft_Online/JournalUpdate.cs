using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public class journals
    {
        //jtranid,cvoucherno,dtrandate,dpostdate ,ctrandesc,cacctnumb, ntranamnt ,cuserid ,compid ,sverified
        public int jtranid { get; set; }
        public string cvoucherno { get; set; }
        public DateTime dtrandate { get; set; }
        public string ctrandesc { get; set; }
        public string cacctnumb { get; set; }
        public decimal ntranamnt { get; set; }
        public string cuserid { get; set; }
        public decimal Debit { get; set; }
        public decimal Credit { get; set; }

    }
    public class JournalUpdate
    {
        //dtrandate,dpostdate ,ctrandesc,cacctnumb, ntranamnt
        public static void UpdateJournals(int jtranid, string cvoucherno, DateTime dtrandate, string ctrandesc,string cacctnumb, decimal ntranamnt, string cuserid, decimal Debit, decimal Credit)
        {
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            string updateQuery = "Update journal set cvoucherno = @cvoucherno, dtrandate = @dtrandate,Debit = @Debit,Credit = @Credit, ctrandesc = @ctrandesc, cacctnumb = @cacctnumb, " +
                "ntranamnt = @ntranamnt, cuserid = @cuserid where jtranid = @jtranid";
            SqlCommand cmd = new SqlCommand(updateQuery, con);
            SqlParameter paramjtranid = new SqlParameter("@jtranid", jtranid);
            cmd.Parameters.Add(paramjtranid);
            SqlParameter paramcvoucherno = new SqlParameter("@cvoucherno", cvoucherno);
            cmd.Parameters.Add(paramcvoucherno);
            SqlParameter paramdtrandate = new SqlParameter("@dtrandate", dtrandate);
            cmd.Parameters.Add(paramdtrandate);
            SqlParameter paramnDebit = new SqlParameter("@Debit", Debit);
            cmd.Parameters.Add(paramnDebit);
            SqlParameter paramnCredit = new SqlParameter("@Credit", Credit);
            cmd.Parameters.Add(paramnCredit);
            SqlParameter paramctrandesc = new SqlParameter("@ctrandesc", ctrandesc);
            cmd.Parameters.Add(paramctrandesc);
            SqlParameter paramcacctnumb = new SqlParameter("@cacctnumb", cacctnumb);
            cmd.Parameters.Add(paramcacctnumb);
            SqlParameter paramntranamnt = new SqlParameter("@ntranamnt", ntranamnt);
            cmd.Parameters.Add(paramntranamnt);
            SqlParameter paramcuserid = new SqlParameter("@cuserid", cuserid);
            cmd.Parameters.Add(paramcuserid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public static List<journals> GetAlljournals()
        {
            List<journals> Listjournal = new List<journals>();
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {
                SqlCommand command = new SqlCommand("SPJournalUpdate", con);
                //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
                command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataReader da = command.ExecuteReader();
                while (da.Read())
                {
                    //jtranid,cvoucherno,dtrandate,dpostdate ,ctrandesc,cacctnumb, ntranamnt ,cuserid ,compid ,sverified
                    journals journal = new journals();
                    journal.jtranid = Convert.ToInt32(da["jtranid"]);
                    journal.cvoucherno = da["cvoucherno"].ToString();
                    journal.dtrandate = Convert.ToDateTime(da["dtrandate"]);
                    journal.Debit = Math.Abs(Convert.ToDecimal(da["Debit"]));
                    journal.Credit = Convert.ToDecimal(da["Credit"]);
                    journal.ctrandesc = da["ctrandesc"].ToString();
                    journal.cacctnumb = da["cacctnumb"].ToString();
                    journal.ntranamnt = Convert.ToDecimal(da["ntranamnt"]);
                    journal.cuserid = da["cuserid"].ToString();

                    Listjournal.Add(journal);
                }
            }
            return Listjournal;
        }
    }
}