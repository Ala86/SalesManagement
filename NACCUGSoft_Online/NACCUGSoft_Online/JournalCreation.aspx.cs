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
    public partial class JournalCreation : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        string refnum = "000";
        decimal gnTotaldebit = 0.00m;
        decimal gnTotalCredit = 0.00m;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TextBox10.Text = Global.GlUserNames;
                getAccount();
               // getAccount1();
                GenerateAutoID();
                if (ViewState["Records"] == null)
                {
                    dt.Columns.Add("JV_Number");
                    dt.Columns.Add("Tran_Date");
                    dt.Columns.Add("Description");
                    dt.Columns.Add("Debit_Account");
                    dt.Columns.Add("Debit_Amount");
                    dt.Columns.Add("Credit_Amount");
                    //dt.Columns.Add("User_ID");
                    //dt.Columns.Add("Comp_ID");
                    ViewState["Records"] = dt;


                }

            }
        //    GridView1.Columns["ddebit"].SortMode = DataGridViewColumnSortMode.NotSortable;
         //   jourgrid.Columns["ddebit"].HeaderCell.Style.Alignment = DataGridViewContentAlignment.MiddleRight;
        }


        private void GenerateAutoID()
        {
            string ala;
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            SqlCommand command = new SqlCommand("SPAutoJournal", con);
            //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.SelectedValue));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    // refnumber.Text = dr.GetInt32(dr.GetOrdinal("count")).ToString();
                    ala = dr.GetInt32(dr.GetOrdinal("count")).ToString();
                    CustomerAddress.Text = refnum + ala;
                }
            }
        }
        private void getAccount()
        {

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {

                //   string com = "Select custcode, nbookbal, ltrim(rtrim(businessname)) as Account_Name from cusreg where ccustcode = '" + TextBox1.Text.Trim() + "' and nbookbal <> 0";
                string com = "select cacctnumb,cacctname,compid from glmast where compid = '" + Global.GlUserCompID + "'";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "cacctname";
                DropDownList1.DataValueField = "cacctnumb";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem(string.Empty, string.Empty));


                //DropDownList3.DataSource = dt;
                //DropDownList3.DataBind();
                //DropDownList3.DataTextField = "cacctname";
                //DropDownList3.DataValueField = "cacctnumb";

                //DropDownList3.DataBind();
                //DropDownList3.Items.Insert(0, new ListItem(string.Empty, string.Empty));

                //getEntityCode1();

            }
        }

        //private void getAccount1()
        //{

        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        //   string com = "Select custcode, nbookbal, ltrim(rtrim(businessname)) as Account_Name from cusreg where ccustcode = '" + TextBox1.Text.Trim() + "' and nbookbal <> 0";
        //        string com = "select cacctnumb,cacctname,compid from glmast where compid = '" + Global.GlUserCompID + "'";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        DropDownList3.DataSource = dt;
        //        DropDownList3.DataBind();
        //        DropDownList3.DataTextField = "cacctname";
        //        DropDownList3.DataValueField = "cacctnumb";
        //        DropDownList3.DataBind();
        //        DropDownList3.Items.Insert(0, new ListItem(string.Empty, string.Empty));


        //        //DropDownList3.DataSource = dt;
        //        //DropDownList3.DataBind();
        //        //DropDownList3.DataTextField = "cacctname";
        //        //DropDownList3.DataValueField = "cacctnumb";

        //        //DropDownList3. DataBind();
        //        //DropDownList3.Items.Insert(0, new ListItem(string.Empty, string.Empty));

        //        //getEntityCode1();

        //    }
        //}
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox9.Text != string.Empty && CustomerAddress.Text != string.Empty)
            {
                if (TextBox1.Text.Trim() == TextBox4.Text.Trim())
                {
                    string message = "Debit and Credit Cannot Be Equal!!!";

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                    sb.Append("<script type = 'text/javascript'>");

                    sb.Append("window.onload=function(){");

                    sb.Append("alert('");

                    sb.Append(message);

                    sb.Append("')};");

                    sb.Append("</script>");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                    TextBox1.Text = 0.00.ToString("N");
                    TextBox4.Text = 0.00.ToString("N");
                }
                else
                {
                    TextBox10.Text = Global.GlUserNames;
                    //double balances = Convert.ToDouble(InvoiceAmount.Text.Trim()) + Convert.ToDouble(TotalBalance.Text.Trim());
                    //double amount = Convert.ToDouble(TotalBalance.Text.Trim());

                    dt = (DataTable)ViewState["Records"];
                    dt.Rows.Add(CustomerAddress.Text, TextBox9.Text.Trim(), TextBox8.Text, DropDownList1.SelectedValue.Trim(), TextBox1.Text.Trim(), TextBox4.Text.Trim());
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }

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
            // TextBox2.Text = Convert.ToDecimal(gr.Cells[8].Text));
            sumtotal();
            getAccount();
         //   getAccount1();
          //  CustomerAddress.Text = string.Empty;
            TextBox4.Text = 0.00.ToString("N");
            TextBox1.Text = 0.00.ToString("N");
          //  TextBox8.Text = string.Empty;
           // TextBox9.Text = string.Empty;

          //  GenerateAutoID();
        }


        private void sumtotal()
        {
            gnTotaldebit = 0.00m;
            gnTotalCredit = 0.00m;
            // for (int i = 0; i < GridView1.Rows.Count; i++)
            foreach (GridViewRow gr in GridView1.Rows)
            
            {
                gnTotaldebit = gnTotaldebit + Convert.ToDecimal(gr.Cells[4].Text); //Convert.ToDecimal(GridView1.Rows[i].Cells["Debit_Amount"].Value);
                gnTotalCredit = gnTotalCredit + Convert.ToDecimal(gr.Cells[5].Text);
            }
            TextBox2.Text = gnTotaldebit.ToString("N2");
            TextBox3.Text = gnTotalCredit.ToString("N2");   
          //  AllClear2Go();
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {

            GridView1.DataSource = null;
            GridView1.DataBind();
            Response.Redirect("~/JournalCreation.aspx");
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList1.Enabled = false;
            TextBox1.Text = "";
            TextBox1.Enabled = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
        //    DropDownList3.Enabled = false;
            TextBox4.Text = 0.00.ToString("N");
            TextBox4.Enabled = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            if (TextBox2.Text.Trim() == TextBox3.Text.Trim())
            {

                foreach (GridViewRow gr in GridView1.Rows)
                {

                    string query = "insert into journal (cvoucherno,dtrandate,dpostdate ,ctrandesc,cacctnumb, ntranamnt ,cuserid ,compid ,sverified,Debit,Credit)  values (@cvoucherno,@dtrandate ,@dpostdate,@ctrandesc,@cacctnumb,@ntranamnt,@cuserid,@compid,@sverified,@Debit,@Credit)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@cvoucherno", gr.Cells[0].Text);
                    cmd.Parameters.AddWithValue("@dtrandate", gr.Cells[1].Text);
                    cmd.Parameters.AddWithValue("@dpostdate", gr.Cells[1].Text);
                    cmd.Parameters.AddWithValue("@ctrandesc", gr.Cells[2].Text);
                    cmd.Parameters.AddWithValue("@cacctnumb", gr.Cells[3].Text);
                    cmd.Parameters.AddWithValue("@ntranamnt", -(Convert.ToDouble(gr.Cells[4].Text)) + Convert.ToDouble(gr.Cells[5].Text));
                    cmd.Parameters.AddWithValue("@cuserid", Global.GlUserNames);
                    cmd.Parameters.AddWithValue("@compid", Global.GlUserCompID);
                    cmd.Parameters.AddWithValue("@sverified", 0);
                    cmd.Parameters.AddWithValue("@Debit", -(Convert.ToDouble(gr.Cells[4].Text)));
                    cmd.Parameters.AddWithValue("@Credit", Convert.ToDouble(gr.Cells[5].Text));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    //dt.Columns.Add("JV_Number");  0
                    //dt.Columns.Add("Tran_Date");  1
                    //dt.Columns.Add("Description"); 2
                    //dt.Columns.Add("Debit_Account"); 3
                    //dt.Columns.Add("Debit_Amount"); 4
                    //dt.Columns.Add("Credit_Amount"); 5
                    //dt.Columns.Add("User_ID"); 6
                    //dt.Columns.Add("Comp_ID"); 7

                }
                GridView1.DataSource = null;
                GridView1.DataBind();

                string message = "Journal Creation Completed!!!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            else
            {
                string message = "The Debit and Credit should balance before you can post!!!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }

       //     GenerateReport();
            GenerateAutoID();
        }
    }
}