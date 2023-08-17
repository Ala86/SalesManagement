<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JournalPosting.aspx.cs" Inherits="NACCUGSoft_Online.JournalPosting" %>
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
          <h2>Journal Verification</h2>
                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:Button ID="btnShow" runat="server" onserverclick="btnShow_Click" Text="Click To Edit Journal" Width="200px" Height="40" BackColor="#3333FF" ForeColor="White" />

        <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="pnlPopup" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>
        <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Click Here to Edit Journal" Width="200px" Height="40" BackColor="#3333FF" ForeColor="White" PostBackUrl="~/JournalExit.aspx" />--%>
<br>
 <br>
          <p>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ObjectDataSource1" Height="57px" Width="1336px" OnLoad="Page_Load">
                  <Columns>
                      <asp:BoundField DataField="jtranid" HeaderText="jtranid" SortExpression="jtranid" />
                      <asp:BoundField DataField="cvoucherno" HeaderText="cvoucherno" SortExpression="cvoucherno" />
                      <asp:BoundField DataField="dtrandate" HeaderText="dtrandate" SortExpression="dtrandate" />
                      <asp:BoundField DataField="Debit" HeaderText="Debit" SortExpression="Debit" />
                        <asp:BoundField DataField="Credit" HeaderText="Credit" SortExpression="Credit" />
                      <asp:BoundField DataField="ctrandesc" HeaderText="ctrandesc" SortExpression="ctrandesc" />
                      <asp:BoundField DataField="cacctnumb" HeaderText="cacctnumb" SortExpression="cacctnumb" />
                      <asp:BoundField DataField="ntranamnt" HeaderText="ntranamnt" SortExpression="ntranamnt" />
                      <asp:BoundField DataField="cuserid" HeaderText="cuserid" SortExpression="cuserid" />

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
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAlljournals" TypeName="NACCUGSoft_Online.JournalUpdate" UpdateMethod="UpdateJournals">
                  <UpdateParameters>
                      <asp:Parameter Name="jtranid" Type="Int32" />
                      <asp:Parameter Name="dtrandate" Type="DateTime" />
                      <asp:Parameter Name="Debit" Type="Decimal" />
                       <asp:Parameter Name="Credit" Type="Decimal" />
                      <asp:Parameter Name="cvoucherno" Type="String" />
                      <asp:Parameter Name="ctrandesc" Type="String" />
                      <asp:Parameter Name="cacctnumb" Type="String" />
                      <asp:Parameter Name="ntranamnt" Type="Decimal" />
                      <asp:Parameter Name="cuserid" Type="String" />
                  </UpdateParameters>
              </asp:ObjectDataSource>
          </p>

       
           <asp:Panel ID="pnlPopup" runat="server" align="center" Width="60%" Height="60%" BackColor="#CCFFFF" BorderColor="White" BorderStyle="Groove" CssClass="active right">
 
        <p>
              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ObjectDataSource1" Height="57px" Width="1336px" OnLoad="Page_Load">
                  <Columns>
                      <asp:CommandField ShowEditButton="True" />
                      <asp:BoundField DataField="jtranid" HeaderText="jtranid" SortExpression="jtranid" />
                      <asp:BoundField DataField="cvoucherno" HeaderText="cvoucherno" SortExpression="cvoucherno" />
                      <asp:BoundField DataField="dtrandate" HeaderText="dtrandate" SortExpression="dtrandate" />
                      <asp:BoundField DataField="Debit" HeaderText="Debit" SortExpression="Debit" />
                      <asp:BoundField DataField="Credit" HeaderText="Credit" SortExpression="Credit" />
                      <asp:BoundField DataField="ctrandesc" HeaderText="ctrandesc" SortExpression="ctrandesc" />
                        <asp:BoundField DataField="cacctnumb" HeaderText="cacctnumb" SortExpression="cacctnumb" />
                      <asp:BoundField DataField="ntranamnt" HeaderText="ntranamnt" SortExpression="ntranamnt" />
                      <asp:BoundField DataField="cuserid" HeaderText="cuserid" SortExpression="cuserid" />

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
              <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetAlljournals" TypeName="NACCUGSoft_Online.JournalUpdate" UpdateMethod="UpdateJournals" OldValuesParameterFormatString="original_{0}">
                  <UpdateParameters>
                      <asp:Parameter Name="jtranid" Type="Int32" />
                      <asp:Parameter Name="cvoucherno" Type="String" />
                      <asp:Parameter Name="dtrandate" Type="DateTime" />
                      <asp:Parameter Name="Debit" Type="Decimal" />
                       <asp:Parameter Name="Credit" Type="Decimal" />
                      <asp:Parameter Name="ctrandesc" Type="String" />
                      <asp:Parameter Name="cacctnumb" Type="String" />
                      <asp:Parameter Name="ntranamnt" Type="Decimal" />
                      <asp:Parameter Name="cuserid" Type="String" />

                  </UpdateParameters>
              </asp:ObjectDataSource>
            <br>
             <asp:Button ID="btnClose" runat="server" Text="Close" Width="200px" Height="40" />
          </p>
                   
         </asp:Panel>
        <p> 
                               <label>
                    Debit Amount <br>
            <asp:TextBox ID="TextBox1" runat="server" Text="0.00" Enabled="false" ></asp:TextBox></label>
             <label>
                    Credit Amount <br>
            <asp:TextBox ID="TextBox2" runat="server" Text="0.00" Enabled="false"></asp:TextBox>

                    </label>
        </p>
    <p>
            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" Width="200px" Height="40"/>
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

