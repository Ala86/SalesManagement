using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public partial class JournalPosting : System.Web.UI.Page
    {
        decimal gnTotaldebit = 0.00m;
        decimal gnTotalCredit = 0.00m;
        string tcUserid = "";
        string djstack = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            sumtotal();
        }
        private void sumtotal()
        {
            gnTotaldebit = 0.00m;
            gnTotalCredit = 0.00m;
            foreach (GridViewRow gr in GridView1.Rows)

            {
                    gnTotaldebit = Math.Abs(gnTotaldebit) + Math.Abs(Convert.ToDecimal(gr.Cells[3].Text));
                    gnTotalCredit = gnTotalCredit + Convert.ToDecimal(gr.Cells[4].Text);
            }
            TextBox1.Text = gnTotaldebit.ToString("N2");
            TextBox2.Text = gnTotalCredit.ToString("N2");
        }

        private void UpdateBalance(string GCcacctnumb)
        {
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            string updateQuery = "Update journal set sverified = @sverified where cacctnumb = @cacctnumb";
            SqlCommand cmd = new SqlCommand(updateQuery, con);
            SqlParameter paramcacctnumb = new SqlParameter("@cacctnumb", GCcacctnumb);
            cmd.Parameters.Add(paramcacctnumb);
            SqlParameter paramsverified = new SqlParameter("@sverified", 1);
            cmd.Parameters.Add(paramsverified);
            //SqlParameter paramoprcode = new SqlParameter("@oprcode", oprcode);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            //  string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //  SqlConnection con = new SqlConnection(connStr);
            //  con.Open();
            //  string cglquery = "Update journal set sverified = '" + 1 + "'  where cvoucherno = '" + djstack + "' and compid = '" + Global.GlUserCompID + "'";
            //  SqlCommand cmd = new SqlCommand(cglquery, con);
            //  cmd.ExecuteNonQuery();
            ////  SqlDataAdapter updCommand = new SqlDataAdapter();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            if (TextBox1.Text.Trim() == TextBox2.Text.Trim())
            {


                foreach (GridViewRow dr in GridView1.Rows)
                {
                    if (dr.Cells[6].Text != null && dr.Cells[6].Text.ToString() != "")
                    {
                        //if (Convert.ToBoolean(dr.Cells["dupt"].Value) == true)
                        //{
                            {
                               // string lcServ_name = dr.Cells[6].Text;
                                DateTime dTrandate = Convert.ToDateTime(dr.Cells[2].Text);
                                string tcAcctNumb = dr.Cells[6].Text.ToString();
                              decimal ntranAmt = Convert.ToDecimal(dr.Cells[7].Text);
                            decimal gnPostAmt = (Convert.ToDecimal(dr.Cells[3].Text) > 0.00m ? -Math.Abs(Convert.ToDecimal(dr.Cells[3].Text)) : Math.Abs(Convert.ToDecimal(dr.Cells[4].Text)));
                            // string tcChqno = dr.Cells["dchq"].Value.ToString();
                            tcUserid = Global.GlUserNames;// dr.Cells["duser"].Value.ToString();
                                djstack = dr.Cells[0].Text;
                                DateTime dTranDate = Convert.ToDateTime(dr.Cells[2].Text);

                                //DateTime ldToday = DateTime.Today;
                                //int lnDays = (ldToday - dTrandate).Days + 1;

                            decimal lnUpdAmtPos = (ntranAmt > 0.00m ? ntranAmt : 0.00m);
                            decimal lnUpdAmtNeg = (ntranAmt < 0.00m ? ntranAmt : 0.00m);
                            decimal lnUpdAmt = (lnUpdAmtPos > 0.00m ? lnUpdAmtPos : lnUpdAmtNeg);

                            string sqlqueryint = "select 1 from glmast where intcode=1 and cacctnumb = " + "'" + tcAcctNumb + "'"; //This process is for internal accounts only
                            SqlDataAdapter dabint = new SqlDataAdapter(sqlqueryint, con);
                            DataTable intdayview = new DataTable();
                            dabint.Fill(intdayview);
                            if (intdayview != null && intdayview.Rows.Count > 0)            //&&This is an internal account 
                            {
                                //************Getting account in daybal

                                string sqlquery1 = "select 1 from daybal where cacctnumb = " + "'" + tcAcctNumb + "'" + " and convert(date,baldate) = '" + dTrandate + "'";// @dtrandate order by baldate desc "; //Check to see if accounts exists for today
                                SqlDataAdapter dab = new SqlDataAdapter(sqlquery1, con);
                                DataTable dayview = new DataTable();
                                dab.Fill(dayview);
                                if (dayview != null && dayview.Rows.Count > 0)            //&&There is a record for the account for today, we update debit, credit and closing balances
                                {
                                    string cupdquery = "exec tsp_UpdateDailyBalance @cAcctNumb,@nUpdAmtPos,@nUpdAmtNeg,@nUpdAmt,@baldate";
                                    SqlDataAdapter glupdCommand = new SqlDataAdapter();
                                    glupdCommand.UpdateCommand = new SqlCommand(cupdquery, con);
                                    glupdCommand.UpdateCommand.Parameters.Add("@baldate", SqlDbType.DateTime).Value = dTrandate;
                                    glupdCommand.UpdateCommand.Parameters.Add("@cAcctNumb", SqlDbType.Char).Value = tcAcctNumb;
                                    glupdCommand.UpdateCommand.Parameters.Add("@nUpdAmtPos", SqlDbType.Decimal).Value = lnUpdAmtPos;
                                    glupdCommand.UpdateCommand.Parameters.Add("@nUpdAmtNeg", SqlDbType.Decimal).Value = lnUpdAmtNeg;
                                    glupdCommand.UpdateCommand.Parameters.Add("@nUpdAmt", SqlDbType.Decimal).Value = lnUpdAmt;
                                    con.Open();
                                    glupdCommand.UpdateCommand.ExecuteNonQuery();
                                    con.Close();
                                }
                                else                                                       //There is no record for this patient for today
                                {
                                    string sqlquerybal = "select baldate,nclosbal from daybal where cacctnumb = " + "'" + tcAcctNumb + "' and convert(date,baldate)<='" + dTrandate + "' order by baldate desc";  //checking to see if there are previouis records for client

                                    SqlDataAdapter dab1 = new SqlDataAdapter(sqlquerybal, con);
                                    DataTable preview = new DataTable();
                                    dab1.Fill(preview);
                                    if (preview != null && preview.Rows.Count > 0)            //&&There are previous records for this account, we need to pick the last closing balance and insert new record
                                    {
                                        decimal lnClosBal = Convert.ToDecimal(preview.Rows[0]["nclosbal"]);
                                        string cpatquery = "exec tsp_InsertDailyBalance @baldate, @cAcctNumb, @nopenbal,@ndebit,@ncredit,@branchid,@ncompid";
                                        SqlDataAdapter glinsCommand = new SqlDataAdapter();
                                        glinsCommand.InsertCommand = new SqlCommand(cpatquery, con);
                                        glinsCommand.InsertCommand.Parameters.Add("@baldate", SqlDbType.DateTime).Value = dTrandate;
                                        glinsCommand.InsertCommand.Parameters.Add("@cAcctNumb", SqlDbType.Char).Value = tcAcctNumb;
                                        glinsCommand.InsertCommand.Parameters.Add("@nopenbal", SqlDbType.Decimal).Value = lnClosBal;
                                        glinsCommand.InsertCommand.Parameters.Add("@ndebit", SqlDbType.Decimal).Value = lnUpdAmtNeg;
                                        glinsCommand.InsertCommand.Parameters.Add("@ncredit", SqlDbType.Decimal).Value = lnUpdAmtPos;
                                        glinsCommand.InsertCommand.Parameters.Add("@branchid", SqlDbType.Int).Value = Global.GlUserCompID;
                                        glinsCommand.InsertCommand.Parameters.Add("@ncompid", SqlDbType.Int).Value = Global.GlUserCompID;

                                        con.Open();
                                        glinsCommand.InsertCommand.ExecuteNonQuery();
                                        con.Close();
                                    }
                                    else                                                    //There is no previous record for this account, we just insert  a new record
                                    {
                                        //                            MessageBox.Show("There is no previous record for this account, we just insert  a new record");
                                        string cpatquery12 = "exec tsp_InsertDailyBalance @baldate, @cAcctNumb, @nopenbal,@ndebit,@ncredit,@branchid,@ncompid";
                                        SqlDataAdapter glinsCommand = new SqlDataAdapter();
                                        glinsCommand.InsertCommand = new SqlCommand(cpatquery12, con);
                                        glinsCommand.InsertCommand.Parameters.Add("@baldate", SqlDbType.DateTime).Value = dTrandate;
                                        glinsCommand.InsertCommand.Parameters.Add("@cAcctNumb", SqlDbType.Char).Value = tcAcctNumb;
                                        glinsCommand.InsertCommand.Parameters.Add("@nopenbal", SqlDbType.Decimal).Value = 0.00m;
                                        glinsCommand.InsertCommand.Parameters.Add("@ndebit", SqlDbType.Decimal).Value = lnUpdAmtNeg;
                                        glinsCommand.InsertCommand.Parameters.Add("@ncredit", SqlDbType.Decimal).Value = lnUpdAmtPos;
                                        glinsCommand.InsertCommand.Parameters.Add("@branchid", SqlDbType.Int).Value = Global.GlUserCompID;
                                        glinsCommand.InsertCommand.Parameters.Add("@ncompid", SqlDbType.Int).Value = Global.GlUserCompID;

                                        con.Open();
                                        glinsCommand.InsertCommand.ExecuteNonQuery();
                                        con.Close();
                                    }
                                }

                            }
                            else {

                            }
                            UpdateBalance(tcAcctNumb);
                        }
                       
                    }
                    else
                    {
                        break;
                    }
                
                }

                GridView1.DataSource = null;
                GridView1.DataBind();

                TextBox1.Text = 0.00.ToString("N");
                TextBox2.Text = 0.00.ToString("N");

                string message = "Journal Verified Completed!!!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString()); 

                con.Close();

                //    foreach (GridViewRow gr in GridView1.Rows)
                //    {

                //        string query = "insert into journal (cvoucherno,dtrandate,dpostdate ,ctrandesc,cacctnumb, ntranamnt ,cuserid ,compid ,sverified,Debit,Credit)  values (@cvoucherno,@dtrandate ,@dpostdate,@ctrandesc,@cacctnumb,@ntranamnt,@cuserid,@compid,@sverified,@Debit,@Credit)";
                //        SqlCommand cmd = new SqlCommand(query, con);
                //        cmd.Parameters.AddWithValue("@cvoucherno", gr.Cells[0].Text);
                //        cmd.Parameters.AddWithValue("@dtrandate", gr.Cells[1].Text);
                //        cmd.Parameters.AddWithValue("@dpostdate", gr.Cells[1].Text);
                //        cmd.Parameters.AddWithValue("@ctrandesc", gr.Cells[2].Text);
                //        cmd.Parameters.AddWithValue("@cacctnumb", gr.Cells[3].Text);
                //        cmd.Parameters.AddWithValue("@ntranamnt", -(Convert.ToDouble(gr.Cells[4].Text)) + Convert.ToDouble(gr.Cells[5].Text));
                //        cmd.Parameters.AddWithValue("@cuserid", Global.GlUserNames);
                //        cmd.Parameters.AddWithValue("@compid", Global.GlUserCompID);
                //        cmd.Parameters.AddWithValue("@sverified", 0);
                //        cmd.Parameters.AddWithValue("@Debit", -(Convert.ToDouble(gr.Cells[4].Text)));
                //        cmd.Parameters.AddWithValue("@Credit", Convert.ToDouble(gr.Cells[5].Text));
                //        con.Open();
                //        cmd.ExecuteNonQuery();
                //        con.Close();
                //    }
                //    GridView1.DataSource = null;
                //    GridView1.DataBind();

                //    string message = "Journal Creation Completed!!!";

                //    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                //    sb.Append("<script type = 'text/javascript'>");

                //    sb.Append("window.onload=function(){");

                //    sb.Append("alert('");

                //    sb.Append(message);

                //    sb.Append("')};");

                //    sb.Append("</script>");

                //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            else
            {
                string message = "Debit and Credit are not balance!!!";

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
    }
}