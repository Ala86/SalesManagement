<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssetRegisterReport.aspx.cs" Inherits="NACCUGSoft_Online.AssetRegisterReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

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
            .auto-style2 {
                color: black;
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
                  <li class="sidebar-brand"><a href="NewDashboard.aspx"> Dashboard </a></li>
                <li>
          <a href="InvoiceForm.aspx">Invoice Form </a>
        </li>
         <li>
          <a href="payment.aspx">Posting Form </a>
        </li>
         <li>
          <a href="#">Buy Cash Power</a>
        </li>
        <li>
          <a href="#">Buy Airtime </a>
        </li>
           <li>
          <a href="MiniStatementUI.aspx">Product Statement View</a>
        </li>
          <li>
          <a href="REPInvoice.aspx">Invoice Report </a>
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
            <br />
            <br />
            <hr />

         <div>



    <form id="form1" runat="server">
        <asp:Panel ID="pnlPopup" runat="server" align="center" Width="60%" Height="40%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove">
  
        <h2 class="auto-style2"><strong>Asset Registration Report</strong></h2>
        <div id="container">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            <br>
             <%-- <P>
                    <label>
                    Select Product<br>
                   <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Height="25"></asp:DropDownList>
                </label>
           </P>--%>
            <p>
                 <label>
                    Date From<br>
                     <asp:TextBox type="date" ID="datefrom" runat="server" Width="200" Height="25"></asp:TextBox>
                    <%--<input  name="datefrom" id="datefrom" type="date"/>--%>
                </label>
               <label>
                    Date To<br>
                   <asp:TextBox type="date" ID="dateto" runat="server" Width="200" Height="25"></asp:TextBox>
                    <%--<input  name="dateto" id="dateto" type="date"/>--%>
                </label>
                
                </p>
            <p>
                <br>
                <asp:Button ID="Button1" runat="server" Text="Print" Height="30px" OnClick="Button1_Click" Width="200px" />
                       <%--<button id ="Button2"  runat="server" name ="Button2" onserverclick="Button2_Click" style=" border-radius: 4px; margin-top: 30px; ">Print Transaction</button>--%>
           </p>
        </div>
                     </asp:Panel>
    </form>     
     <footer>
        <div  class="auto-style1"> <a href="http://www.naccug.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style1"> <a href="https://www.facebook.com/naccug/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style1">Contact Us 9567888 / 2790316</div>
       <div class="auto-style1"">Copyright New Vision technologies 2020</div>
     </footer>
</body>
</html>


