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
    public partial class RegistrationUIEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.GlUserNames == "")  //|| Global.GlUserNames == " "
            {
                Response.Redirect("NewLoginUI.aspx");
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //try 
            //{ 
            if (assetcode.Text != string.Empty && assetname.Text != string.Empty && buyingprice.Text != string.Empty && assetdate.Text != string.Empty)
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string query = "insert into assets (assetcode,supplier,category,assetname,package,buyingprice,leadtime,assetspec,depmethod,deplife,salvagevalue,assetlocation,compid, AssetDate)  values ('" + assetcode.Text + "','" + supplier.SelectedValue + "','" + category.SelectedValue + "','" + assetname.Text + "','" + package.Text + "','" + buyingprice.Text + "','" + leadtime.Text + "','" + assetspec.Text + "','" + depMethods.Text + "','" + deplife.Text + "','" + salvagevalue.Text + "','" + assetlocation.Text + "', '"+Global.GlUserCompID+"','"+ assetdate.Text + "')";
                //   string query = "insert into OnlineRegistration (businessname,residential,region,branch,bnature,district,totmale,totfemale,tin,datejoin,dateexpired,web,placeissued,idnumber,membership,dateissued,phone,country,city,email,wproduct,empnongam,empgam,cperson,cpersonaddress,cpersonphone,capacityproduct,marketserved,totemployees,baddress,skillemp,unskillemp,renewdate,idtype,bregistrationDate, compid)  values ('" + bname.Text + "','" + rstatus.SelectedValue + "','" + Region.SelectedValue + "','" + branch.SelectedValue + "','" + bnature.SelectedValue + "','" + district.SelectedValue + "','" + totmale.Text + "','" + totfemale.Text + "','" + tin.Text + "','" + datejoin.Text + "','" + dexpired.Text + "','" + web.Text + "','" + pissued.Text + "','" + idnumber.Text + "','" + membership.Text + "','" + dateissued.Text + "','" + phonenumber.Text + "','" + country.SelectedValue + "','" + city.SelectedValue + "','" + email.Text + "','" + wproduct.Text + "','" + empnongam.Text + "','" + empgam.Text + "','" + cperson.Text + "','" + cpersonaddress.Text + "','" + cpersonPhone.Text + "','" + capacityproduct.Text + "','" + marketserved.Text + "','" + totemployees.Text + "','" + baddress.Text + "','" + skillemp.Text + "','" + unskillemp.Text + "','" + renewaldate.Text + "','" + idtype.SelectedValue + "','" + rdate.Text + "', 30)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                string message = "Asset registration added successfully!!!";

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

                string message = "Please enter the records";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


            }

            assetcode.Text = string.Empty;
            assetname.Text = string.Empty;
            salvagevalue.Text = string.Empty;
           assetlocation.Text = string.Empty;
            buyingprice.Text = string.Empty;
            assetdate.Text = string.Empty;
            leadtime.Text = string.Empty;
            package.Text = string.Empty;
            assetspec.Text = string.Empty;
            //}
            //catch (Exception e)
            //{
            //    Console.WriteLine(e.Message);
            //    // MessageBox.Show(e.Message);
            //}
        }

    }
}