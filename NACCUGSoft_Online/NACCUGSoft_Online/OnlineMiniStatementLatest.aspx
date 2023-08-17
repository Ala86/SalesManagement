<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineMiniStatementLatest.aspx.cs" Inherits="NACCUGSoft_Online.OnlineMiniStatementLatest" %>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Request for Closure</title>
    <link rel="Stylesheet" href="Content/Site.less" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 6px;
            text-align: center;
        }
        .auto-style6 {}
        .auto-style3 {
            z-index: 1;
            left: 116px;
            top: 250px;
            position: absolute;
        }
    </style>
</head>
<body>
  <section class="navigation">
  <div class="nav-container">
    <div class="brand">
      <a href="#!">NACCUGSoft Online</a>
    </div>
    <nav class="signout">Sign Out</nav>
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
    <form id="ministatement" runat="server">
   <div id='containe' class="auto-style1" >
       <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Member Code"></asp:Label> <br>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>       
        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Select Account No."></asp:Label>
        </div>

         <div id='contai' class="auto-style1" >
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>       
        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Show Transactions"  /></div>
         <div id='conta' class="auto-style1" ></div>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Font-Bold="True" Text="Transactions"></asp:Label> 
        <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Font-Bold="True" Text="Loans Transactions" Visible="False"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style11" Text="Shares Transactions" Visible="False" Font-Bold="True"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style12" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>

        <asp:Button ID="Button2" runat="server" CssClass="auto-style13" PostBackUrl="~/MainMenu.aspx" Text="Return to the Mainmenu" Visible="False"/>
 

        <div id='container'>  
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style6" ForeColor="#333333" GridLines="None" Width="789px">
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
        </div>
       
             
    </form>
</body>
</html>
