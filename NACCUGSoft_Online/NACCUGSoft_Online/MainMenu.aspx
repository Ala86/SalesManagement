<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="NACCUGSoft_Online.MainMenu"  %>
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NACCUGSoft Online</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,strink-to-fit=no">
    <meta name="theme.colour" content="#000000">
    <style type="text/css">
        .auto-style1 {
            width : 100%;
            height: 762px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            height: 43px;
            background-color: #66FF99;
        }
        .auto-style3 {
            height: 62px;
            background-color: #0000FF;
        }
        .auto-style4 {
            height: 503px;
            text-align: center;
            background-color: #66CCFF;
        }
        .auto-style5 {
            height: 59px;
            background-color: #FFFF00;
            text-align: center;
        }
        .auto-style8 {
            width: 224px;
            height: 225px;
        }
        .auto-style12 {
            background-color: #0000FF;
        }
        .auto-style14 {
            width: 244px;
            height: 130px;
            position: absolute;
            top: 380px;
            left: 35px;
            z-index: 1;
        }
        .auto-style15 {
            width: 274px;
            height: 102px;
            position: absolute;
            top: 379px;
            left: 862px;
            z-index: 1;
        }
           body{

    width: 100vw;
      display: flex;
    justify-content:center;
    align-items:center;
        }
        </style>
</head>
<body>
     <div id='container' style='width: 100%;'>
    <form id="form1" runat="server">
      
    

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">   
                    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NACCUGSoft Online</h1>
                    <strong></strong></td>
                  
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/OnlineRegistration.aspx" CssClass="auto-style12" ForeColor="White">Online Registration</asp:HyperLink>
&nbsp; │
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/OnlineLoanApplication.aspx" ForeColor="White">Online Loan Application</asp:HyperLink>
&nbsp; │&nbsp;
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/OnlineVisaRequest.aspx" ForeColor="White">Visa Request Statement</asp:HyperLink>
&nbsp; │&nbsp;
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/OnlineSavingsAdjustment.aspx" ForeColor="White">Savings Adjustment</asp:HyperLink>
&nbsp; │&nbsp;
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/OnlineRequestForClose.aspx" ForeColor="White">Request for Closure</asp:HyperLink>
&nbsp; │&nbsp;
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/OnlineMiniStatementLatest.aspx" ForeColor="White">Mini Statement</asp:HyperLink>
&nbsp; │&nbsp;
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/OnlineBalanceEnquiry.aspx" ForeColor="White">Balance Enquiry</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TreeView ID="TreeView1" runat="server" CssClass="auto-style14" Font-Bold="True" ForeColor="Black">
                        <Nodes>
                            <asp:TreeNode Text="Credit Union Module" Value="Credit Union Module">
                                <asp:TreeNode NavigateUrl="~/CUOnlineRegistration.aspx" Text="Online Registration" Value="Online Registration"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/Online_LoanApplication.aspx" Text="Online Loan Application" Value="Online Loan Application"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/CUOnlineVisaApplication.aspx" Text="Visa Request" Value="Visa Request"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/CUSavingsAdjustment.aspx" Text="Savings Adjustment" Value="Savings Adjustment"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/CURequestforclosure.aspx" Text="Request For Closure" Value="Request For Closure"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                    <asp:TreeView ID="TreeView2" runat="server" CssClass="auto-style15" Font-Bold="True" ForeColor="Black">
                        <Nodes>
                            <asp:TreeNode Text="Confirm the Requests" Value="Confirm the Requests">
                                <asp:TreeNode NavigateUrl="~/ConfirmLoanApplied.aspx" Text="Confirm Loan Applied" Value="Confirm Loan Applied"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/ConfirmVisaRequest.aspx" Text="Comfirm Visa Request" Value="Comfirm Visa Request"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/ConfirmSavingsAdjustment.aspx" Text="Confirm Savings Adjustment" Value="Confirm Savings Adjustment"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                    <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="White" NavigateUrl="~/LoginScreen.aspx">Exit from the system</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h1>Welcome SOFORA CCU Online</h1>
                       
                    <strong>&nbsp;<img alt="" class="auto-style8" longdesc="http://localhost:26530/gtucculogoc.jpe" src="gtucculogoc.jpe" /></strong></td>
            </tr>
            <tr>
                <td class="auto-style5">Copy Right New Vision Technologies</td>
            </tr>
        </table>
     
    </form>
           </div>
</body>
</html>
