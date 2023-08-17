using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public class customers
    {
        //  ccustcode,fname,mname,lname,datejoin,nationality,city,address,phone,email
        public int custcode { get; set; }
        public string fname { get; set; }
        public string mname { get; set; }
        public string lname { get; set; }
        public DateTime datejoin { get; set; }
        public string nationality { get; set; }
        public string city { get; set; }
        public string address { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
       
    }
    public class CustomerUpdate
    {
        //  ccustcode,fname,mname,lname,datejoin,nationality,city,address,phone,email
        public static void UpdateCustomers(int custcode, string fname, string mname, string lname, DateTime datejoin, int nationality, string city, string address, string phone, string email)
        {
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            string updateQuery = "Update CustomerRegistration set fname = @fname, mname = @mname, lname = @lname, " +
                "datejoin = @datejoin, nationality = @nationality, city = @city, address = @address, phone = @phone, email = @email" +
           " where custcode = @custcode";
            SqlCommand cmd = new SqlCommand(updateQuery, con);
            SqlParameter paramcustcode = new SqlParameter("@custcode", custcode);
            cmd.Parameters.Add(paramcustcode);
            SqlParameter paramfname = new SqlParameter("@fname", fname);
            cmd.Parameters.Add(paramfname);
            SqlParameter parammname = new SqlParameter("@mname", mname);
            cmd.Parameters.Add(parammname);
            SqlParameter paramlname = new SqlParameter("@lname", lname);
            cmd.Parameters.Add(paramlname);
            SqlParameter paramdatejoin = new SqlParameter("@datejoin", datejoin);
            cmd.Parameters.Add(paramdatejoin);
            SqlParameter paramnationality = new SqlParameter("@nationality", nationality);
            cmd.Parameters.Add(paramnationality);
            SqlParameter paramcity = new SqlParameter("@city", city);
            cmd.Parameters.Add(paramcity);
            SqlParameter paramaddress = new SqlParameter("@address", address);
            cmd.Parameters.Add(paramaddress);
            SqlParameter paramphone = new SqlParameter("@phone", phone);
            cmd.Parameters.Add(paramphone);
            SqlParameter paramemail = new SqlParameter("@email", email);
            cmd.Parameters.Add(paramemail);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /////////////////////////////////////
        public static List<customers> GetAllcustomers()
        {
            List<customers> Listcustomer = new List<customers>();
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {
                SqlCommand command = new SqlCommand("SPcustomers", con);
                //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
                command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataReader da = command.ExecuteReader();
                while (da.Read())
                {
                    // ccustcode,fname,mname,lname,datejoin,nationality,city,address,phone,email
                    customers customer = new customers();
                    customer.custcode = Convert.ToInt16(da["custcode"]);
                    customer.fname = da["fname"].ToString();
                    customer.mname = da["mname"].ToString();
                    customer.lname = da["lname"].ToString();
                    customer.datejoin = Convert.ToDateTime(da["datejoin"]);
                    customer.nationality = da["nationality"].ToString();
                    customer.city = da["city"].ToString();
                    customer.address = da["address"].ToString();
                    customer.phone = da["phone"].ToString();
                    customer.email = da["email"].ToString();
                    Listcustomer.Add(customer);
                }
            }
            return Listcustomer;
        }
    }
}