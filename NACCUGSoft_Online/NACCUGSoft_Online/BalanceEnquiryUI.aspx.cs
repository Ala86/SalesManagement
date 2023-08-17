using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net;
using System.Security.Cryptography;
using RestSharp;
using Newtonsoft.Json;

namespace NACCUGSoft_Online
{
    public partial class BalanceEnquiryUI : System.Web.UI.Page
    {
        string gcCustName = string.Empty;
        string gcMeterNo = string.Empty;
        string gcTokenNo = string.Empty;
        string gcVatAmt = string.Empty;
        string gcAmount = string.Empty;
        string gcKwh = string.Empty;
        string gcFee = string.Empty;
        string gcRecept = string.Empty;
        string gcGsmType = string.Empty;
        decimal gnBuyAmt = 0.00m;
        decimal gnTransValue = 0.00m;
        StringBuilder table = new StringBuilder();
        int ncompid = 30;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BalanceEnquiry();
            }
        }

        private static string GetHash(HashAlgorithm hashAlgorithm, string input)
        {
            // Convert the input string to a byte array and compute the hash.
            byte[] data = hashAlgorithm.ComputeHash(Encoding.UTF8.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes and create a string.
            var sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string.
            return sBuilder.ToString();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            BalanceEnquiry();
        }
        private void BalanceEnquiry()
        {
            try
            {

                //  gnBuyAmt = Convert.ToDecimal(Balance.Text);

                // long unixTime = ((DateTimeOffset)currentTime).ToUnixTimeSeconds();
                string nonce = DateTimeOffset.Now.ToUnixTimeSeconds().ToString().Trim();
                string timeStamp = DateTimeOffset.Now.ToUnixTimeSeconds().ToString().Trim();
                string lcHash = string.Empty;
                //string meterNumber = meterNo.Text.ToString().Trim();
                //string lcAmt = gnBuyAmt.ToString().Trim() + "00";
                //string mobileNo = "220" + phonenumber.Text.ToString().Trim();
                string cukey = "265ee8c0-fa72-49e5-96f3-802f18c5fcc9";
                string CardNumber = "5061829900000453";
                string Vend = "balance";
                string lcAuth = "Bearer Gh8rVJIILDXd0EFjxXnCA9SuFFNs00MPxaEO7VMwZ78INzqc6lmmJykJW_HcgM8ugFcPp1ewEwNdxF99bpDBhmRvei7m03ystq8UehE8f2KjrvRJVqzetBZBEpdDPTDk5vxMuQxGpa7vJ79-hOv3xhAk5q1olTORvZUhdi2DnbXfNduoV_RO0fVSiwpFIWkCSigW1z61nqSPkqfFS6CeB9WP9l8gs9TurhSBFWkBxhlZR2Xe77e511vnYtfZekxj3fTehZViedp5aK7-hf6TgGHGAhQrOWlbtaIIQsoAi_ZSDa7QmXHA5VeEJw0eqTL5hf2uOjm6SBKTHtwKyfmaqFFS-kNHc3vpvlZCdJHoUdnW24zDB9Y63GAS0jmXr5ROderxCQJl1WoceQvjuM7MGrPHleSdeFpC6QUwFRiBhQiPsFA23a34eDhIZfCOdFv2q0oQgUPc4CSd_7W1Sy6Tsob8baQCxrQ0SAAGM4rCgq8ilRYU4fzrVCcYKj0bZ7twF48Vjj4QUlVKNQAP6KYvVw";
                //HA 512 hash of (key + “nawec” + “vend” + nonce + timestamp + meternumber)
                string transMessage = cukey.Trim() + Vend.Trim() + nonce.Trim() + timeStamp.Trim() + CardNumber.Trim();
                string messData = cukey.Trim() +  Vend.Trim() + nonce.Trim() + timeStamp.Trim() + CardNumber.Trim();
                using (SHA512 sha512Hash = SHA512.Create())
                {
                    lcHash = GetHash(sha512Hash, messData);
                }
                var client = new RestClient("https://api.gamswitchgm.com/api/balance/gswlive/");
                client.Timeout = -1;
                // HA 512 hash of (key + “balance” + nonce + timestamp + Card Number)

                var requestPost = new RestRequest(Method.POST);
                requestPost.AddHeader("Content-Type", "application/x-www-form-urlencoded");
                requestPost.AddHeader("Accept", "application / json");
                requestPost.AddHeader("Nonce", nonce.Trim());
                requestPost.AddHeader("Timestamp", timeStamp.Trim());
                requestPost.AddHeader("Authorization", lcAuth.Trim());
                requestPost.AddHeader("Signature", lcHash);
                requestPost.AddParameter("balance", Vend.Trim());
                 requestPost.AddParameter("CardNumber", CardNumber.Trim());
                IRestResponse response = client.Execute(requestPost);

                string rawResponse = response.Content.Trim();

                int nStatusCode = (int)response.StatusCode;
                string lcStatusCode = response.StatusDescription.ToString().Trim();
                string lcStatusDesc = errorMessages(nStatusCode.ToString().Trim().PadLeft(2, '0'));

                if (response.StatusCode == HttpStatusCode.OK)
                {
                    var rawresult = JsonConvert.SerializeObject(rawResponse, Formatting.Indented);
                    Balance.Text = rawresult.Trim();
                    //  string result = rawresult.Replace('{', ' ').Replace('}', ' ').Replace('\\', ' ').Replace('"', ' ').Trim();

                    //int ncustnameindex0 = Class1.NthIndexOf(result, ':', 3);
                    //int ncustnameindex1 = Class1.NthIndexOf(result, ',', 2);

                    //int nmeternoindex0 = Class1.NthIndexOf(result, ':', 4);
                    //int nmeternoindex1 = Class1.NthIndexOf(result, ',', 3);

                    //int ntokenindex0 = Class1.NthIndexOf(result, ':', 5);
                    //int ntokenindex1 = Class1.NthIndexOf(result, ',', 4);

                    //int nvatindex0 = Class1.NthIndexOf(result, ':', 6);
                    //int nvatindex1 = Class1.NthIndexOf(result, ',', 5);


                    //int namtindex0 = Class1.NthIndexOf(result, ':', 7);
                    //int namtindex1 = Class1.NthIndexOf(result, ',', 6);

                    //int nkwhindex0 = Class1.NthIndexOf(result, ':', 8);
                    //int nkwhindex1 = Class1.NthIndexOf(result, ',', 7);

                    //int nfeeindex0 = Class1.NthIndexOf(result, ':', 9);
                    //int nfeeindex1 = Class1.NthIndexOf(result, ',', 8);

                    //int nrecptindex0 = Class1.NthIndexOf(result, ':', 10);
                    //int nrecptindex1 = Class1.NthIndexOf(result, ',', 9);

                    //gcCustName = result.Substring(ncustnameindex0 + 1, ncustnameindex1 - ncustnameindex0).Replace(',', ' ').Trim();
                    //gcMeterNo = result.Substring(nmeternoindex0 + 1, nmeternoindex1 - nmeternoindex0).Replace(',', ' ').Trim();
                    //gcTokenNo = result.Substring(ntokenindex0 + 1, ntokenindex1 - ntokenindex0).Replace(',', ' ').Trim();
                    //gcVatAmt = result.Substring(nvatindex0 + 1, nvatindex1 - nvatindex0).Replace(',', ' ').Trim();
                    //gcAmount = result.Substring(namtindex0 + 1, namtindex1 - namtindex0).Replace(',', ' ').Trim();
                    //gcKwh = result.Substring(nkwhindex0 + 1, nkwhindex1 - nkwhindex0).Replace(',', ' ').Trim();
                    //gcFee = result.Substring(nfeeindex0 + 1, nfeeindex1 - nfeeindex0).Replace(',', ' ').Trim();
                    //gcRecept = result.Substring(nrecptindex0 + 1, nrecptindex1 - nrecptindex0).Replace(',', ' ').Trim();
                    //returnValue.Text = "Transaction Report\n \nCustomer Name : " + gcCustName + "\nMeter No     : " + gcMeterNo +
                    //    "\nToken         : " + gcTokenNo + "\nVat           : " + gcVatAmt + "\nAmount        : " + gcAmount + "\nAmountKwh     : " + gcKwh + "\nFee           : " + gcFee +
                    //    "\nReceipt No    : " + gcRecept;


                }
                else
                {
                    Console.WriteLine("Process failed \nStatus Code : " + lcStatusCode + "\nStatus Desc :" + lcStatusDesc + "\nResponse is : " + response.Content.Trim());
                    //  returnValue.Text = "";// response.Content;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                // MessageBox.Show(e.Message);
            }
        }

        private static string errorMessages(string tcStatusCode)
        {
            tcStatusCode = tcStatusCode.PadLeft(2, '0');
            string retValue = string.Empty;
            retValue =
                        tcStatusCode == "00" ? "Approved or completed successfully " :
                        tcStatusCode == "01" ? "Refer to card issuer " :
                        tcStatusCode == "02" ? "Refer to card issuer, special condition " :
                        tcStatusCode == "03" ? " Invalid merchant " :
                        tcStatusCode == "04" ? " Pick - up card " :
                        tcStatusCode == "05" ? " Do not honor " :
                        tcStatusCode == "06" ? " Error " :
                        tcStatusCode == "07" ? " Pick - up card, special condition " :
                        tcStatusCode == "08" ? " Honor with identification " :
                        tcStatusCode == "09" ? " Request in progress " :
                        tcStatusCode == "10" ? " Approved, partial " :
                        tcStatusCode == "11" ? " Approved, VIP " :
                        tcStatusCode == "12" ? " Invalid transaction " :
                        tcStatusCode == "13" ? " Invalid amount " :
                        tcStatusCode == "14" ? " Invalid card number " :
                        tcStatusCode == "15" ? " No such issuer " :
                        tcStatusCode == "16" ? " Approved, update track 3 " :
                        tcStatusCode == "17" ? " Customer cancellation " :
                        tcStatusCode == "18" ? " Customer dispute " :
                        tcStatusCode == "19" ? " Re - enter transaction " :
                        tcStatusCode == "20" ? " Invalid response " :
                        tcStatusCode == "21" ? " No action taken " :
                        tcStatusCode == "22" ? " Suspected malfunction " :
                        tcStatusCode == "23" ? " Unacceptable transaction fee " :
                        tcStatusCode == "24" ? " File update not supported " :
                        tcStatusCode == "25" ? " Unable to locate record " :
                        tcStatusCode == "26" ? " Duplicate record " :
                        tcStatusCode == "27" ? " File update edit error " :
                        tcStatusCode == "28" ? " File update file locked " :
                        tcStatusCode == "29" ? " File update failed " :
                        tcStatusCode == "30" ? " Format error " :
                        tcStatusCode == "31" ? " Bank not supported " :
                        tcStatusCode == "32" ? " Completed partiallyGamSwitch -API Integration Guide " :
                        tcStatusCode == "33" ? " Expired card, pick-up " :
                        tcStatusCode == "34" ? " Suspected fraud, pick-up " :
                        tcStatusCode == "35" ? " Contact acquirer, pick-up " :
                        tcStatusCode == "36" ? " Restricted card, pick-up " :
                        tcStatusCode == "37" ? " Call acquirer security, pick - up " :
                        tcStatusCode == "38" ? " PIN tries exceeded, pick - up " :
                        tcStatusCode == "39" ? " No credit account " :
                        tcStatusCode == "40" ? " Function not supported " :
                        tcStatusCode == "41" ? " Lost card " :
                        tcStatusCode == "42" ? " No universal account " :
                        tcStatusCode == "43" ? " Stolen card " :
                        tcStatusCode == "44" ? " No investment account " :
                        tcStatusCode == "45" ? " Account closed " :
                        tcStatusCode == "46" ? " Identification required " :
                        tcStatusCode == "47" ? " Identification cross-check required " :
                        tcStatusCode == "48" ? " No customer record " :
                        tcStatusCode == "51" ? " Not sufficient funds " :
                        tcStatusCode == "52" ? " No check account " :
                        tcStatusCode == "53" ? " No savings account " :
                        tcStatusCode == "54" ? " Expired card " :
                        tcStatusCode == "55" ? " Incorrect PIN " :
                        tcStatusCode == "56" ? " No card record " :
                        tcStatusCode == "57" ? " Transaction not permitted to cardholder " :
                        tcStatusCode == "58" ? " Transaction not permitted on terminal " :
                        tcStatusCode == "59" ? " Suspected fraud " :
                        tcStatusCode == "60" ? " Contact acquirer " :
                        tcStatusCode == "61" ? " Exceeds withdrawal limit " :
                        tcStatusCode == "62" ? " Restricted card " :
                        tcStatusCode == "63" ? " Security violation " :
                        tcStatusCode == "64" ? " Original amount incorrect " :
                        tcStatusCode == "65" ? " Exceeds withdrawal frequency " :
                        tcStatusCode == "66" ? " Call acquirer security " :
                        tcStatusCode == "67" ? " Hard capture " :
                        tcStatusCode == "68" ? " Financial Institution Unavailable " :
                        tcStatusCode == "69" ? " Advice received too late " :
                        tcStatusCode == "75" ? " PIN tries exceeded " :
                        tcStatusCode == "77" ? " Intervene, bank approval required " :
                        tcStatusCode == "78" ? " Intervene, bank approval required for partial amount " :
                        tcStatusCode == "90" ? " Cut - off in progress " :
                        tcStatusCode == "91" ? " Timeout – Status Unknown " :
                        tcStatusCode == "92" ? " Routing error " :
                        tcStatusCode == "93" ? " Violation of law " :
                        tcStatusCode == "94" ? " Duplicate transaction " :
                        tcStatusCode == "95" ? " Reconcile error " :
                        tcStatusCode == "96" ? " System malfunctionGamSwitch - " :
                        tcStatusCode == "98" ? " Exceeds cash limit " :
                        tcStatusCode == "A1" ? "  ATC not incremented " :
                        tcStatusCode == "A2" ? "  ATC limit exceeded " :
                        tcStatusCode == "A3" ? "  ATC configuration error " :
                        tcStatusCode == "A4" ? "  CVR check failed " :
                        tcStatusCode == "A5" ? "  CVR configuration error " :
                        tcStatusCode == "A6" ? "  INACTIVE PHONE NUMBER " :
                        tcStatusCode == "A7" ? "  PHONE NUMBER BARRED " :
                        tcStatusCode == "A8" ? "  VOUCHER DENOMINATION UNAVAILABLE " :
                        tcStatusCode == "A9" ? "  INVALID PHONE NUMBER " :
                        tcStatusCode == "C0" ? "  Unacceptable PIN " :
                        tcStatusCode == "C1" ? "  PIN change failed " :
                        tcStatusCode == "C2" ? "  PIN Unblock failed " :
                        tcStatusCode == "D1" ? "  MAC Error " :
                        tcStatusCode == "E1" ? " Prepay error" : "Undefined ";
            return retValue;
        }

        //private void getEntityCode1()
        //{

        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        //   string com = "Select custcode, nbookbal, ltrim(rtrim(businessname)) as Account_Name from cusreg where ccustcode = '" + TextBox1.Text.Trim() + "' and nbookbal <> 0";
        //        string com = "Select custcode, nbookbal, ltrim(rtrim(businessname)) as Account_Name from OnlineRegistration";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        selectemp.DataSource = dt;
        //        selectemp.DataBind();
        //        selectemp.DataTextField = "Account_Name";
        //        selectemp.DataValueField = "custcode";
        //        selectemp.DataBind();
        //        //getEntityCode1();

        //    }
        //}
        //private void getEntityAccounts()
        //{
        //  //  string mcode = Request.Form["mcode"];
        //    String strConnString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(strConnString);
        //    con.Open();
        //    SqlCommand command = new SqlCommand("tsp_getIndMembersAccounts_Ala", con);
        //  //  command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", selectemp.Value));
        //    command.CommandType = CommandType.StoredProcedure;
        //    SqlDataReader da = command.ExecuteReader();
        //    table.Append("<table border='1' cellpadding='5' cellspacing = '0' style='border: 2px solid #ccc; font-size: 11pt; font-family:Arial'>");
        //    table.Append("<tr><th style ='background-color: #B8DBFD; border: 2px solid #ccc'>Member Name</th><th style ='background-color: #B8DBFD; border: 2px solid #ccc'> Member Code</th><th style ='background-color: #B8DBFD; border: 2px solid #ccc'> Account Name</th><th style ='background-color: #B8DBFD; border: 2px solid #ccc'> Account Balance</th>");
        //    table.Append("</tr>");
        //    if (da.HasRows)
        //    {
        //        while (da.Read())
        //        {
        //            table.Append("<tr>");
        //            table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[0] + "</td>");
        //            table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[1] + "</td>");
        //            table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[2] + "</td>");
        //            table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[3] + "</td>");
        //            table.Append("<tr>");
        //        } 

        //    }

        //    table.Append("</table>");
        //    PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
        //    da.Close();


        //    //DataTable dt = new DataTable();
        //    //da.Fill(dt);
        //    //acctgrid.DataSource = dt;
        //    //acctgrid.DataBind();
        //}
        ////private void getEntityAccounts2()
        //{

        //    String strConnString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(strConnString);
        //    con.Open();
        //    SqlCommand command = new SqlCommand("tsp_getIndMembersAccounts_Ala", con);
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.SelectedValue));
        //    command.CommandType = CommandType.StoredProcedure;
        //    SqlDataReader da = command.ExecuteReader();
        //    table.Append("<table border='1'>");
        //    table.Append("<tr><th>Member Name</th><th> Account Number</th><th> Account Balance</th>");
        //    table.Append("</tr>");
        //    if (da.HasRows)
        //    {
        //        while (da.Read())
        //        {
        //            table.Append("<tr>");
        //            table.Append("<td>" + da[0] + "/td");
        //            table.Append("<td>" + da[1] + "/td");
        //            table.Append("<td>" + da[2] + "/td");
        //            table.Append("<tr>");
        //        }

        //    }

        //    table.Append("</table>");
        //    PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
        //    da.Close();
        //}


        //private void getEntityCode()
        //{
        //    string cmcode = Request.Form["cmcode"];
        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select ltrim(rtrim(ccustfname))+' '+ltrim(rtrim(ccustmname))+' '+ltrim(rtrim(ccustlname))  as membname,ccustcode,cstaffno from cusreg where cusreg.compid=30 and lactive=1";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        cmcode.DataSource = dt;
        //        DropDownList1.DataBind();
        //        DropDownList1.DataTextField = "membname";
        //        DropDownList1.DataValueField = "ccustcode";
        //        DropDownList1.DataBind();
        //    }
        //}
    }
}