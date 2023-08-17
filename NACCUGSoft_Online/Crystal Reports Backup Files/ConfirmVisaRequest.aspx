<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmVisaRequest.aspx.cs" Inherits="NACCUGSoft_Online.ConfirmVisaRequest" %>
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
            top: 176px;
            left: 205px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 172px;
            left: 77px;
            z-index: 1;
            right: 725px;
        }
        .auto-style7 {
            position: absolute;
            top: 165px;
            left: 541px;
            z-index: 1;
            width: 292px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            color: #0033CC;
        }
        .auto-style10 {
            width: 1237px;
            height: 152px;
            position: absolute;
            top: 284px;
            left: 56px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div id='container' style='width: 100%;' class="auto-style8">
    
        <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Member Code"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Enabled="False"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Text="Return to Mainmenu" PostBackUrl="~/DashboardUI.aspx" />
     
        <span class="auto-style9"><strong>Confirm Visa Request</strong></span></div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style10" ForeColor="#333333" GridLines="None">
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
