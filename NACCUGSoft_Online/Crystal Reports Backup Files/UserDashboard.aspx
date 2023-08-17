<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="NACCUGSoft_Online.UserDashboard" %>

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
<%--         <li>
          <a href="CUOnlineRegistration.aspx">Stock Update</a>
        </li> --%>      
<%--        <li>
          <a href="createuser.aspx">User Creation</a>
        </li>--%>
         <li>
          <a href="RegistrationUIEx.aspx">Supplier Management</a>
        </li>
         <li>
          <a href="RegistrationUIInd.aspx">Customer Management</a>
        </li>
<%--         <li>
          <a href="RegistrationUIEdit.aspx">Asset Management</a>
        </li>--%>
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
           <li class="sidebar-brand"><a href="NewDashboard.aspx"> Dashboard </a>
         </li>
        <li>
          <a href="InvoiceForm.aspx">Invoice Form </a>
        </li>
         <li>
          <a href="payment.aspx">Posting Form </a>
        </li>
<%--        <li>
          <a href="MiniStatementUI.aspx">Product Statement View</a>
        </li>--%>
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
<%--         <li>
          <a href="AssetRegisterReport.aspx">Asset Register Report</a>   
        </li> 
        <li>
          <a href="SupplierReport.aspx">Supplier Report</a>   
        </li>--%>
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
    <form id="form1" runat="server">

        <main role="main" class="container">
        <div id="jumbotron">
             <p> <br>
            <asp:Label ID="Label1" runat="server" Text=" " Font-Bold="True" Font-Italic="True" Font-Size="14"></asp:Label></p>
             <asp:Label ID="Label2" runat="server" Text="" Font-Bold="True" Font-Italic="True" Font-Size="16"></asp:Label>
            <h1 class="header" style="margin-left: 0px">&nbsp;&nbsp; </h1>
            <h4>Statistics</h4>
             <label>
                    Total Products<br>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" Enabled="False" stlye =" width: 1000px" Height="60px" Font-Bold="True" Font-Size="Larger" Width="200px">5</asp:TextBox>
                    </label>
                    <label>
                     Total Sales<br>
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" >1000,00</asp:TextBox>
                    </label>
                     <label>
                     Total Revenue<br>
                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" >10,000</asp:TextBox>
                    </label>
                     <label>
                     Expected Revenue<br>
                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" >50,000</asp:TextBox>
                    </label>
                    <label>
                    Todays Revenue<br>
                    <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" >60,000.00</asp:TextBox>
                    </label>
              <%--<a class="btn btn-lg btn-primary" href="REPInvoice.aspx" role="button" media="tv">Invoice / Receipt Report »</a>--%>
             <%-- <a class="btn btn-lg btn-primary" href="TransactionsReport.aspx" role="button">Transaction Enquiry »</a>
              <a class="btn btn-lg btn-primary" href="ProductReport.aspx" role="button">Product Report »</a> 
             <a class="btn btn-lg btn-primary" href="ChangePinCode.aspx" role="button">Change your Password»</a> --%>
              </div>
              <img alt="" class="auto-style1" longdesc="http://localhost:26530/gtucculogoc.jpe" src="Sales-and-Inventory-System-.jpg" />
             
         <%-- <h4>Sub Menu for Report</h4>
              <a class="btn btn-lg btn-primary" href="REPInvoice.aspx" role="button" media="tv">Invoice / Receipt Report »</a>
              <a class="btn btn-lg btn-primary" href="TransactionsReport.aspx" role="button">Transaction Enquiry »</a>
              <a class="btn btn-lg btn-primary" href="ProductReport.aspx" role="button">Product Report »</a> 
             <a class="btn btn-lg btn-primary" href="ChangePinCode.aspx" role="button">Change your Password»</a> 
      --%>        </div>
    </main>
    </form>
</div>

            <footer>
            
            <p> <br>
                &copy; Developed by New Vision Technologies</p>
        </footer>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
</body>
</html>

