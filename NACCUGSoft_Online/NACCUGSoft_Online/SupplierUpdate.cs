using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public class suppliers
    {
        // id,ccustcode,businessname,residential, baddress, phone, cperson, cpersonaddress, cpersonphone,email ,wproduct, datejoin, bregistrationDate
        public int id { get; set; }
        public string ccustcode { get; set; }
        public string businessname { get; set; }
        public string residential { get; set; }
        public string baddress { get; set; }
        public string phone { get; set; }
        public string cperson { get; set; }
        public string cpersonaddress { get; set; }
        public string cpersonphone { get; set; }
        public string email { get; set; }
        public string wproduct { get; set; }
        public DateTime renewdate { get; set; }
        public DateTime bregistrationDate { get; set; }
    }
    public class SupplierUpdate
    {
        // id,ccustcode,businessname,residential, baddress, phone, cperson, cpersonaddress, cpersonphone,email ,wproduct, datejoin, bregistrationDate

        public static void UpdateSupplier(int id, string businessname, string residential, string baddress, string phone, string cperson, string cpersonaddress, string cpersonphone, string email, string wproduct, DateTime renewdate, DateTime bregistrationDate)
        {
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            string updateQuery = "Update OnlineRegistration set businessname = @businessname, residential = @residential, baddress = @baddress, " +
                "phone = @phone, cperson = @cperson, cpersonaddress = @cpersonaddress, cpersonphone = @cpersonphone, email = @email,"+
                "wproduct = @wproduct, renewdate = @renewdate, bregistrationDate = @bregistrationDate where id = @id";
            SqlCommand cmd = new SqlCommand(updateQuery, con);
            SqlParameter paramid = new SqlParameter("@id", id);
            cmd.Parameters.Add(paramid);
            SqlParameter parambusinessname = new SqlParameter("@businessname", businessname);
            cmd.Parameters.Add(parambusinessname);
            SqlParameter paramresidential = new SqlParameter("@residential", residential);
            cmd.Parameters.Add(paramresidential);
            SqlParameter parambaddress = new SqlParameter("@baddress", baddress);
            cmd.Parameters.Add(parambaddress);
            SqlParameter paramphone = new SqlParameter("@phone", phone);
            cmd.Parameters.Add(paramphone);
            SqlParameter paramcperson = new SqlParameter("@cperson", cperson);
            cmd.Parameters.Add(paramcperson);
            SqlParameter paramcpersonaddress = new SqlParameter("@cpersonaddress", cpersonaddress);
            cmd.Parameters.Add(paramcpersonaddress);
            SqlParameter paramcpersonphone = new SqlParameter("@cpersonphone", cpersonphone);
            cmd.Parameters.Add(paramcpersonphone);
            SqlParameter paramemail = new SqlParameter("@email", email);
            cmd.Parameters.Add(paramemail);
            SqlParameter paramwproduct = new SqlParameter("@wproduct", wproduct);
            cmd.Parameters.Add(paramwproduct);
            SqlParameter paramdrenewdate = new SqlParameter("@renewdate", renewdate);
            cmd.Parameters.Add(paramdrenewdate);
            SqlParameter parambregistrationDate = new SqlParameter("@bregistrationDate", bregistrationDate);
            cmd.Parameters.Add(parambregistrationDate);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /////////////////////////////////////
        public static List<suppliers> GetAllsuppliers()
        {
            List<suppliers> ListSuppliers = new List<suppliers>();
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {
                SqlCommand command = new SqlCommand("SPsuppliers", con);
                //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
                command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataReader da = command.ExecuteReader();
                while (da.Read())
                {
                    // id,ccustcode,businessname,residential, baddress, phone, cperson, cpersonaddress, cpersonphone,email ,wproduct, datejoin, bregistrationDate
                    suppliers supplier = new suppliers();
                    supplier.id = Convert.ToInt32(da["id"]);
                 //   supplier.ccustcode = da["ccustcode"].ToString();
                    supplier.businessname = da["businessname"].ToString();
                    supplier.residential = da["residential"].ToString();
                    supplier.baddress = da["baddress"].ToString();
                    supplier.phone = da["phone"].ToString();
                    supplier.cperson = da["cperson"].ToString();
                    supplier.cpersonaddress = da["cpersonaddress"].ToString();
                    supplier.cpersonphone = da["cpersonphone"].ToString();
                    supplier.email = da["email"].ToString();
                    supplier.wproduct = da["wproduct"].ToString();
                    supplier.renewdate = Convert.ToDateTime(da["renewdate"]);
                    supplier.bregistrationDate = Convert.ToDateTime(da["bregistrationDate"]);

                    ListSuppliers.Add(supplier);
                }
            }
            return ListSuppliers;
        }
    }
}