<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineBalanceEnquiry.aspx.cs" Inherits="NACCUGSoft_Online.OnlineBalanceEnquiry" %>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Request for Closure</title>
    <link rel="Stylesheet" href="Content/Site.less" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <section class="navigation">
  <div class="nav-container">
    <div class="brand">
      <a href="#!">NACCUGSoft Online</a>
    </div>
    <nav class="signout"> Sign Out
         <a href="newLoginUI.aspx"></a>
    </nav>
    <nav class="primary-nav">
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
      <ul class="nav-list">
        <li>
          <a href="RegistrationUI.aspx">Registration</a>
        </li>
        <li>
          <a href="NewOnlineRegistrationUI.aspx" style="background: #2581DC;">Loan Application</a>
        </li>
        <li>
          <a href="VisaRequestUI.aspx">Visa Request Statement </a>
        </li>
        <li>
          <a href="SavingAdjustmentUI.aspx">Savings Adjustment </a>
        </li>
        <li>
          <a href="RequestForClosureUI.aspx">Request for Closure</a>
        </li>
               <li>
          <a href="OnlineMiniStatementLatest.aspx">Mini Statement </a>
        </li>
        <li>
          <a href="OnlineBalanceEnquiry.aspx">Balance Enquiry</a>
        </li>
      </ul>
    </nav>
  </div>
</section>
   
   <form id="form1" runat="server">
   <div class="auto-style8">
  <div id='container' class="auto-style1">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Member Code&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11" Enabled="False"></asp:TextBox>
        <br />
        <br />
            <asp:GridView ID="acctgrid" runat="server" CssClass="fontawesome-align-center" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1508px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        <div class="auto-style2">
        </div>
    
 
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1">
        </asp:Panel>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="Member Enquiry" OnClick="Button1_Click" Visible="False" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Member Code " Visible="False"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style7" Visible="False" Width="278px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style9">
            <asp:Button ID="Button2" runat="server" Text="Return to MainMenu" CssClass="auto-style10" PostBackUrl="~/MainMenu.aspx" OnClick="Button2_Click" Visible="False" />
        </asp:Panel>
           </div>
    </form>
</body>
</html>
