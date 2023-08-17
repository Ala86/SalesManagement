<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MiniStatementUI.aspx.cs" Inherits="NACCUGSoft_Online.MiniStatementUI" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

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
            width: 160px;
            margin-right: 2px;
        }
        .auto-style3 {
            font-size: x-large;
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
<%--                <li><a href="InvoiceForm.aspx">Home</a> </li>
                <li><a href="payment.aspx">About</a> </li>
                <li><a href="MiniStatementUI.aspx">Contact</a> </li>--%>
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
          <a href="TransactionEnquiry.aspx">Product Enquiry </a>
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
           <asp:Panel ID="pnlPopup" runat="server" align="center" Width="80%" Height="90%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove" CssClass="active right">

   <h2>Product Statement Enquiry</h2>
                <div id="container">
            <p>
                 <label>
                    Select Member <br>
           <select id ="selectemp" runat ="server" class="auto-style2"></select>
                     </label>
            </p>
            <p>
                   <button id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click" style=" border-radius: 4px; margin-top: 30px; ">Show Transactions</button>
            </p>
            <P>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </P>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            <br>
            <h3> Preview the Statement Based on Date <br></h3>
            <P>
               <label>
                    Date From<br>
                    <input  name="datefrom" id="datefrom" type="date"/>
                </label>

               <label>
                    Date To<br>
                    <input  name="dateto" id="dateto" type="date"/>
                </label>
           </p>
             <p>
                   <button id ="Button2"  runat="server" name ="Button2" onserverclick="Button3_Click" style=" border-radius: 4px; margin-top: 30px; ">Preview the Statement</button>
            </p> 
           <%-- <div class="table-reponsive box">
                <table id="example" class="table table-striped table-bordered">
                    <thead>
            <tr>
                <th>Number</th>
                <th>Account Number</th>
                <th>Transaction Narrative</th>
                <th>Transaction Amount</th>
                <th>Transaction_Date</th>

            </tr>
               </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>13000000102</td>
                <td>Teller Interest Charged</td>
                <td>-1419.36</td>
                <td>6/30/2020 2:33 PM</td>

            </tr>
            <tr>
                <td>2</td>
                <td>13000000102</td>
                <td>Teller Interest Paid</td>
                <td>1419.36</td>
                <td>6/30/2020 2:33 PM</td>
            </tr>
            <tr>
                <td>3</td>
                <td>13000000102</td>
                <td>Loan Repayment</td>
                <td>2080.64</td>
                <td>6/30/2020 2:33 PM</td>

            </tr>
            <tr>
                <td>4</td>
                <td>13000000102</td>
                <td>Teller Interest Charged</td>
                <td>-619.16</td>
                <td>5/18/2020 9:41AM</td>

            </tr>
            <tr>
                <td>5</td>
                <td>13000000102</td>
                <td>Teller Interest Paid</td>
                <td>619.16</td>
                <td>5/18/2020 9:41 AM</td>

            </tr>

        </tbody>
    </table>
</div>--%>
            

        </div>
               </asp:Panel>
    </form>     
        <footer>
        <div  class="auto-style1"> <a href="http://www.newvison.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style1"> <a href="https://www.facebook.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style1">Contact Us 9567888 / 2790316</div>
       <div class="auto-style1"">Copyright New vision Technologies Ltd.  2020</div>
     </footer>
</body>
</html>
