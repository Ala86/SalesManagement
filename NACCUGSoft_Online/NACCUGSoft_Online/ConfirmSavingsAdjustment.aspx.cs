﻿using System;
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
    public partial class ConfirmSavingsAdjustment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Global.GlUserNames;
            getEntityAccounts();
        }
        private void getEntityAccounts()
        {
            String strConnString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("[OnlineSavingsAdjustmentConfirm]", con);
            // command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", TextBox1.Text));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}