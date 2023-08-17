<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineRegistration.aspx.cs" Inherits="NACCUGSoft_Online.OnlineRegistration" %>
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
            top: 9px;
            left: 520px;
            z-index: 1;
            width: 304px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style3 {
            width: 1177px;
            height: 119px;
            position: absolute;
            top: 112px;
            left: 105px;
            z-index: 1;
            background-color: #CCFF99;
        }
        .auto-style4 {
            position: absolute;
            top: 24px;
            left: 187px;
            z-index: 1;
            width: 293px;
        }
        .auto-style5 {
            position: absolute;
            top: 56px;
            left: 186px;
            z-index: 1;
            width: 294px;
        }
        .auto-style6 {
            position: absolute;
            top: 87px;
            left: 186px;
            z-index: 1;
            width: 294px;
        }
        .auto-style12 {
            position: absolute;
            top: 21px;
            left: 16px;
            z-index: 1;
            width: 149px;
        }
        .auto-style14 {
            position: absolute;
            top: 87px;
            left: 12px;
            z-index: 1;
            width: 142px;
            height: 22px;
        }
        .auto-style15 {
            position: absolute;
            top: 24px;
            left: 801px;
            z-index: 1;
            width: 338px;
        }
        .auto-style16 {
            position: absolute;
            top: 26px;
            left: 586px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 51px;
            left: 585px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 52px;
            left: 802px;
            z-index: 1;
            width: 334px;
        }
        .auto-style19 {
            position: absolute;
            top: 81px;
            left: 802px;
            z-index: 1;
            width: 335px;
        }
        .auto-style20 {
            position: absolute;
            top: 78px;
            left: 585px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 240px;
            left: 14px;
            z-index: 1;
        }
        .auto-style24 {
            width: 1179px;
            height: 270px;
            position: absolute;
            top: 237px;
            left: 108px;
            z-index: 1;
            background-color: #66FF99;
        }
        .auto-style25 {
            position: absolute;
            top: 16px;
            left: 798px;
            z-index: 1;
            width: 350px;
        }
        .auto-style26 {
            position: absolute;
            top: 22px;
            left: 597px;
            z-index: 1;
        }
        .auto-style28 {
            position: absolute;
            top: 44px;
            left: 797px;
            z-index: 1;
            width: 353px;
        }
        .auto-style29 {
            position: absolute;
            top: 72px;
            left: 797px;
            z-index: 1;
            width: 356px;
        }
        .auto-style31 {
            position: absolute;
            top: 370px;
            left: 956px;
            z-index: 1;
        }
        .auto-style32 {
            position: absolute;
            top: 46px;
            left: 595px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 74px;
            left: 596px;
            z-index: 1;
        }
        .auto-style34 {
            position: absolute;
            top: 67px;
            left: 165px;
            z-index: 1;
            width: 400px;
        }
        .auto-style35 {
            position: absolute;
            top: 96px;
            left: 165px;
            z-index: 1;
            width: 400px;
        }
        .auto-style36 {
            position: absolute;
            top: 63px;
            left: 13px;
            z-index: 1;
        }
        .auto-style37 {
            position: absolute;
            top: 92px;
            left: 13px;
            z-index: 1;
        }
        .auto-style38 {
            position: absolute;
            top: 126px;
            left: 166px;
            z-index: 1;
            width: 401px;
        }
        .auto-style39 {
            position: absolute;
            top: 154px;
            left: 165px;
            z-index: 1;
            width: 399px;
        }
        .auto-style40 {
            position: absolute;
            top: 182px;
            left: 164px;
            z-index: 1;
            width: 400px;
        }
        .auto-style41 {
            position: absolute;
            top: 127px;
            left: 15px;
            z-index: 1;
        }
        .auto-style42 {
            position: absolute;
            top: 161px;
            left: 16px;
            z-index: 1;
        }
        .auto-style43 {
            position: absolute;
            top: 189px;
            left: 13px;
            z-index: 1;
        }
        .auto-style44 {
            position: absolute;
            top: 211px;
            left: 163px;
            z-index: 1;
            width: 400px;
        }
        .auto-style45 {
            position: absolute;
            top: 240px;
            left: 163px;
            z-index: 1;
            width: 400px;
        }
        .auto-style46 {
            position: absolute;
            top: 216px;
            left: 11px;
            z-index: 1;
        }
        .auto-style47 {
            position: absolute;
            top: 243px;
            left: 10px;
            z-index: 1;
        }
        .auto-style48 {
            position: absolute;
            top: 154px;
            left: 796px;
            z-index: 1;
            width: 352px;
        }
        .auto-style50 {
            width: 323px;
            height: 54px;
            position: absolute;
            top: 181px;
            left: 798px;
            z-index: 1;
        }
        .auto-style51 {
            width: 353px;
            height: 28px;
            position: absolute;
            top: 101px;
            left: 795px;
            z-index: 1;
        }
        .auto-style52 {
            width: 400px;
            height: 54px;
            position: absolute;
            top: 52px;
            left: 143px;
            z-index: 1;
        }
        .auto-style53 {
            width: 1179px;
            height: 241px;
            position: absolute;
            top: 274px;
            left: 1px;
            z-index: 1;
            background-color: #CCFF99;
        }
        .auto-style54 {
            position: absolute;
            top: 22px;
            left: 156px;
            z-index: 1;
            width: 376px;
        }
        .auto-style55 {
            position: absolute;
            top: 52px;
            left: 153px;
            z-index: 1;
            width: 381px;
        }
        .auto-style56 {
            position: absolute;
            top: 24px;
            left: 19px;
            z-index: 1;
        }
        .auto-style57 {
            position: absolute;
            top: 58px;
            left: 17px;
            z-index: 1;
        }
        .auto-style59 {
            position: absolute;
            top: 87px;
            left: 14px;
            z-index: 1;
        }
        .auto-style60 {
            position: absolute;
            top: 164px;
            left: 148px;
            z-index: 1;
            width: 388px;
        }
        .auto-style61 {
            position: absolute;
            top: 167px;
            left: 15px;
            z-index: 1;
        }
        .auto-style62 {
            position: absolute;
            top: 193px;
            left: 147px;
            z-index: 1;
            width: 386px;
        }
        .auto-style63 {
            position: absolute;
            top: 198px;
            left: 14px;
            z-index: 1;
        }
        .auto-style64 {
            position: absolute;
            top: 8px;
            left: 802px;
            z-index: 1;
            width: 353px;
        }
        .auto-style65 {
            position: absolute;
            top: 8px;
            left: 578px;
            z-index: 1;
        }
        .auto-style66 {
            position: absolute;
            top: 36px;
            left: 802px;
            z-index: 1;
            width: 352px;
        }
        .auto-style67 {
            position: absolute;
            top: 34px;
            left: 578px;
            z-index: 1;
        }
        .auto-style68 {
            position: absolute;
            top: 65px;
            left: 801px;
            z-index: 1;
            width: 353px;
        }
        .auto-style69 {
            position: absolute;
            top: 94px;
            left: 802px;
            z-index: 1;
            width: 352px;
        }
        .auto-style70 {
            position: absolute;
            top: 67px;
            left: 579px;
            z-index: 1;
        }
        .auto-style71 {
            position: absolute;
            top: 94px;
            left: 580px;
            z-index: 1;
        }
        .auto-style72 {
            position: absolute;
            top: 123px;
            left: 801px;
            z-index: 1;
            width: 353px;
        }
        .auto-style73 {
            position: absolute;
            top: 152px;
            left: 801px;
            z-index: 1;
            width: 352px;
        }
        .auto-style74 {
            position: absolute;
            top: 181px;
            left: 800px;
            z-index: 1;
            width: 353px;
        }
        .auto-style75 {
            position: absolute;
            top: 125px;
            left: 578px;
            z-index: 1;
        }
        .auto-style76 {
            position: absolute;
            top: 152px;
            left: 581px;
            z-index: 1;
        }
        .auto-style77 {
            position: absolute;
            top: 182px;
            left: 581px;
            z-index: 1;
        }
        .auto-style78 {
            position: absolute;
            top: 210px;
            left: 802px;
            z-index: 1;
            width: 350px;
        }
        .auto-style79 {
            position: absolute;
            top: 211px;
            left: 581px;
            z-index: 1;
        }
        .auto-style80 {
            position: absolute;
            top: 0px;
            left: 0px;
        }
        .auto-style81 {
            width: 321px;
            height: 50px;
            position: absolute;
            top: 5px;
            left: 162px;
            z-index: 1;
        }
        .auto-style82 {
            width: 1177px;
            height: 195px;
            position: absolute;
            top: 764px;
            left: 111px;
            z-index: 1;
            background-color: #FFCCCC;
        }
        .auto-style83 {
            position: absolute;
            top: 7px;
            left: 144px;
            z-index: 1;
            width: 395px;
        }
        .auto-style84 {
            position: absolute;
            top: 9px;
            left: 5px;
            z-index: 1;
        }
        .auto-style85 {
            position: absolute;
            top: 35px;
            left: 143px;
            z-index: 1;
            width: 394px;
        }
        .auto-style86 {
            position: absolute;
            top: 34px;
            left: 8px;
            z-index: 1;
        }
        .auto-style87 {
            position: absolute;
            top: 63px;
            left: 142px;
            z-index: 1;
            width: 394px;
        }
        .auto-style88 {
            position: absolute;
            top: 68px;
            left: 10px;
            z-index: 1;
        }
        .auto-style89 {
            position: absolute;
            top: 7px;
            left: 802px;
            z-index: 1;
            width: 348px;
        }
        .auto-style90 {
            position: absolute;
            top: 5px;
            left: 571px;
            z-index: 1;
        }
        .auto-style91 {
            position: absolute;
            top: 34px;
            left: 803px;
            z-index: 1;
            width: 347px;
        }
        .auto-style92 {
            position: absolute;
            top: 31px;
            left: 574px;
            z-index: 1;
        }
        .auto-style93 {
            position: absolute;
            top: 64px;
            left: 803px;
            z-index: 1;
            width: 358px;
        }
        .auto-style94 {
            position: absolute;
            top: 64px;
            left: 577px;
            z-index: 1;
        }
        .auto-style95 {
            position: absolute;
            top: 93px;
            left: 802px;
            z-index: 1;
            width: 355px;
        }
        .auto-style96 {
            position: absolute;
            top: 94px;
            left: 578px;
            z-index: 1;
        }
        .auto-style97 {
            position: absolute;
            top: 91px;
            left: 222px;
            z-index: 1;
            width: 312px;
        }
        .auto-style99 {
            position: absolute;
            top: 150px;
            left: 474px;
            z-index: 1;
            width: 229px;
            height: 40px;
        }
        .auto-style100 {
            position: absolute;
            top: 54px;
            left: 13px;
            z-index: 1;
        }
        .auto-style101 {
            position: absolute;
            top: 157px;
            left: 593px;
            z-index: 1;
        }
        .auto-style102 {
            position: absolute;
            top: 360px;
            left: 152px;
            z-index: 1;
            width: 375px;
            height: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div id='container' style='width: 80%;'>
    
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Member Registration"></asp:Label>
    
        <asp:RadioButtonList ID="RadioButtonList3" runat="server" CssClass="auto-style52" Width="400px">
            <asp:ListItem Selected="True">Individual Member</asp:ListItem>
            <asp:ListItem>Joint / Group Member</asp:ListItem>
        </asp:RadioButtonList>
    
   
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" BackColor="Yellow"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style6" BackColor="Yellow"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style12" Text="First Name"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style100" Text="Mid Name"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text="Last Name"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style15">
            </asp:DropDownList>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style16" Text="Branch"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style17" Text="Marital Status"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style18">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style19">
            </asp:DropDownList>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style20" Text="Title "></asp:Label>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style22" Text="Gender"></asp:Label>
            <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style31" Text="Non-Resident" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style24">
            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="auto-style25" BackColor="Yellow">
            </asp:DropDownList>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style26" Text="Nationality"></asp:Label>
            <asp:DropDownList ID="DropDownList7" runat="server" CssClass="auto-style28">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="auto-style29">
            </asp:DropDownList>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style32" Text="Region"></asp:Label>
            <asp:Label ID="Label11" runat="server" CssClass="auto-style33" Text="Ward"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style34" TextMode="Date" BackColor="Yellow"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style35" TextMode="Date" BackColor="Yellow"></asp:TextBox>
            <asp:Label ID="Label12" runat="server" CssClass="auto-style36" Text="Date of Birth"></asp:Label>
            <asp:Label ID="Label13" runat="server" CssClass="auto-style37" Text="Date Join"></asp:Label>
            <asp:DropDownList ID="DropDownList9" runat="server" CssClass="auto-style38">
            </asp:DropDownList>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style40"></asp:TextBox>
            <asp:Label ID="Label19" runat="server" CssClass="auto-style47" Text="Date Expired"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style39"></asp:TextBox>
            <asp:Label ID="Label14" runat="server" CssClass="auto-style41" Text="ID Type"></asp:Label>
            <asp:Label ID="Label16" runat="server" CssClass="auto-style42" Text="ID Number"></asp:Label>
            <asp:Label ID="Label17" runat="server" CssClass="auto-style43" Text="Place Issued"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style44" TextMode="Date"></asp:TextBox>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style45" TextMode="Date"></asp:TextBox>
            <asp:Label ID="Label18" runat="server" CssClass="auto-style46" Text="Date Issued"></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style48"></asp:TextBox>
            <asp:Label ID="Label20" runat="server" CssClass="auto-style101" Text="No. Dependance"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style50">
                <asp:ListItem Selected="True">New Member</asp:ListItem>
                <asp:ListItem>Old member</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="auto-style51">
                <asp:ListItem Selected="True">Residential</asp:ListItem>
                <asp:ListItem>Non-Residential</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style53">
                <asp:DropDownList ID="DropDownList10" runat="server" CssClass="auto-style54">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList11" runat="server" CssClass="auto-style55">
                </asp:DropDownList>
                <asp:Label ID="Label21" runat="server" CssClass="auto-style56" Text="Country"></asp:Label>
                <asp:Label ID="Label22" runat="server" CssClass="auto-style57" Text="City"></asp:Label>
                <asp:Label ID="Label23" runat="server" CssClass="auto-style59" Text="Adress"></asp:Label>
                <asp:TextBox ID="TextBox11" runat="server" CssClass="auto-style60" BackColor="Yellow"></asp:TextBox>
                <asp:Label ID="Label24" runat="server" CssClass="auto-style61" Text="Phone No."></asp:Label>
                <asp:TextBox ID="TextBox12" runat="server" CssClass="auto-style62"></asp:TextBox>
                <asp:Label ID="Label25" runat="server" CssClass="auto-style63" Text="Email Address"></asp:Label>
                <asp:TextBox ID="TextBox13" runat="server" CssClass="auto-style64"></asp:TextBox>
                <asp:Label ID="Label26" runat="server" CssClass="auto-style65" Text="Referee Name"></asp:Label>
                <asp:TextBox ID="TextBox14" runat="server" CssClass="auto-style66"></asp:TextBox>
                <asp:Label ID="Label27" runat="server" CssClass="auto-style67" Text="Address"></asp:Label>
                <asp:TextBox ID="TextBox15" runat="server" CssClass="auto-style68"></asp:TextBox>
                <asp:TextBox ID="TextBox16" runat="server" CssClass="auto-style69"></asp:TextBox>
                <asp:Label ID="Label28" runat="server" CssClass="auto-style70" Text="Mobile No."></asp:Label>
                <asp:Label ID="Label29" runat="server" CssClass="auto-style71" Text="Email Address"></asp:Label>
                <asp:TextBox ID="TextBox17" runat="server" CssClass="auto-style72" BackColor="Yellow"></asp:TextBox>
                <asp:TextBox ID="TextBox18" runat="server" CssClass="auto-style73" BackColor="Yellow"></asp:TextBox>
                <asp:TextBox ID="TextBox19" runat="server" CssClass="auto-style74"></asp:TextBox>
                <asp:Label ID="Label30" runat="server" CssClass="auto-style75" Text="Next of Kin"></asp:Label>
                <asp:Label ID="Label31" runat="server" CssClass="auto-style76" Text="Phone No."></asp:Label>
                <asp:Label ID="Label32" runat="server" CssClass="auto-style77" Text="Replastionship"></asp:Label>
                <asp:TextBox ID="TextBox20" runat="server" CssClass="auto-style78"></asp:TextBox>
                <asp:Label ID="Label33" runat="server" CssClass="auto-style79" Text="Address"></asp:Label>
                <asp:Label ID="Label34" runat="server" CssClass="auto-style80" style="z-index: 1" Text="Address"></asp:Label>
            </asp:Panel>
            <asp:TextBox ID="TextBox26" runat="server" CssClass="auto-style102" TextMode="MultiLine"></asp:TextBox>
            <asp:RadioButtonList ID="RadioButtonList4" runat="server" CssClass="auto-style81">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style82">
            <asp:DropDownList ID="DropDownList12" runat="server" CssClass="auto-style83" BackColor="Yellow">
            </asp:DropDownList>
            <asp:Label ID="Label35" runat="server" CssClass="auto-style84" Text="Employer"></asp:Label>
            <asp:TextBox ID="TextBox21" runat="server" CssClass="auto-style85"></asp:TextBox>
            <asp:Label ID="Label36" runat="server" CssClass="auto-style86" Text="Address"></asp:Label>
            <asp:TextBox ID="TextBox22" runat="server" CssClass="auto-style87"></asp:TextBox>
            <asp:Label ID="Label37" runat="server" CssClass="auto-style88" Text="Phone No."></asp:Label>
            <asp:TextBox ID="TextBox23" runat="server" CssClass="auto-style89"></asp:TextBox>
            <asp:Label ID="Label38" runat="server" CssClass="auto-style90" Text="Employment No."></asp:Label>
            <asp:TextBox ID="TextBox24" runat="server" CssClass="auto-style91"></asp:TextBox>
            <asp:Label ID="Label39" runat="server" CssClass="auto-style92" Text="Salary"></asp:Label>
            <asp:DropDownList ID="DropDownList13" runat="server" CssClass="auto-style93">
            </asp:DropDownList>
            <asp:Label ID="Label40" runat="server" CssClass="auto-style94" Text="Position"></asp:Label>
            <asp:DropDownList ID="DropDownList14" runat="server" CssClass="auto-style95" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:Label ID="Label41" runat="server" CssClass="auto-style96" Text="Department"></asp:Label>
            <asp:TextBox ID="TextBox25" runat="server" CssClass="auto-style97"></asp:TextBox>
            <asp:Label ID="Label42" runat="server" CssClass="auto-style37" Text="Amount to Save Monthly"></asp:Label>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style99" Text="Save" OnClick="Button1_Click" />
        </asp:Panel>
          </div>
    </form>
    </body>
</html>
