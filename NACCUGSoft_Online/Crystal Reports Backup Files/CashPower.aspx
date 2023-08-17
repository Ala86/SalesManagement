<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CashPower.aspx.cs" Inherits="NACCUGSoft_Online.CashPower" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
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

                <script type="text/javascript">
                    function Button2_Click() {
                        document.getElementById('<%= Button2.ClientID %>').click();
                    }
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
<%--    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:Button ID="btnShow" runat="server" onserverclick="btnShow_Click" Text="Buy Air Time" Width="200px" Height="40" BackColor="#3333FF" ForeColor="White" />
<br>
 <br>
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>--%>

       <%-- <asp:Panel ID="Panel1" runat="server" align="center" Width="40%" Height="60%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove" CssClass="active right">
          <br>
            <h2>Airtime</h2>  
            
            <p>
              <label>
                    Amount Sent<br>
                <asp:TextBox ID="GSMAmount" type="number" runat="server" Height="30px" Width="250px" BackColor="#FFFF66"></asp:TextBox>

                   </label>
                </p>
            <p>
                <label>
                GSM Type <br>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="250px" BackColor="#FFFF66">
                        <asp:ListItem Value="africell">Africell</asp:ListItem>
                        <asp:ListItem Value="qcell">Qcell</asp:ListItem>
                        <asp:ListItem Value="gamcel">GAMCEL</asp:ListItem>
                        <asp:ListItem Value="comium">Comium</asp:ListItem>
                </asp:DropDownList>
            </label>
                </p>
               <p>
                <label>
                    Phone Number <br>
                <asp:TextBox ID="GSMPhoneNo" type="number" runat="server" Height="30px" Width="250px" BackColor="#FFFF66"></asp:TextBox> </label>
            </p>
           <p>
                 <label>
                    Return Value<br>
                  <asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="250px" BackColor="#FFFF66" TextMode="MultiLine" ></asp:TextBox>
                </label>
            </p>--%>
            
<%--         <asp:Button ID="btnClose" runat="server" Text="Close" Height="30px" Width="250px" BackColor="#FFFF66" /></p>
       <br>
            </asp:Panel>--%>



          <%--   <h2>Cash Power</h2>--%>


          <asp:Panel ID="pnlPopup" runat="server" align="center" Width="60%" Height="60%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove" CssClass="active right">

        <h2>Cash Power</h2>
        <div id="container">
            <p>
                <label>
                    Amount Sent<br>
                      <asp:TextBox ID="AmountPaid" type="number" runat="server" Height="25px" Width="200px" BackColor="#FFFF66" OnTextChanged="Button2_Click" ></asp:TextBox>
                </label>
                 <label>
                    Meter Number<br>
                    <asp:TextBox ID="meterNo" runat="server" Height="25px" Width="200px" BackColor="#FFFF66"></asp:TextBox>
                </label>
                <label>
                    Phone Number<br>
                     <asp:TextBox ID="phonenumber" runat="server" Height="25px" Width="200px" BackColor="#FFFF66"></asp:TextBox>
                </label>
               
              
            </p>
            <p>             
                <label>
                 Amount Paid<br>
                      <asp:TextBox ID="AmountSent" type="number" runat="server" Height="25px" Width="200px" BackColor="#FFFF66"></asp:TextBox>
                </label>
                 <label>
                    Charges <br>
                     <asp:TextBox ID="charges" type="number" runat="server" Height="25px" Width="200px" BackColor="#FFFF66"></asp:TextBox>
                </label>                
            </p>
            <p>
                 <label>
                    Return Value<br>
                  <asp:TextBox ID="returnValue" runat="server" Height="75px" Width="594px" BackColor="#FFFF66" TextMode="MultiLine" ></asp:TextBox>
                </label>
            </p>
              <asp:Button ID="Button2" onclick="Button2_Click" runat="server" Text="LOAD Fee" />
             <%--<button id ="btnSubmitt"  runat="server" name ="btnSubmitt" onserverclick="Submitt_Click" class="auto-style2" >LOAD DETAILS</button>--%>
            <p>
                <br>
                <asp:Button ID="btnSave" runat="server" Text="Save" onClick="btnSave_Click" Height="25px" Width="200px" />
            </p>
        </div>
              </asp:Panel>
    </form>
<br>
<br>
<footer>
        <div  class="auto-style1"> <a href="http://www.newvision.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style1"> <a href="https://www.facebook.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style1">Contact Us 9567888 / 2790316</div>
       <div class="auto-style1"">Copyright New Vision Technologies</div>
     </footer>
</body>
</html>
