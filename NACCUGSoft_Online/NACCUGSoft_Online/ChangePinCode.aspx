<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePinCode.aspx.cs" Inherits="NACCUGSoft_Online.ChangePinCode" %>

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
        #Button2 {
            height: 34px;
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
           <li>
          <a href="MiniStatementUI.aspx">Product Statement View</a>
        </li>
        <li>
          <a href="#">Product Enquiry </a>
        </li>
         <li>
          <a href="#">Buy Cash Power</a>
        </li>
        <li>
          <a href="#">Buy Airtime </a>
        </li>
          <li>
          <a href="REPInvoice.aspx">Invoice Report </a>
        </li>
         <li>
          <a href="TransactionsReport.aspx">Transactions Report </a>
        </li>
           <li>
          <a href="ProductReport.aspx">Product Report</a>
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
           <asp:Panel ID="pnlPopup" runat="server" align="center" Width="60%" Height="40%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove" CssClass="active right">
 
      <h2>Change Your Password</h2>
        <div id="container">
            <p>        
                    <label>
                    Enter your Old Password<br>
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px" TextMode="Password"></asp:TextBox>
                </label>
                 </p>  
             <p>  
                 <label> 
                  New New Password<br>
                 <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="200px" TextMode="Password"></asp:TextBox>
                   </label>
                  </p> 
             <p>   
                 <label> 
                  Confirm New Password<br>
                 <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="200px" TextMode="Password"></asp:TextBox>
                   </label>
             </p>       
            <p>
     <button  id ="Button2"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">Update the New Password</button>  
                </p>      
        </div>
               </asp:Panel>
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
