<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineSavingsAdjustment.aspx.cs" Inherits="NACCUGSoft_Online.OnlineSavingsAdjustment" %>
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
            top: 50px;
            left: 433px;
            z-index: 1;
        }
        .auto-style2 {
            width: 1022px;
            height: 301px;
            position: absolute;
            top: 171px;
            left: 68px;
            z-index: 1;
            background-color: #99FFCC;
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
        .auto-style24 {
            position: absolute;
            top: 149px;
            left: 702px;
            z-index: 1;
            width: 258px;
        }
        .auto-style25 {
            position: absolute;
            top: 150px;
            left: 511px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 397px;
            left: 718px;
            z-index: 1;
            width: 298px;
            height: 50px;
        }
        .auto-style27 {
            position: absolute;
            top: 116px;
            left: 346px;
            z-index: 1;
        }
        .auto-style28 {
            position: absolute;
            top: 117px;
            left: 206px;
            z-index: 1;
            right: 1116px;
        }
        .auto-style29 {
            position: absolute;
            top: 121px;
            left: 874px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div id='container' style='width: 100%;'>
    
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Size="Larger" Text="Online Savings Adjustment"></asp:Label>
    

        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" BackColor="Yellow"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style6" BackColor="Yellow"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style7">
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style11" Text="Employment No."></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="First Name"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text="Middle Name"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style14" Text="Last Name"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text="Job Title"></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style16" Text="Telphone No."></asp:Label>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style17" Text="Date"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style19" BackColor="Yellow"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style20" TextMode="Date" BackColor="Yellow"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style24" BackColor="Yellow"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" CssClass="auto-style25" Text="Amount"></asp:Label>
        </asp:Panel>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style26" OnClick="Button1_Click" Text="Save" />
        <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style27" Enabled="False"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" CssClass="auto-style28" Text="Member Code"></asp:Label>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style29" PostBackUrl="~/MainMenu.aspx" Text="Return to Mainmenu" />
           </div>
    </form>
</body>
</html>
