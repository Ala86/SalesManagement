<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineMiniStatement.aspx.cs" Inherits="NACCUGSoft_Online.OnlineMiniStatement" %>
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
            top: 24px;
            left: 353px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 90px;
            left: 779px;
            z-index: 1;
            width: 233px;
            height: 38px;
        }
        .auto-style7 {
            width: 1111px;
            height: 485px;
            position: absolute;
            top: 213px;
            left: 48px;
            z-index: -1;
            background-color: #FFFFCC;
        }
        .auto-style8 {
            position: absolute;
            top: 92px;
            left: 343px;
            z-index: 1;
            width: 335px;
        }
        .auto-style9 {
            width: 1099px;
            height: 127px;
            position: absolute;
            top: 35px;
            left: 6px;
            z-index: 1;
        }
        .auto-style10 {
            width: 1098px;
            height: 144px;
            position: absolute;
            top: 224px;
            left: 6px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 150px;
            left: 343px;
            z-index: 1;
            width: 328px;
        }
        .auto-style12 {
            position: absolute;
            top: 195px;
            left: 9px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 0px;
            left: 0px;
        }
        .auto-style14 {
            position: absolute;
            top: 97px;
            left: 175px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 153px;
            left: 168px;
            z-index: 1;
        }
        .auto-style16 {
            width: 1103px;
            height: 113px;
            position: absolute;
            top: 84px;
            left: 50px;
            z-index: -1;
            background-color: #99FF66;
        }
        .auto-style17 {
            position: absolute;
            top: 65px;
            left: 643px;
            z-index: 1;
            width: 235px;
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div id='container' style='width: 100%;'>
    
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Size="Larger" Text="Online Mini Statement"></asp:Label>
    
  
        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="Transaction Enquiries"/>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style7">
            <strong>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="Details Transacions"></asp:Label>
            </strong>
            <asp:GridView ID="acctgrid" runat="server" CssClass="auto-style9">
            </asp:GridView>
            <asp:GridView ID="transgrid" runat="server" CssClass="auto-style10">
            </asp:GridView>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Font-Bold="True" style="z-index: 1" Text="Account Details"></asp:Label>
        </asp:Panel>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style8" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnTextChanged="DropDownList1_TextChanged">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style11" Selected = "true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style14" Text="Member "></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text="Accounts "></asp:Label>
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style16">
            <asp:Button ID="Button2" runat="server" Text="Return to MainMenu" CssClass="auto-style17" PostBackUrl="~/MainMenu.aspx" />
        </asp:Panel>
         </div>
    </form>
</body>
</html>
