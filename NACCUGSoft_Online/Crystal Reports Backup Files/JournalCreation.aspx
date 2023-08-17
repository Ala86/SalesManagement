<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JournalCreation.aspx.cs" Inherits="NACCUGSoft_Online.JournalCreation" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

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
            <hr />
             
         <div>


       <form id="form1" runat="server">

<%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:Button ID="btnShow" runat="server" onserverclick="btnShow_Click" Text="Create Journals" Width="200px" Height="40" BackColor="#3333FF" ForeColor="White" />
<br>
 <br>

<!-- ModalPopupExtender -->
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="pnlPopup" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>--%>

     <asp:Panel ID="pnlPopup" runat="server" align="center" Width="70%" Height="50%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove" CssClass="active right">
 
        <h2>Journal Creation</h2>
        <div id="container">
            Note: Debit and Credit balances must be equal!!! 
           <br>
            <br>

            <p>
                <label>
                    JV Number<br>
                      <asp:TextBox ID="CustomerAddress" runat="server" BorderColor="Black"  Height="25px" Width="200px"  Enabled="false" ></asp:TextBox>
                   </label>   

                    <label>
                    Transaction Date<br>
                        <asp:TextBox ID="TextBox9" type="date" runat="server" Height="25px" Width="200px"  BorderColor="Black"></asp:TextBox>
                   </label>                     
                  <label>
                     User ID<br>
                      <asp:TextBox ID="TextBox10" runat="server" BorderColor="Black" Height="25px" Width="200px" Enabled="False"></asp:TextBox>
                     </label>
                  
                 </p>
             <p>
                 <label>
                    Debit Account <br>
                     <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="200px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnTextChanged="Page_Load" OnDisposed="DropDownList1_TextChanged"></asp:DropDownList>
                 </label>
                      <label>
                    Debit Amount <br>
                          <asp:TextBox ID="TextBox1" runat="server" Width="200" Height="25">0.00</asp:TextBox>
                         </label>
              
                                       <label>
                    Credit Amount<br>
                        <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="200px" BorderColor="Black">0.00</asp:TextBox>
                     </label>  
                   </p>               
           <p>
<%--                 <label>
                    Credit Account<br>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="200px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                      </label>--%>
               <label>
                     Description <br>
                      <asp:TextBox ID="TextBox8" runat="server" BorderColor="Black" Height="25px" Width="200px"></asp:TextBox>
                     </label>      
                  </p>

             <p>
                 <asp:Button ID="Button2" runat="server" onClick="Button2_Click" Text="Add to Grid" />
            </p>

            </div>
                 </asp:Panel>

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
                   <label>
                    Debit Amount <br>
               <asp:TextBox ID="TextBox2" runat="server" Text="0.00"></asp:TextBox></label>
                                  <label>
                    Credit Amount <br>
               <asp:TextBox ID="TextBox3" runat="server" Text="0.00"></asp:TextBox></label>

           </p>
                   <p>

               <asp:Button ID="Button1" runat="server" Text="Save" Width="200px" Height="40" OnClick="Button1_Click" />
                <asp:Button ID="btnClear" runat="server" onClick="btnClear_Click" Text="Close" Width="200px" Height="40" />
             </p>
    </form>

        <footer>
        <div  class="auto-style1"> <a href="http://www.newvision.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style1"> <a href="https://www.facebook.com/naccug/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style1">Contact Us 7833358 / 9138402</div>
       <div class="auto-style1"">Copyright New Vision Technologies Ltd 2022</div>
     </footer>
</body>
</html>
