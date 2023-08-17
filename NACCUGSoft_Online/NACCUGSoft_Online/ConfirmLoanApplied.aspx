<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmLoanApplied.aspx.cs" Inherits="NACCUGSoft_Online.ConfirmLoanApplied" %>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,strink-to-fit=no">
    <meta name="theme.colour" content="#000000">
    <style type="text/css">
        .auto-style4 {
            position: absolute;
            top: 145px;
            left: 168px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 146px;
            left: 297px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 147px;
            left: 585px;
            z-index: 1;
            width: 232px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            color: #0033CC;
        }
        .auto-style11 {
            width: 1192px;
            height: 202px;
            position: absolute;
            top: 270px;
            left: 84px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                 <asp:Panel ID="pnlPopup" runat="server" align="center" Width="80%" Height="80%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove">
  
 <div id='container' style='width: 100%;' class="auto-style9">
    
  
<%--        <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFCC" BorderColor="#CCFFCC" CssClass="auto-style1">
            <h1 class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Loan Application </h1>
        </asp:Panel>--%>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Member Code"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Enabled="False"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style7" PostBackUrl="~/DashboardUI.aspx" Text="Return to Mainmenu" />
        <span class="auto-style10"><strong>Confirmed Loan Application</strong></span></div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style11" ForeColor="#333333" GridLines="None">
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
                     </asp:Panel>
    </form>
</body>
</html>
