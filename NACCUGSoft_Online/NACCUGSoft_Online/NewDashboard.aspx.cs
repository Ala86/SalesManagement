using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public partial class NewDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ala1();
                ala();
            }
            string Fullname = Global.GlUserNamesf;
            Label1.Text = "Good day! "+ Fullname;
            string compname = Global.GlUserNamesc;
            Label2.Text = "Welcome to! " + compname;
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        void ala()
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string datefrom = Request.Form["datefrom"];
            string dateto = Request.Form["dateto"];
            con.Open();
            SqlCommand command = new SqlCommand("SPReceiptTranStistic", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    TextBox1.Text = dr.GetInt32(dr.GetOrdinal("receipt")).ToString();
                    //TextBox2.Text = dr.GetString(dr.GetOrdinal("baddress"));
                    TextBox3.Text = dr.GetDecimal(dr.GetOrdinal("total_sales")).ToString("N");
                    TextBox4.Text = dr.GetDecimal(dr.GetOrdinal("revenue")).ToString("N");
                }
            }
           
        }

        //SPProductStats

        void ala1()
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string datefrom = Request.Form["datefrom"];
            string dateto = Request.Form["dateto"];
            con.Open();
            SqlCommand command = new SqlCommand("SPProductStats", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    TextBox2.Text = dr.GetInt32(dr.GetOrdinal("total_product")).ToString();
                    TextBox5.Text = dr.GetDecimal(dr.GetOrdinal("qty")).ToString("N");
                }
            }

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }
        private void ExportGridToExcel()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Vithal" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            GridView1.GridLines = GridLines.Both;
            GridView1.HeaderStyle.Font.Bold = true;
            GridView1.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();

        }

        ///////////////////
        //protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    this.ala();
        //}
    }
}