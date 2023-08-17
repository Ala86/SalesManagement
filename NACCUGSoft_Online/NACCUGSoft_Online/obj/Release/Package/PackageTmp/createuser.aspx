<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createuser.aspx.cs" Inherits="NACCUGSoft_Online.createuser" %>
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
             <h2>User Creation</h2>

         <div>

    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:Button ID="btnShow" runat="server" onserverclick="btnShow_Click" Text="CREATE NEW USER" Width="200px" Height="40" BackColor="#3333FF" ForeColor="White" />
<br>
 <br>

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ObjectDataSource1" Width="1500px" Height="40px" AllowPaging="True">
                  <Columns>
                      <asp:CommandField ShowEditButton="True" />
                      <asp:BoundField DataField="usernumb" HeaderText="User ID" SortExpression="usernumb" />
                      <asp:BoundField DataField="oprcode" HeaderText="User Code" SortExpression="oprcode" />
                      <asp:BoundField DataField="username" HeaderText="User Name" SortExpression="username" />
                      <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                      <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                      <asp:BoundField DataField="mobileNo" HeaderText="Mobile No." SortExpression="mobileNo" />
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
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllUsers" TypeName="NACCUGSoft_Online.UsersUpdate" UpdateMethod="UpdateUsers">
                  <UpdateParameters>
                      <asp:Parameter Name="usernumb" Type="Int32" />
                      <asp:Parameter Name="oprcode" Type="String" />
                      <asp:Parameter Name="username" Type="String" />
                      <asp:Parameter Name="firstname" Type="String" />
                      <asp:Parameter Name="lastname" Type="String" />
                      <asp:Parameter Name="mobileNo" Type="String" />
                  </UpdateParameters>
              </asp:ObjectDataSource>
<!-- ModalPopupExtender -->
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="pnlPopup" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>
          <asp:Panel ID="pnlPopup" runat="server" align="center" Width="60%" Height="60%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove" CssClass="active right">
 
        <h2>User Creation</h2>
        <div id="container">
            <p>
               <label>
                    Select the User type<br>
                  <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="256px">
                <asp:ListItem Selected="True" Value="1">Normal Users</asp:ListItem>
                <asp:ListItem Value="0">System Admin</asp:ListItem>
            </asp:RadioButtonList>
                </label>
            </p>
            <p>
                <label>
                    User Name<br>
                      <asp:TextBox ID="mname" runat="server" Height="25px" Width="200px" BackColor="#FFFF66"></asp:TextBox>
                    <%--<input type="text" id="mname" name="mname" placeholder=" ">--%>
                </label>
                <label>
                    First Name<br>
                    <asp:TextBox ID="fname" runat="server" Height="25px" Width="200px" BackColor="#FFFF66"></asp:TextBox>
                    <%--<input type="text" id ="fname" name ="fname" BackColor="#FFFF66" placeholder=" ">--%>
                </label>
                 <label>
                    Last Name<br>
                     <asp:TextBox ID="lname" runat="server" Height="25px" Width="200px" BackColor="#FFFF66"></asp:TextBox>
                    <%--<input type="text" id="lname" name="lname" placeholder=" ">--%>
                </label>
               
            </p>
            <p>             
                 <label>
                    Phone Number<br>
                     <asp:TextBox ID="phonenumber" runat="server" Height="25px" Width="200px" BackColor="#FFFF66"></asp:TextBox>
                    <%--<input type="number" id ="phonenumber" name ="phonenumber" BackColor="#FFFF66">--%>
                </label>
                 <label>
                    Password <br>
                     <asp:TextBox ID="reasonforclose" runat="server" Height="25px" Width="200px" BackColor="#FFFF66" TextMode="Password"></asp:TextBox>
                    <%--<input type="number" id ="reasonforclose" name ="reasonforclose" BackColor="#FFFF66">--%>
                </label>
                                <label>
                    Confirm Password<br>
                  <asp:TextBox ID="enumber" runat="server" Height="25px" Width="200px" BackColor="#FFFF66" TextMode="Password"></asp:TextBox>
                <%--<input type="number" id ="enumber" name ="enumber" placeholder=" ">--%>
                </label>
            </p>
            <p>
              <label>
                    Job Title<br>
                  <asp:TextBox ID="jobtitle" runat="server" Height="25px" Width="200px"></asp:TextBox>
                    <%--<input type="text" id="jobtitle" name="jobtitle" placeholder=" ">--%>
                </label>
                <label>

                    Date<br>
                    <asp:TextBox type="date" ID="ddate" runat="server" Height="25px" Width="200px" BackColor="#FFFF66"></asp:TextBox>
                    <%--<input type="date" id="ddate" name="ddate">--%>
                </label>
                  <label>

                    Organisation<br>
                   <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="200px" BackColor="#FFFF66"></asp:DropDownList>
                </label>

            </p>
            <p>
                <br>
                <%--<asp:Button ID="Button1" runat="server" Text="Button" />--%>
                <asp:Button ID="btnSubmit" runat="server" Text="Save" onserverclick="Submit_Click" Height="25px" Width="200px" OnClick="btnSubmit_Click" />
                <%--<button  id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">SAVE</button>--%>
            </p>
        </div>
                <asp:Button ID="btnClose" runat="server" Text="Close" />
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
