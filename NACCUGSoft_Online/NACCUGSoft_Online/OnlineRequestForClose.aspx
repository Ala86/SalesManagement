<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineRequestForClose.aspx.cs" Inherits="NACCUGSoft_Online.OnlineRequestForClose" %>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,strink-to-fit=no">
    <meta name="theme.colour" content="#000000">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 28px;
            left: 599px;
            z-index: 1;
        }
        .auto-style2 {
            width: 1022px;
            height: 343px;
            position: absolute;
            top: 135px;
            left: 270px;
            z-index: 1;
            background-color: #CC99FF;
        }
        .auto-style3 {
            position: absolute;
            top: 39px;
            left: 222px;
            z-index: 1;
            width: 263px;
        }
        .auto-style4 {
            position: absolute;
            top: 78px;
            left: 220px;
            z-index: 1;
            width: 265px;
        }
        .auto-style5 {
            position: absolute;
            top: 115px;
            left: 219px;
            z-index: 1;
            width: 262px;
        }
        .auto-style6 {
            position: absolute;
            top: 149px;
            left: 220px;
            z-index: 1;
            width: 264px;
            right: 530px;
        }
        .auto-style7 {
            position: absolute;
            top: 42px;
            left: 698px;
            z-index: 1;
            width: 277px;
        }
        .auto-style10 {
            position: absolute;
            top: 143px;
            left: 701px;
            z-index: 1;
            width: 274px;
        }
        .auto-style11 {
            position: absolute;
            top: 39px;
            left: 15px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 78px;
            left: 17px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 116px;
            left: 16px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 152px;
            left: 16px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 44px;
            left: 506px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 77px;
            left: 509px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 116px;
            left: 509px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 145px;
            left: 509px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 76px;
            left: 698px;
            z-index: 1;
            width: 266px;
        }
        .auto-style20 {
            position: absolute;
            top: 111px;
            left: 700px;
            z-index: 1;
            width: 262px;
        }
        .auto-style21 {
            position: absolute;
            top: 197px;
            left: 14px;
            z-index: 1;
            width: 358px;
        }
        .auto-style23 {
            position: absolute;
            top: 294px;
            left: 454px;
            z-index: 1;
            width: 226px;
            height: 38px;
        }
        .auto-style24 {
            width: 96px;
            height: 28px;
            position: absolute;
            top: 202px;
            left: 370px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 96px;
            left: 667px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 97px;
            left: 445px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 89px;
            left: 964px;
            z-index: 1;
            width: 298px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div id='container' style='width: 80%;'>
    
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Size="Larger" Text="Online Request For Closure"></asp:Label>
    
  
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" Enabled="False" BackColor="Yellow"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5" Enabled="False"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style6" Enabled="False" BackColor="Yellow"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style7">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style10">
                <asp:ListItem Selected="True" Value="1">End of Contract</asp:ListItem>
                <asp:ListItem Value="2">Retirement</asp:ListItem>
                <asp:ListItem Value="3">Dismisal</asp:ListItem>
                <asp:ListItem Value="4">Others</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style11" Text="Employment No."></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="First Name"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text="Middle Name"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style14" Text="Last Name"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text="Job Title"></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style16" Text="Telphone No."></asp:Label>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style17" Text="Date"></asp:Label>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style18" Text="Reason for close"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style19" BackColor="Yellow"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style20" TextMode="Date" BackColor="Yellow"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style21" Text="Would live to close my account with the CU with immediate effect."></asp:Label>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Text="Save" OnClick="Button1_Click" />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style24">
                <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                <asp:ListItem Value="2">No</asp:ListItem>
            </asp:RadioButtonList>
        </asp:Panel>
        <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style25"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" CssClass="auto-style26" Text="Member Code"></asp:Label>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style27" PostBackUrl="~/MainMenu.aspx" Text="Return to Mainmenu" />
      </div>
    </form>
</body>
</html>
