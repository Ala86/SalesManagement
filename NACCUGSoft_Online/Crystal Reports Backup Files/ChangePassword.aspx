<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="NACCUGSoft_Online.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 840px;
            height: 570px;
            position: absolute;
            top: 131px;
            left: 316px;
            z-index: 1;
            background-color: #CCFF99;
        }
        .auto-style2 {
            position: absolute;
            top: 78px;
            left: 374px;
            z-index: 1;
            width: 386px;
        }
        .auto-style3 {
            position: absolute;
            top: 137px;
            left: 373px;
            z-index: 1;
            width: 389px;
        }
        .auto-style4 {
            position: absolute;
            top: 190px;
            left: 371px;
            z-index: 1;
            width: 390px;
        }
        .auto-style5 {
            position: absolute;
            top: 247px;
            left: 369px;
            z-index: 1;
            width: 390px;
        }
        .auto-style6 {
            position: absolute;
            top: 76px;
            left: 27px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 136px;
            left: 28px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 191px;
            left: 32px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 248px;
            left: 36px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 373px;
            left: 336px;
            z-index: 1;
            width: 291px;
            height: 40px;
        }
        .auto-style11 {
            position: absolute;
            top: -63px;
            left: 333px;
            z-index: 1;
            width: 257px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style5"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Phone Number"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="New Password"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="Comfirm New Password"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="Email"></asp:Label>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Text="Save" />
            <asp:Label ID="Label5" runat="server" CssClass="auto-style11" Text="Change Password"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
