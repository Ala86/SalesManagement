<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmSavingsAdjustment.aspx.cs" Inherits="NACCUGSoft_Online.ConfirmSavingsAdjustment" %>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,strink-to-fit=no">
    <meta name="theme.colour" content="#000000">
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 179px;
            left: 216px;
            z-index: 1;
            height: 24px;
            right: 551px;
        }
        .auto-style4 {
            position: absolute;
            top: 180px;
            left: 93px;
            z-index: 1;
            right: 712px;
        }
        .auto-style6 {
            position: absolute;
            top: 179px;
            left: 529px;
            z-index: 1;
            width: 278px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            color: #0033CC;
        }
        .auto-style9 {
            width: 1363px;
            height: 204px;
            position: absolute;
            top: 280px;
            left: 56px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div id='container' style='width: 100%; height: 30px;' class="auto-style7">
    
 
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" Enabled="False"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Member Code"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" PostBackUrl="~/DashboardUI.aspx" Text="Return to Mainmenu" />
        <span class="auto-style8"><strong>Confirm Savings Adjustment</strong></span></div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style9" ForeColor="#333333" GridLines="None">
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
    </form>
</body>
</html>
