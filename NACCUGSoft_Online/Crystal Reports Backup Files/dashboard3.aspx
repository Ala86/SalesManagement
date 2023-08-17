<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard3.aspx.cs" Inherits="NACCUGSoft_Online.dashboard3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css?parameter=1"
        rel="stylesheet">
    <%--Add the css reference here--%>
    <%-- <link rel="Stylesheet" href="Content/Site.css" type="text/css" />--%>
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
</head>

<body>
       <!-- Your HTML content goes here-->

         <form id="form1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="up1" runat="server">
    <ContentTemplate>

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar">
                    </span>
                </button>
                <a class="navbar-brand" href="/">Welcome to Sales & Inventory Management System</a>
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
        </ul>
        </div>
        </div>
    </div>


    <div class="container body-content" style="margin-top: 50px">
    </div>
    <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper" aria-haspopup="true" aria-expanded="false">
            <ul id="sidebar_menu" class="sidebar-nav" style="text-align: right; padding-right: 10px;
                padding-top: 10px">
                <li class="sidebar-brand">
                    <a id="menu-toggle" href="#">
                        <span id="main_icon" class="navbar-icon fa fa-bars icon">
                </span>

                    </a></li>
            </ul>


        <ul class="sidebar-nav">
           <li class="sidebar-brand"><a href="NewDashboard.aspx"> Dashboard </a>
         </li>
        <li>        
           <%--   <a>  <asp:Button ID="Button1" runat="server" Text="Invoice Form" PostBackUrl="~/InvoiceForm.aspx" /></a>--%> 

          <a href="InvoiceForm.aspx">Invoice Form </a>
        </li>
         <li>
          <a href="payment.aspx">Posting Form </a>
        </li>
           <li>
          <a href="MiniStatementUI.aspx">Product Statement View</a>
        </li>
         <li>
          <a href="#">Buy Cash Power</a>
        </li>
        <li>
          <a href="#">Buy Airtime </a>
        </li>
          <li>
          <a href="REPInvoice.aspx">Invoice Report</a>
        </li>
         <li>
          <a href="TransactionsReport.aspx">Transactions Report</a>
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
    <div>

                <!-- Your HTML content goes here-->
    </ContentTemplate>

</asp:UpdatePanel>
 
        <main role="main" class="container">
        <div id="jumbotron">
            <p> <br>
            <asp:Label ID="Label1" runat="server" Text=" " Font-Bold="True" Font-Italic="True" Font-Size="14"></asp:Label></p>
             <asp:Label ID="Label2" runat="server" Text="" Font-Bold="True" Font-Italic="True" Font-Size="16"></asp:Label>
           <%-- <h1 class="header" style="margin-left: 0px">&nbsp;&nbsp; </h1>--%>
            <h4>Statistics</h4>
             <label>
                    Total Products<br>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" Enabled="False" stlye =" width: 1000px" Height="60px" Font-Bold="True" Font-Size="Larger" Width="200px" BackColor="#CCFFFF">5</asp:TextBox>
                    </label>
                    <label>
                     Total Sales<br>
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" BackColor="#CCFFFF">1000,00</asp:TextBox>
                    </label>
                     <label>
                     Total Revenue<br>
                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" BackColor="#CCFFFF">10,000</asp:TextBox>
                    </label>
                     <label>
                     Expected Revenue<br>
                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" BackColor="#CCFFFF">50,000</asp:TextBox>
                    </label>
                    <label>
                    Todays Revenue<br>
                    <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" BackColor="#CCFFFF">60,000.00</asp:TextBox>
                    </label>
              <%--<a class="btn btn-lg btn-primary" href="REPInvoice.aspx" role="button" media="tv">Invoice / Receipt Report »</a>--%>
             <%-- <a class="btn btn-lg btn-primary" href="TransactionsReport.aspx" role="button">Transaction Enquiry »</a>
              <a class="btn btn-lg btn-primary" href="ProductReport.aspx" role="button">Product Report »</a> 
             <a class="btn btn-lg btn-primary" href="ChangePinCode.aspx" role="button">Change your Password»</a> --%>
              </div>
              <img alt="" class="auto-style1" longdesc="http://localhost:26530/gtucculogoc.jpe" />
             
              </div>
          
            <div>



               <div style= "overflow:scroll" >
                <div id =" GHead"> </div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ObjectDataSource1" Width="1071px" Height="200px" >
                  <Columns>
                      <%--<asp:CommandField ShowEditButton="false" />--%>
                      <asp:BoundField DataField="product_id" HeaderText="Product ID" SortExpression="product_id" ReadOnly ="true" />
                      <asp:BoundField DataField="prod_name" HeaderText="Product Name" SortExpression="prod_name" />
                      <asp:BoundField DataField="sell_price" HeaderText="Sell Price" SortExpression="sell_price" />
                      <asp:BoundField DataField="buy_price" HeaderText="Buy Price" SortExpression="buy_price" />
                      <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                      <asp:BoundField DataField="rorder_lev" HeaderText="Reorder lev" SortExpression="rorder_lev" />
                      <asp:BoundField DataField="discontinu" HeaderText="Discount" SortExpression="discontinu" />
                      <asp:BoundField DataField="rorder_qty" HeaderText="Reorder Qty" SortExpression="rorder_qty" />
                      <asp:BoundField DataField="max_level" HeaderText="Max Level" SortExpression="max_level" />
                      <asp:BoundField DataField="totvalue" HeaderText="Total Value" SortExpression="totvalue" />
                      <asp:BoundField DataField="Serv_fee" HeaderText="Serv_fee" SortExpression="Serv_fee" />
                      <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
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
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllProducts" TypeName="NACCUGSoft_Online.StockUpdate" ></asp:ObjectDataSource>
           </div>
            <div>
              <h4>Sub Menu for Journal Entries</h4>
              <a class="btn btn-lg btn-primary" href="JournalCreation.aspx" role="button">Create Journal »</a>
              <a class="btn btn-lg btn-primary" href="ConfirmVisaRequest.aspx" role="button">Journal Verification »</a>
              <a class="btn btn-lg btn-primary" href="ConfirmSavingsAdjustment.aspx" role="button">Journal Report »</a> 
             <a class="btn btn-lg btn-primary" href="ChangePinCode.aspx" role="button">Change your Password »</a> 
              </div>

    </main>
    </form>
    </ContentTemplate>
</asp:UpdatePanel>


  
  </div>
</div>


            <footer>
            
            <p>&copy; Developed by New Vision Technologies</p>
        </footer>

        <!-- /#page-content-wrapper -->

</body>
</html>

 <%--<a class="btn btn-lg btn-primary" href="REPInvoice.aspx" role="button" media="tv">Invoice / Receipt Report »</a>
              <a class="btn btn-lg btn-primary" href="TransactionsReport.aspx" role="button">Transaction Enquiry »</a>
              <a class="btn btn-lg btn-primary" href="ProductReport.aspx" role="button">Product Report »</a> 
             <a class="btn btn-lg btn-primary" href="ChangePinCode.aspx" role="button">Change your Password»</a> --%>

