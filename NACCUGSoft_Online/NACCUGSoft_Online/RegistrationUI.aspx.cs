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
    public partial class RegistrationUI : System.Web.UI.Page
    {
        int ncompid = Global.GlUserCompID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.GlUserNames == "")  //|| Global.GlUserNames == " "
            {
                Response.Redirect("NewLoginUI.aspx");
            }
          //  mp1.Show();
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            //try
            //{
                if (productid.Text != string.Empty && productname.Text != string.Empty && maxstocklevel.Text != string.Empty && minstocklevel.Text != string.Empty && qtyinstock.Text != string.Empty && totalvalue.Text != string.Empty && datejoin.Text != string.Empty)
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string query = "insert into products (prod_code,supp_id ,cat_id ,prod_name,eng_name,packaging,max_level,min_level,rorder_lev,rorder_qty,quantity,totvalue,asofdate,stoc_acc,sell_price,buy_price,san_code,pan_code,debt_acc ,cred_acc ,stoc_date ,cog_acc,compid)  values ('" + productid.Text + "','" + supplier.SelectedValue + "','" + category.SelectedValue + "','" + productname.Text + "','" + itemtype.Text + "','" + package.Text + "','" + maxstocklevel.Text + "','" + minstocklevel.Text + "','" + reorderlevel.Text + "','" + reorderqty.Text + "','" + qtyinstock.Text + "','" + totalvalue.Text + "','" + asofdate.Text + "','" + stockcontrol.SelectedValue + "','" + salesprice.Text + "','" + buyprice.Text + "','" + salesanalysis.Text + "','" + panalysis.Text + "','" + debitors.SelectedValue + "','" + creditors.SelectedValue + "','" + datejoin.Text + "','" + DropDownList5.SelectedValue + "', '"+Global.GlUserCompID+"')";
             //   string query = "insert into OnlineRegistration (businessname,residential,region,branch,bnature,district,totmale,totfemale,tin,datejoin,dateexpired,web,placeissued,idnumber,membership,dateissued,phone,country,city,email,wproduct,empnongam,empgam,cperson,cpersonaddress,cpersonphone,capacityproduct,marketserved,totemployees,baddress,skillemp,unskillemp,renewdate,idtype,bregistrationDate, compid)  values ('" + bname.Text + "','" + rstatus.SelectedValue + "','" + Region.SelectedValue + "','" + branch.SelectedValue + "','" + bnature.SelectedValue + "','" + district.SelectedValue + "','" + totmale.Text + "','" + totfemale.Text + "','" + tin.Text + "','" + datejoin.Text + "','" + dexpired.Text + "','" + web.Text + "','" + pissued.Text + "','" + idnumber.Text + "','" + membership.Text + "','" + dateissued.Text + "','" + phonenumber.Text + "','" + country.SelectedValue + "','" + city.SelectedValue + "','" + email.Text + "','" + wproduct.Text + "','" + empnongam.Text + "','" + empgam.Text + "','" + cperson.Text + "','" + cpersonaddress.Text + "','" + cpersonPhone.Text + "','" + capacityproduct.Text + "','" + marketserved.Text + "','" + totemployees.Text + "','" + baddress.Text + "','" + skillemp.Text + "','" + unskillemp.Text + "','" + renewaldate.Text + "','" + idtype.SelectedValue + "','" + rdate.Text + "', 30)";
               SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                string message = "Product registration added successfully!!!";

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
            //}
            //catch (Exception e)
            //{
            //    Console.WriteLine(e.Message);
            //    // MessageBox.Show(e.Message);
            //}
            productid.Text = string.Empty;
            itemtype.Text = string.Empty;
            package.Text = string.Empty;
            maxstocklevel.Text = string.Empty;
            minstocklevel.Text = string.Empty;
            reorderlevel.Text = string.Empty;
            reorderqty.Text = string.Empty;
            qtyinstock.Text = string.Empty;
            totalvalue.Text = string.Empty;
            asofdate.Text = string.Empty;
            salesprice.Text = string.Empty;
            buyprice.Text = string.Empty;
            salesanalysis.Text = string.Empty;
            panalysis.Text = string.Empty;
            datejoin.Text = string.Empty;
            productname.Text = string.Empty;
            datejoin.Text = string.Empty;
         //}
         //   catch (Exception e)
         //   {
         //       Console.WriteLine(e.Message);
         //       // MessageBox.Show(e.Message);
         //   }
        }
    }
}