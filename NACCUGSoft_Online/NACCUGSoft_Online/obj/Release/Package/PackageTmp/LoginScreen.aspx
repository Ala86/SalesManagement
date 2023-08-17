<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginScreen.aspx.cs" Inherits="NACCUGSoft_Online.LoginScreen" %>
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> WELCOME TO SOFORA CUU</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,strink-to-fit=no">
    <meta name="theme.colour" content="#000000">
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 34px;
            top: 315px;
          width: 137px;
            position: absolute;
            height: 32px;
        }
        .auto-style6 {
            z-index: 1;
            left: 32px;
            top: 195px;
            position: absolute;
            width: 385px;
            height: 33px;
        }
        .auto-style7 {
            z-index: 1;
            left: 33px;
            top: 229px;
            position: absolute;
            width: 327px;
            height: 25px;
        }
        .auto-style8 {
            z-index: 1;
            left: 34px;
            top: 257px;
            position: absolute;
        }
        .auto-style9 {
            z-index: 1;
            left: 34px;
            top: 280px;
            position: absolute;
            width: 325px;
            height: 26px;
        }
        .auto-style10 {
            z-index: 1;
            left: 210px;
            top: 351px;
            position: absolute;
        }
        .auto-style11 {
            z-index: 1;
            left: 163px;
            top: 368px;
            position: absolute;
            width: 251px;
            height: 28px;
        }
        .auto-style22 {
            z-index: -1;
            left: 467px;
            top: 239px;
            position: absolute;
            height: 404px;
            width: 414px;
        }
        .auto-style25 {
            position: absolute;
            top: 86px;
            left: 523px;
            z-index: 1;
            width: 274px;
            height: 26px;
            bottom: 602px;
            right: 311px;
        }
        .auto-style26 {
            position: absolute;
            top: 124px;
            left: 579px;
            z-index: 1;
            width: 194px;
            height: 18px;
        }
        .auto-style27 {
            position: absolute;
            top: 652px;
            left: 521px;
            z-index: 1;
            width: 334px;
            height: 16px;
        }
        .auto-style34 {
            width: 413px;
            height: 84px;
            position: absolute;
            top: 153px;
            left: 466px;
            z-index: 2;
        }
        body{

     width: 100vw;
     display: flex;
    justify-content:center;
    align-items:center;

        }
        .auto-style36 {
            position: absolute;
            top: 683px;
            left: 522px;
            z-index: 1;
            width: 325px;
        }
        .auto-style37 {
            z-index: 1;
            left: 154px;
            top: 71px;
            position: absolute;
            height: 108px;
        }
        .auto-style38 {
            position: absolute;
            top: 32px;
            z-index: 1;
            width: 423px;
            height: 43px;
            left: 387px;
        }
        .auto-style40 {
            width: 100%;
            height: 711px;
        }
        </style>
</head>
<body>
     <div id ="root">
        <form id="form1" runat="server">
  
         <div ID="Panel1" Class="auto-style22">
          <asp:Panel  runat="server" BackColor="Silver">
           <h3>Login Screen</h3>
             <strong>&nbsp;<img alt="" class="auto-style37" longdesc="http://localhost:26530/gtucculogoc.jpe" src="gtucculogoc.jpe" /></strong>
            <asp:TextBox ID="TextBox1" runat="server" BackColor="Yellow" CssClass="auto-style7"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Mobile Phone Number(e.g. 220*******)" CssClass="auto-style6"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="Password" CssClass="auto-style8"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BackColor="Yellow" CssClass="auto-style9"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#009900" CssClass="auto-style1" OnClick="Button1_Click" Text="Login" />
            <asp:Label ID="Label10" runat="server" Text="New Member?" CssClass="auto-style10"></asp:Label>
            <asp:Button ID="Button2" runat="server" BackColor="Blue" ForeColor="White" Text="REGISTER AS NEW MEMBER" CssClass="auto-style11" OnClick="Button2_Click" PostBackUrl="~/OnlineRegistration.aspx" />
        </asp:Panel>
         </div>
         <div  ID="HyperLink1" Class="auto-style25" >
        <asp:HyperLink runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" NavigateUrl="http://www.naccug.com/" BackColor="#66FFFF">Click Here to Visit Our Website</asp:HyperLink>
        </div>
         <div ID="HyperLink2" Class="auto-style26"  >
          <asp:HyperLink runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" NavigateUrl="https://www.gmail.com/" BackColor="#99FFCC">Cick Here to Email Us</asp:HyperLink>
      </div>
          <div ID="HyperLink3" Class="auto-style27">
          <asp:HyperLink  runat="server"  Font-Bold="True" Font-Italic="True" Font-Underline="True" NavigateUrl="https://www.facebook.com/naccug/" BackColor="#99FFCC">Click Here to Visit Our Facebook Page</asp:HyperLink>
       </div>
         <div >
          <asp:RadioButtonList ID="RadioButtonList1" runat ="server" CssClass="auto-style34"  Font-Size="Larger" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="0">Login as a Member</asp:ListItem>
            <asp:ListItem Value="1">Login as a Staff</asp:ListItem>
        </asp:RadioButtonList>
             </div>

   <div ID="HyperLink5" Class="auto-style36">
        <asp:HyperLink  runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Italic="True" Font-Strikeout="False" Font-Underline="True">Contact Us. 7833358 / 9138402</asp:HyperLink>
         </div>

         <div  ID="Label11" Class="auto-style38">
     <asp:Label  runat="server" Font-Bold="True" Font-Size="Large" Text="WELCOME TO SOFORA CCU "></asp:Label>     
          </div> 
          </form>
</div>
</body>
</html>
