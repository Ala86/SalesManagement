using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{

  
    public class UserUpdate
    {
        //[usernumb][oprcode][username][firstname][midname][lastname][mobileNo]
        public int usernumb { get; set; }
        public string oprcode { get; set; }
        public string username { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string mobileNo { get; set; }
    }

    public class UsersUpdate
    {
        public static void UpdateUsers(int usernumb, string oprcode, string username, string firstname, string lastname, string mobileNo)
        {
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            string updateQuery = "Update susers set oprcode = @oprcode, username = @username, firstname = @firstname, " +
                "lastname = @lastname, mobileNo = @mobileNo where usernumb = @usernumb";
            SqlCommand cmd = new SqlCommand(updateQuery, con);
            SqlParameter paramusernumb = new SqlParameter("@usernumb", usernumb);
            cmd.Parameters.Add(paramusernumb);
            SqlParameter paramoprcode = new SqlParameter("@oprcode", oprcode);
            cmd.Parameters.Add(paramoprcode);
            SqlParameter paramusername = new SqlParameter("@username", username);
            cmd.Parameters.Add(paramusername);
            SqlParameter paramfirstname = new SqlParameter("@firstname", firstname);
            cmd.Parameters.Add(paramfirstname);
            SqlParameter paramlastname = new SqlParameter("@lastname", lastname);
            cmd.Parameters.Add(paramlastname);
            SqlParameter parammobileNo = new SqlParameter("@mobileNo", mobileNo);
            cmd.Parameters.Add(parammobileNo);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public static List<UserUpdate> GetAllUsers()
        {
            List<UserUpdate> ListUserUpdate = new List<UserUpdate>();
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {
                SqlCommand command = new SqlCommand("SPUser", con);
                //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
                command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataReader da = command.ExecuteReader();
                while (da.Read())
                {
                    //[usernumb][oprcode][username][firstname][midname][lastname][mobileNo]
                    UserUpdate Users = new UserUpdate();
                    Users.usernumb = Convert.ToInt32(da["usernumb"]);
                    Users.oprcode = da["oprcode"].ToString();
                    Users.username = da["username"].ToString();
                    Users.firstname = da["firstname"].ToString();
                    Users.lastname = da["lastname"].ToString();
                    Users.mobileNo = da["mobileNo"].ToString();
                    ListUserUpdate.Add(Users);
                }
            }
            return ListUserUpdate;
        }
    }
}