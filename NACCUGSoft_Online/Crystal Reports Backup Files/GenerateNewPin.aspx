<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateNewPin.aspx.cs" Inherits="NACCUGSoft_Online.GenerateNewPin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Dashboard</title>
    <link rel="Stylesheet" href="Content/Site.less" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        </style>
</head>
<body>
<section class="navigation">
  <div class="nav-container">
    <div class="brand">
      <a href="RegistrationUI.aspx"><span class="auto-style3">AGM Membership Management System</span></a>
    </div>
    <nav class="primary-nav">
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
           <ul class="nav-list">
        <li>
          <a href="RegistrationUI.aspx" style="background: #2581DC;">Business Registration</a>
        </li>
        <li>
          <a href="RegistrationUIEdit.aspx">Edit Member Details</a>
        </li>
        <li>
          <a href="InvoiceForm.aspx">Invoice Form </a>
        </li>
         <li>
          <a href="payment.aspx">Payment Form </a>
        </li>
           <li>
          <a href="MiniStatementUI.aspx">Member Statement View</a>
        </li>
        <li>
          <a href="TransactionEnquiry.aspx">Member Enquiry </a>
        </li>
        <li>
          <a href="createuser.aspx">User Creation</a>
        </li>
         <li>
          <a href="BalanceEnquiryUI.aspx">Balance Enquiry</a>
        </li>
         <li>
          <a href="NewLoginUI.aspx">Sign Out</a>
        </li>
      </ul>
    </nav>
  </div>
</section>

    <form id="form1" runat="server">
      <h2>Generate a New PIN</h2>
        <div id="container">
            <p>        
                    <label>
                    Mobile or Member Number<br>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                         </label>
                 <label> 
                     Full Name<br>
                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                     </label>
                    </p>
            <p>
              <br>
             <button id ="btnSubmitt" runat="server" name ="btnSubmitt" onserverclick="Submitt_Click" class="get-started-btn">Confirm the Member</button>
                 </p>
            
   <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <asp:DropDownList ID="ddlLength" runat="server">
                <asp:ListItem Text="5" Value="5" />
                <asp:ListItem Text="8" Value="8" />
                <asp:ListItem Text="10" Value="10" />
            </asp:DropDownList>
        </td>
        <td>
            <asp:RadioButtonList ID="rbType" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="Alphanumeric" Value="1" Selected="True" />
                <asp:ListItem Text="Numeric" Value="2" />
            </asp:RadioButtonList>
        </td>
        <td>
            <asp:Button ID="btnGenerate" Text="Generate OTP" runat="server" OnClick="GenerateOTP" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td colspan="3">
            OTP:
            <asp:Label ID="lblOTP" runat="server" />
        </td>
    </tr>
                
</table>
            <p>
     <button  id ="Button2"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">Update the New PIN </button>  
                </p>      
        </div>
    </form>
         <footer>
        <div class="auto-style1"> <a href="http://www.naccug.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div class="auto-style1"> <a href="https://www.facebook.com/naccug/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div class="auto-style1">Contact Us 7833358 / 9138402</div>
        <div class="auto-style1">Copyright New Vision Technologies Ltd 2020</div>
         </footer>
</body>
</html>
