<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InvoiceForm.aspx.cs" Inherits="NACCUGSoft_Online.InvoiceForm" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>--%>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--<!DOCTYPE html>--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="https://code.jquery.com/jquery.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css?parameter=1"
        rel="stylesheet">
    <%--Add the css reference here--%>
    <link href="../css/simple-sidebar.css" rel="stylesheet" type="text/css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script>
        $(document).ready(function () {
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("active");
            });
        });
    </script>


    <style>
        #wrapper.active #sidebar-wrapper
        {
            left: 50px;
        }
    </style>

      <style type="text/css">
        .auto-style1 {
            margin-bottom: 6px;
            text-align: center;
        }
        .auto-style2 {
            width: 160px;
            margin-right: 2px;
        }
        
       .modalBackground
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .modalPopup
        {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 300px;
            height: 140px;
        }
    </style>
     <style>
        #wrapper.active #sidebar-wrapper
        {
            left: 50px;
        }
 </style>
<style type="text/css">
     .auto-style1 {
            margin-bottom: 6px;
            text-align: center;
        }
        .auto-style2 {
            width: 160px;
            margin-right: 2px;
        }
        
/*    .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=90);
        opacity: 0.8;
    }
    .modalPopup
    {
        background-color: #FFFFFF;
        border-width: 3px;
        border-style: solid;
        border-color: black;
        padding-top: 10px;
        padding-left: 10px;
        width: 300px;
        height: 140px;
    }*/
</style>
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar">
                    </span>
                </button>
                <a class="navbar-brand" href="/">Sales & Inventory Management System</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
         <li>
          <a href="RegistrationUI.aspx">Product Registration</a>
        </li>
         <li>
          <a href="CUOnlineRegistration.aspx">Stock Update</a>
        </li>
        
        <li>
          <a href="createuser.aspx">User Creation</a>
        </li>
         <li>
          <a href="RegistrationUIEx.aspx">Supplier Management</a>
        </li>
         <li>
          <a href="RegistrationUIInd.aspx">Customer Management</a>
        </li>
         <li>
          <a href="RegistrationUIEdit.aspx">Asset Management</a>
        </li>
         <li>
          <a href="NewLoginUI.aspx">Sign Out</a>
        </li>
                </ul>
            </div>
        </div>
    </div>



    <div class="container body-content" style="margin-top: 50px">
    </div>
    <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul id="sidebar_menu" class="sidebar-nav" style="text-align: right; padding-right: 10px;
                padding-top: 10px">
                <li class="sidebar-brand"><a id="menu-toggle" href="#"><span id="main_icon" class="navbar-icon fa fa-bars icon">
                </span></a></li>
            </ul>
            <ul class="sidebar-nav">
                  <li class="sidebar-brand"><a href="NewDashboard.aspx"> Dashboard </a></li>
         <li>        
            <a href="InvoiceListing.aspx">Invoice Form </a>
        </li>
         <li>
          <a href="ReceiptListing.aspx">Posting Form </a>
        </li>
           <li>
          <a href="MiniStatementUI.aspx">Product Statement View</a>
        </li>
         <li>
          <a href="CashPower.aspx">Buy Cash Power</a>
        </li>
        <li>
          <a href="airtimeUI.aspx">Buy Airtime </a>
        </li>
          <li>
          <a href="REPInvoice.aspx">Invoice Report</a>
        </li>
         <li>
          <a href="TransactionsReport.aspx">Transactions Report </a>
        </li>
           <li>
          <a href="ProductReport.aspx">Product Report</a>
        </li>
        <li>
          <a href="CustomerReport.aspx">Customer Report</a>   
        </li> 
         <li>
          <a href="AssetRegisterReport.aspx">Asset Register Report</a>   
        </li> 
        <li>
          <a href="SupplierReport.aspx">Supplier Report</a>   
        </li>
         <li>
          <a href="ChangePinCode.aspx">Change Password</a>  
        </li> 
         <li>
          <a href="NewLoginUI.aspx">Sign Out</a>
        </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <br />
            <br />
            <hr />

         <div>
   <form id="form1" runat="server" align="center" >

<%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:Button ID="btnShow" runat="server" onserverclick="btnShow_Click" Text="Prepare Invoice" />

<!-- ModalPopupExtender -->
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>--%>

  <asp:Panel ID="pnlPopup" runat="server" align="center" Width="60%" Height="80%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove" CssClass="active right">
        <h2>Invoice Form</h2>
             Note: Enter the Quantity number and click enter button or click Loan details button to display the product information
            <br>
            <br>

            <p>
                 <label>
                    Select Product <br>
                     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="GetProducts" DataTextField="prod_name" DataValueField="product_id" Width="200px" OnTextChanged="DropDownList1_TextChanged" Height="25"></asp:DropDownList>
                     <asp:SqlDataSource ID="GetProducts" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [prod_code], [prod_name], [product_id] FROM [products] ORDER BY [prod_name]"></asp:SqlDataSource>
                  </label>

                  <br>
                        <button id ="btnSubmitt"  runat="server" name ="btnSubmitt" onserverclick="Submitt_Click" class="auto-style2">LOAD DETAILS</button>

                <label>
                    Quantity<br>
                        <asp:TextBox ID="qty" runat="server" BorderColor="Black" OnTextChanged="Submitt_Click" ></asp:TextBox>
                    </label>
                <label>
                    Customer<br>
                       <asp:DropDownList ID="DropDownList2" runat="server"  Width="208px" DataSourceID="SqlDataSource1" DataTextField="fullname" DataValueField="custcode" ></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalesManagementConnectionString %>" SelectCommand="SELECT custcode, LTRIM(RTRIM(fname)) + ' ' + LTRIM(RTRIM(mname)) + ' ' + LTRIM(RTRIM(lname)) AS fullname FROM CustomerRegistration ORDER BY fullname"></asp:SqlDataSource>
                 <asp:SqlDataSource ID="CustomerData" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [customerID], [CustomerName] FROM [Customer] ORDER BY [CustomerName]"></asp:SqlDataSource>
               </p>
                    <p>
                     </label>
                          <label>
                    Invoice Number<br>
                    <asp:TextBox ID="InvoiceNumber" runat="server" BorderColor="Black" ></asp:TextBox>
                </label> 
                <label>
                    Invoice Date<br>
                    <asp:TextBox ID="trandate" type="date" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="25"></asp:TextBox>
                </label>
                    

                <label>
                    Selling Price<br>
                         <asp:TextBox ID="InvoiceAmount" runat="server" BorderColor="Black" BackColor="#FFFF66" ></asp:TextBox>
                     </label>
                       </p>
                       <p>  
                    <label>
                    Total Amount<br>
                    <asp:TextBox ID="TotalBalance" runat="server" BorderColor="Black" ></asp:TextBox>
                    </label>   
                                 <label>
                    Customer Address<br>
                      <asp:TextBox ID="CustomerAddress" runat="server" BorderColor="Black" ></asp:TextBox>
                   </label>       
                     <label>
                    Discount Price<br>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" ></asp:TextBox>
                    </label>              
            </p>
            <p>
                 <label>
                    Cost Price<br>
                         <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BackColor="#FFFF66" ></asp:TextBox>
                     </label>
                  <label>
                  Profit Generated<br>
                      <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" ></asp:TextBox>
                   </label>    
               
                 <label>
                    Transaction Narrative<br>
                    <asp:TextBox ID="trandesc" runat="server" Text="Invoice" BorderColor="Black" ></asp:TextBox>
                   </label>     
            </p>

            <p>
                <button id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">Add to Grid</button>
            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" Width="789px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>       
            </p>
           <p>
               <button id ="Save"  runat="server" name ="Save" onserverclick="Save_Click">Save</button>
               <asp:Button ID="Button4" runat="server" Text="Clear Grid" OnClick="Button4_Click" />
             </p>
             

        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
       </asp:Panel>
          
    </form>

      

        <footer>
        <div  class="auto-style1"> <a href="http://www.naccug.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style1"> <a href="https://www.facebook.com/naccug/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style1">Contact Us 7833358 / 9138402</div>
       <div class="auto-style1"">Copyright New Vision Technologies Ltd 2020</div>
     </footer>

   
</body>
</html>
