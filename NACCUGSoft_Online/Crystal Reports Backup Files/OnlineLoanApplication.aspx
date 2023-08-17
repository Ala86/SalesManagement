<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineLoanApplication.aspx.cs" Inherits="NACCUGSoft_Online.OnlineLoanApplication" %>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title></title>
   <%--<link rel="Stylesheet" href="Content/Site.less" type="text/css" />--%>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 33px;
            left: 399px;
            z-index: 1;
            width: 371px;
        }
        .auto-style2 {
            width: 967px;
            height: 227px;
            position: absolute;
            top: 125px;
            left: 106px;
            z-index: -1;
            background-color: #99FFCC;
        }
        .auto-style3 {
            position: absolute;
            top: 22px;
            left: 200px;
            z-index: 1;
            width: 275px;
        }
        .auto-style4 {
            position: absolute;
            top: 51px;
            left: 200px;
            z-index: 1;
            width: 273px;
        }
        .auto-style5 {
            position: absolute;
            top: 81px;
            left: 197px;
            z-index: 1;
            width: 274px;
        }
        .auto-style6 {
            position: absolute;
            top: 111px;
            left: 199px;
            z-index: 1;
            width: 272px;
        }
        .auto-style7 {
            position: absolute;
            top: 26px;
            left: 691px;
            z-index: 1;
            width: 250px;
        }
        .auto-style8 {
            position: absolute;
            top: 57px;
            left: 694px;
            z-index: 1;
            width: 242px;
        }
        .auto-style9 {
            position: absolute;
            top: 86px;
            left: 692px;
            z-index: 1;
            width: 247px;
        }
        .auto-style11 {
            position: absolute;
            top: 22px;
            left: 12px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 53px;
            left: 12px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 83px;
            left: 13px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 109px;
            left: 12px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 29px;
            left: 517px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 57px;
            left: 518px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 86px;
            left: 520px;
            z-index: 1;
        }
        .auto-style18 {
            width: 238px;
            height: 28px;
            position: absolute;
            top: 113px;
            left: 696px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 123px;
            left: 521px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 142px;
            left: 199px;
            z-index: 1;
            width: 273px;
        }
        .auto-style21 {
            position: absolute;
            top: 139px;
            left: 12px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 170px;
            left: 199px;
            z-index: 1;
            width: 273px;
        }
        .auto-style23 {
            position: absolute;
            top: 167px;
            left: 15px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 199px;
            left: 199px;
            z-index: 1;
            width: 274px;
        }
        .auto-style25 {
            position: absolute;
            top: 202px;
            left: 13px;
            z-index: 1;
        }
        .auto-style26 {
            width: 965px;
            height: 209px;
            position: absolute;
            top: 458px;
            left: 106px;
            z-index: 1;
            background-color: #CCCCFF;
        }
        .auto-style27 {
            position: absolute;
            top: 9px;
            left: 204px;
            z-index: 1;
            width: 266px;
        }
        .auto-style28 {
            position: absolute;
            top: 10px;
            left: 8px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 38px;
            left: 203px;
            z-index: 1;
            width: 267px;
        }
        .auto-style30 {
            position: absolute;
            top: 37px;
            left: 11px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 67px;
            left: 229px;
            z-index: 1;
            width: 240px;
        }
        .auto-style32 {
            position: absolute;
            top: 68px;
            left: 13px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 12px;
            left: 696px;
            z-index: 1;
            width: 254px;
        }
        .auto-style34 {
            position: absolute;
            top: 8px;
            left: 524px;
            z-index: 1;
        }
        .auto-style35 {
            position: absolute;
            top: 40px;
            left: 697px;
            z-index: 1;
            width: 253px;
        }
        .auto-style36 {
            position: absolute;
            top: 42px;
            left: 527px;
            z-index: 1;
        }
        .auto-style37 {
            position: absolute;
            top: 166px;
            left: 689px;
            z-index: 1;
            width: 242px;
        }
        .auto-style38 {
            position: absolute;
            top: 168px;
            left: 526px;
            z-index: 1;
        }
        .auto-style39 {
            position: absolute;
            top: 197px;
            left: 688px;
            z-index: 1;
            width: 245px;
        }
        .auto-style40 {
            position: absolute;
            top: 199px;
            left: 527px;
            z-index: 1;
        }
        .auto-style41 {
            position: absolute;
            top: 98px;
            left: 205px;
            z-index: 1;
            width: 265px;
        }
        .auto-style42 {
            position: absolute;
            top: 98px;
            left: 15px;
            z-index: 1;
        }
        .auto-style43 {
            width: 967px;
            height: 103px;
            position: absolute;
            top: 351px;
            left: 105px;
            z-index: 1;
            background-color: #CCFF99;
        }
        .auto-style46 {
            position: absolute;
            top: 71px;
            left: 690px;
            z-index: 1;
            width: 241px;
        }
        .auto-style47 {
            position: absolute;
            top: 73px;
            left: 212px;
            z-index: 1;
            width: 256px;
        }
        .auto-style48 {
            position: absolute;
            top: 15px;
            left: 14px;
            z-index: 1;
        }
        .auto-style49 {
            position: absolute;
            top: 42px;
            left: 17px;
            z-index: 1;
        }
        .auto-style50 {
            position: absolute;
            top: 72px;
            left: 524px;
            z-index: 1;
        }
        .auto-style51 {
            position: absolute;
            top: 73px;
            left: 10px;
            z-index: 1;
        }
        .auto-style52 {
            position: absolute;
            top: 5px;
            left: 690px;
            z-index: 1;
            width: 245px;
            height: 53px;
        }
        .auto-style56 {
            position: absolute;
            top: 625px;
            left: 758px;
            z-index: 1;
            width: 234px;
            height: 37px;
        }
        .auto-style57 {
            position: absolute;
            top: 73px;
            left: 530px;
            z-index: 1;
        }
        .auto-style58 {
            position: absolute;
            top: 69px;
            left: 753px;
            z-index: 1;
            width: 198px;
        }
        .auto-style59 {
            position: absolute;
            top: 101px;
            left: 534px;
            z-index: 1;
        }
        .auto-style60 {
            position: absolute;
            top: 97px;
            left: 697px;
            z-index: 1;
            width: 253px;
        }
        .auto-style61 {
            position: absolute;
            top: 127px;
            left: 202px;
            z-index: 1;
            width: 268px;
        }
        .auto-style62 {
            position: absolute;
            top: 129px;
            left: 698px;
            z-index: 1;
            width: 251px;
        }
        .auto-style63 {
            position: absolute;
            top: 125px;
            left: 19px;
            z-index: 1;
        }
        .auto-style65 {
            position: absolute;
            top: 10px;
            left: 524px;
            z-index: 1;
        }
        .auto-style66 {
            position: absolute;
            top: 9px;
            left: 208px;
            z-index: 1;
            width: 263px;
        }
        .auto-style67 {
            position: absolute;
            top: 44px;
            left: 212px;
            z-index: 1;
            width: 255px;
        }
        .auto-style68 {
            position: absolute;
            top: 130px;
            left: 534px;
            z-index: 1;
        }
        .auto-style69 {
            position: absolute;
            top: 88px;
            left: 308px;
            z-index: 1;
            height: 17px;
        }
        .auto-style70 {
            position: absolute;
            top: 87px;
            left: 153px;
            z-index: 1;
        }
        .auto-style71 {
            position: absolute;
            top: 82px;
            left: 825px;
            z-index: 1;
            width: 226px;
        }
            body{

    width: 100vw;
    height: 100vh;
    display: flex;
    justify-content:center;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div id='container' style='width: 100%;'>
    
  
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Size="Larger" Text="Online Loan Application"></asp:Label>
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" BackColor="Yellow" Enabled="False"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" BackColor="Yellow" Enabled="False"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5" Enabled="False"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style6" BackColor="Yellow" Enabled="False"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style7" BackColor="Yellow">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style8" BackColor="Yellow">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style9" BackColor="Yellow">
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style11" Text="Employment No."></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="First Name"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text="Middle Name"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style14" Text="Last Name"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text="Branch"></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style16" Text="Occupation"></asp:Label>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style17" Text="Purpose"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style18">
                <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                <asp:ListItem Value="2">No</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style19" Text="Contract Worker"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style20"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style21" Text="Previous Loan Amount"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style22" BackColor="Yellow"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" CssClass="auto-style23" Text="Loan Amount"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style24"></asp:TextBox>
            <asp:Label ID="Label12" runat="server" CssClass="auto-style25" Text="Savings Amount"></asp:Label>
            <asp:TextBox ID="TextBox13" runat="server" CssClass="auto-style37" TextMode="Date"></asp:TextBox>
            <asp:Label ID="Label18" runat="server" CssClass="auto-style38" Text="Contract Ends"></asp:Label>
            <asp:TextBox ID="TextBox14" runat="server" CssClass="auto-style39" TextMode="Date"></asp:TextBox>
            <asp:Label ID="Label19" runat="server" CssClass="auto-style40" Text="Date"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style26">
            <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style27"></asp:TextBox>
            <asp:Label ID="Label13" runat="server" CssClass="auto-style28" Text="Guarantor Name 1"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style29"></asp:TextBox>
            <asp:Label ID="Label14" runat="server" CssClass="auto-style30" Text="Phone No."></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style31"></asp:TextBox>
            <asp:Label ID="Label15" runat="server" CssClass="auto-style32" Text="Guarantor Contract Period"></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server" CssClass="auto-style33"></asp:TextBox>
            <asp:Label ID="Label16" runat="server" CssClass="auto-style34" Text="Gurantor Name 2"></asp:Label>
            <asp:TextBox ID="TextBox12" runat="server" CssClass="auto-style35"></asp:TextBox>
            <asp:Label ID="Label17" runat="server" CssClass="auto-style36" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="TextBox15" runat="server" CssClass="auto-style41"></asp:TextBox>
            <asp:TextBox ID="TextBox22" runat="server" CssClass="auto-style58"></asp:TextBox>
            <asp:Label ID="Label20" runat="server" CssClass="auto-style42" Text="Guarantor Savings"></asp:Label>
            <asp:Label ID="Label27" runat="server" CssClass="auto-style57" Text="Guarantors Contract Period"></asp:Label>
            <asp:Label ID="Label28" runat="server" CssClass="auto-style59" Text="Guarantor Savings"></asp:Label>
            <asp:TextBox ID="TextBox23" runat="server" CssClass="auto-style60"></asp:TextBox>
            <asp:TextBox ID="TextBox24" runat="server" CssClass="auto-style61"></asp:TextBox>
            <asp:TextBox ID="TextBox25" runat="server" CssClass="auto-style62"></asp:TextBox>
            <asp:Label ID="Label29" runat="server" CssClass="auto-style63" Text="Employer No."></asp:Label>
            <asp:Label ID="Label30" runat="server" CssClass="auto-style68" Text="Employee No."></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style43">
            <asp:Label ID="Label25" runat="server" CssClass="auto-style65" Text="Address"></asp:Label>
            <asp:TextBox ID="TextBox18" runat="server" CssClass="auto-style46"></asp:TextBox>
            <asp:TextBox ID="TextBox19" runat="server" CssClass="auto-style47" BackColor="Yellow"></asp:TextBox>
            <asp:Label ID="Label21" runat="server" CssClass="auto-style48" Text="Country"></asp:Label>
            <asp:Label ID="Label22" runat="server" CssClass="auto-style49" Text="City"></asp:Label>
            <asp:Label ID="Label23" runat="server" CssClass="auto-style50" Text="Email Address"></asp:Label>
            <asp:Label ID="Label24" runat="server" CssClass="auto-style51" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="TextBox20" runat="server" CssClass="auto-style52" BackColor="Yellow" TextMode="MultiLine"></asp:TextBox>
            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style66">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="auto-style67">
            </asp:DropDownList>
        </asp:Panel>

        <asp:Button ID="Button1" runat="server" CssClass="auto-style56" Text="Save" OnClick="Button1_Click" />
        <p>
            <asp:TextBox ID="TextBox26" runat="server" CssClass="auto-style69" Enabled="False"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style71" PostBackUrl="~/MainMenu.aspx" Text="Return to Mainmenu" />
        </p>
        <asp:Label ID="Label31" runat="server" CssClass="auto-style70" Text="Member Code"></asp:Label>
         </div>



    </form>

    <p>
        <label>
        text<br>
        <input type="text" placeholder="Placeholder" value="Default value">
        </label>
</p>
</body>
</html>
