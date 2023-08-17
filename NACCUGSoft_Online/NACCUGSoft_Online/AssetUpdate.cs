using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public class assets
    {
        //  assetid, assetcode,assetname, buyingprice, leadtime, assetspec, salvagevalue, assetlocation,assetDate
        public int assetid { get; set; }
        public string assetcode { get; set; }
        public string assetname { get; set; }
        public double buyingprice { get; set; }
        public int leadtime { get; set; }
        public string assetspec { get; set; }
        public double salvagevalue { get; set; }
        public string assetlocation { get; set; }
        public DateTime AssetDate { get; set; }

    }
    public class AssetUpdate
    {
        // assetid, assetcode,assetname, buyingprice, leadtime, assetspec, salvagevalue, assetlocation,assetDate
        public static void UpdateAssets(int assetid, string assetcode, string assetname, double buyingprice, int leadtime, string assetspec, double salvagevalue, string assetlocation, DateTime AssetDate)
        {
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            string updateQuery = "Update assets set assetcode = @assetcode, assetname = @assetname, buyingprice = @buyingprice, " +
                "leadtime = @leadtime, assetspec = @assetspec, salvagevalue = @salvagevalue, assetlocation = @assetlocation, AssetDate = @AssetDate" +
           " where assetid = @assetid";
            SqlCommand cmd = new SqlCommand(updateQuery, con);
            SqlParameter paramassetid = new SqlParameter("@assetid", assetid);
            cmd.Parameters.Add(paramassetid);
            SqlParameter paramassetcode = new SqlParameter("@assetcode", assetcode);
            cmd.Parameters.Add(paramassetcode);
            SqlParameter paramassetname = new SqlParameter("@assetname", assetname);
            cmd.Parameters.Add(paramassetname);
            SqlParameter parambuyingprice = new SqlParameter("@buyingprice", buyingprice);
            cmd.Parameters.Add(parambuyingprice);
            SqlParameter paramleadtime = new SqlParameter("@leadtime", leadtime);
            cmd.Parameters.Add(paramleadtime);
            SqlParameter paramassetspec = new SqlParameter("@assetspec", assetspec);
            cmd.Parameters.Add(paramassetspec);
            SqlParameter paramsalvagevalue = new SqlParameter("@salvagevalue", salvagevalue);
            cmd.Parameters.Add(paramsalvagevalue);
            SqlParameter paramassetlocation = new SqlParameter("@assetlocation", assetlocation);
            cmd.Parameters.Add(paramassetlocation);
            SqlParameter paramassetDate = new SqlParameter("@AssetDate", AssetDate);
            cmd.Parameters.Add(paramassetDate);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /////////////////////////////////////
        public static List<assets> GetAllcustomers()
        {
            List<assets> Listasset = new List<assets>();
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {
                SqlCommand command = new SqlCommand("SPassets", con);
                //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
                command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataReader da = command.ExecuteReader();
                while (da.Read())
                {
                    // assetid, assetcode,assetname, buyingprice, leadtime, assetspec, salvagevalue, assetlocation,assetDate
                    assets asset = new assets();
                    asset.assetid = Convert.ToInt16(da["assetid"]);
                    asset.assetcode = da["assetcode"].ToString();
                    asset.assetname = da["assetname"].ToString();
                    asset.buyingprice = Convert.ToDouble(da["buyingprice"]);
                    asset.leadtime = Convert.ToInt32(da["leadtime"]);
                    asset.assetspec = da["assetspec"].ToString();
                    asset.salvagevalue = Convert.ToDouble(da["salvagevalue"]);
                    asset.assetlocation = da["assetlocation"].ToString();
                    asset.AssetDate = Convert.ToDateTime(da["AssetDate"]);
                    Listasset.Add(asset);
                }
            }
            return Listasset;
        }
    }
}