<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="InvoiceListing.aspx.cs" Inherits="NACCUGSoft_Online.InvoiceListing" %>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<!DOCTYPE html>

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
<%--                <li><a href="/">Home</a></li>
                    <li><a href="/Home/About">About</a></li>
                    <li><a href="/Home/Contact">Contact</a></li>--%>
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

            </ul>
        </div>
        <!-- /#sidebar-wrapper -->
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <br />
            <br />
            <hr />

         <div>

    <form id="form1" runat="server">
          <h2>Invoice Form</h2>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Prepare Invoice" Width="200px" Height="40" BackColor="Blue" ForeColor="White" PostBackUrl="~/InvoiceForm.aspx"/>
        </p>
        <br>
        <p>
            <asp:Button ID="Button3" OnClick="Button3_Click" runat="server" Text="Export to Excel" />
        </p>
        <br>
        <p> 
            <asp:TextBox ID="datefrom" type="date" runat="server" Width="200px" Height="40">01-01-1900</asp:TextBox>
              <asp:TextBox ID="dateto" type="date" runat="server" Width="200px" Height="40">01-01-2079</asp:TextBox>
               <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Width="200px" Height="40" BackColor="Blue" ForeColor="White" Text="Load Transactions" />
            <br>
            <br>
        </p>
          <p>
<%--              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ObjectDataSource1" Height="40px" AllowPaging="True">
                  <Columns>
                      <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" />
                      <asp:BoundField DataField="invoice_no" HeaderText="invoice_no" SortExpression="invoice_no" />
                      <asp:BoundField DataField="prod_name" HeaderText="prod_name" SortExpression="prod_name" />
                      <asp:BoundField DataField="inv_desc" HeaderText="inv_desc" SortExpression="inv_desc" />
                      <asp:BoundField DataField="invoice_date" HeaderText="invoice_date" SortExpression="invoice_date" />
                      <asp:BoundField DataField="totalamt" HeaderText="totalamt" SortExpression="totalamt" />
                      <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
                      <asp:BoundField DataField="cust_address" HeaderText="cust_address" SortExpression="cust_address" />
                      <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                      <asp:BoundField DataField="InvoiceAmount" HeaderText="InvoiceAmount" SortExpression="InvoiceAmount" />
                  </Columns>
                  <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                  <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                  <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                  <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#FFF1D4" />
                  <SortedAscendingHeaderStyle BackColor="#B95C30" />
                  <SortedDescendingCellStyle BackColor="#F1E5CE" />
                  <SortedDescendingHeaderStyle BackColor="#93451F" />
              </asp:GridView>
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllInvoiceTran" TypeName="NACCUGSoft_Online.InvoiceTransaction">
              </asp:ObjectDataSource>--%>
         
              <asp:GridView ID="GridView3" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1500px" Height="40px" AllowPaging="True"  OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
                  <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                  <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                  <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                  <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#FFF1D4" />
                  <SortedAscendingHeaderStyle BackColor="#B95C30" />
                  <SortedDescendingCellStyle BackColor="#F1E5CE" />
                  <SortedDescendingHeaderStyle BackColor="#93451F" />
              </asp:GridView>
          
          </p>
   
    </form>

     <footer>
        <div class="auto-style1"> <a href="http://www.newvision.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div class="auto-style1"> <a href="https://www.facebook.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div class="auto-style1">Contact Us 9567888 / 2790316</div>
        <div class="auto-style1">Copyright New Vision Technologies Ltd 2020</div>
         </footer>
</body>
</html>

