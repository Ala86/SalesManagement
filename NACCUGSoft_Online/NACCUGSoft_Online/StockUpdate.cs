using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{

    public class products
    {
        //product_id, prod_name, sell_price, buy_price, quantity, rorder_lev, discontinu, rorder_qty, max_level, totvalue, Serv_fee, qty
        public int product_id { get; set; }
        public string prod_name { get; set; }
        public decimal sell_price { get; set; }
        public decimal buy_price { get; set; }
        public int quantity { get; set; }
        public decimal rorder_lev { get; set; }
        public decimal discontinu { get; set; }
        public int rorder_qty { get; set; }
        public int max_level { get; set; }
        public decimal totvalue { get; set; }
        public decimal Serv_fee { get; set; }
        public int qty { get; set; }
    }
    public class StockUpdate
    {
        public static void UpdateProducts(int product_id, string prod_name, decimal sell_price, decimal buy_price, int quantity, int rorder_lev, decimal discontinu, int rorder_qty, int max_level, decimal totvalue, decimal Serv_fee, int qty)
        {
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            string updateQuery = "Update products set prod_name = @prod_name, sell_price = @sell_price, buy_price = @buy_price, "+
                "quantity = @quantity, rorder_lev = @rorder_lev, discontinu = @discontinu, rorder_qty = @rorder_qty, max_level = @max_level,"+
           " totvalue = @totvalue, Serv_fee = @Serv_fee, qty = @qty where product_id = @product_id";
            SqlCommand cmd = new SqlCommand(updateQuery, con);
            SqlParameter paramProdctId = new SqlParameter("@product_id", product_id);
            cmd.Parameters.Add(paramProdctId);
            SqlParameter paramprod_name = new SqlParameter("@prod_name", prod_name);
            cmd.Parameters.Add(paramprod_name);
            SqlParameter paramsell_price = new SqlParameter("@sell_price", sell_price);
            cmd.Parameters.Add(paramsell_price);
            SqlParameter parambuy_price = new SqlParameter("@buy_price", buy_price);
            cmd.Parameters.Add(parambuy_price);
            SqlParameter paramquantity = new SqlParameter("@quantity", quantity);
            cmd.Parameters.Add(paramquantity);
            SqlParameter paramrorder_lev = new SqlParameter("@rorder_lev", rorder_lev);
            cmd.Parameters.Add(paramrorder_lev);
            SqlParameter paramdiscontinu = new SqlParameter("@discontinu", discontinu);
            cmd.Parameters.Add(paramdiscontinu);
            SqlParameter paramrorder_qty = new SqlParameter("@rorder_qty", rorder_qty);
            cmd.Parameters.Add(paramrorder_qty);
            SqlParameter paramrmax_level = new SqlParameter("@max_level", max_level);
            cmd.Parameters.Add(paramrmax_level);
            SqlParameter paramrtotvalue = new SqlParameter("@totvalue", totvalue);
            cmd.Parameters.Add(paramrtotvalue);
            SqlParameter paramrServ_fee = new SqlParameter("@Serv_fee", Serv_fee);
            cmd.Parameters.Add(paramrServ_fee);
            SqlParameter paramrqty = new SqlParameter("@qty", qty);
            cmd.Parameters.Add(paramrqty);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public static List<products> GetAllProducts()
        {
            List<products> ListProducts = new List<products>();
            string connStr = ConfigurationManager.ConnectionStrings["NACCUDATAConnectionStringALA"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            {
                SqlCommand command = new SqlCommand("SPstockUpdate", con);
                //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@fromdate", TextBox1.Text));
                command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", Global.GlUserCompID));
                command.CommandType = CommandType.StoredProcedure;
                SqlDataReader da = command.ExecuteReader();
                while (da.Read())
                {
                    //product_id, prod_name, sell_price, buy_price, quantity, rorder_lev, discontinu, rorder_qty, max_level, totvalue, Serv_fee, qty
                    products products = new products();
                    products.product_id = Convert.ToInt32(da["product_id"]);
                    products.prod_name = da["prod_name"].ToString();
                    products.sell_price = Convert.ToDecimal(da["sell_price"]);
                    products.buy_price = Convert.ToDecimal(da["buy_price"]);
                    products.quantity = Convert.ToInt32(da["quantity"]);
                    products.rorder_lev = Convert.ToInt32(da["rorder_lev"]);
                    products.discontinu = Convert.ToDecimal(da["discontinu"]);
                    products.rorder_qty = Convert.ToInt32(da["rorder_qty"]);
                    products.max_level = Convert.ToInt32(da["max_level"]);
                    products.totvalue = Convert.ToDecimal(da["totvalue"]);
                    products.Serv_fee = Convert.ToDecimal(da["Serv_fee"]);
                    products.qty = Convert.ToInt32(da["qty"]);

                    ListProducts.Add(products);
                }
            }
            return ListProducts;
        }
    }
   
}