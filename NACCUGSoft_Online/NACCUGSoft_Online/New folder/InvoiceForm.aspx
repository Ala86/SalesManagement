<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="withdrawalForm.aspx.cs" Inherits="NACCUGSoft_Online.withdrawalForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Withdrawal Form</title>
    <link rel="Stylesheet" href="Content/Site.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 6px;
            text-align: center;
        }
        .auto-style2 {
            width: 160px;
            margin-right: 2px;
        }
        .auto-style3 {
            font-size: x-large;
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
          <a href="withdrawalForm.aspx">Posting Form </a>
        </li>
           <li>
          <a href="MiniStatementUI.aspx">Member Statement View</a>
        </li>
        <li>
          <a href="TransactionEnquiry.aspx">Member Enquiry </a>
        </li>
        <li>
          <a href="#!">User Creation</a>
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
        <h2>Payment Form</h2>
        <div id="container">
            <p>
                 <label>
                    Select Member <br>
                     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EditMem" DataTextField="businessname" DataValueField="custcode" Width="208px" OnTextChanged="DropDownList1_TextChanged"></asp:DropDownList>
                     <asp:SqlDataSource ID="EditMem" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [businessname], [custcode] FROM [OnlineRegistration]"></asp:SqlDataSource>
                    </label>
                    <label>
                    Member Name<br>
                        <asp:TextBox ID="bname" runat="server" BorderColor="Black" ></asp:TextBox>
                </label>
                <label>
                    Member Address<br>
                     <asp:TextBox ID="baddress" runat="server" BorderColor="Black" ></asp:TextBox>
                </label>
                 <label>
                    Phone Number <br>
                      <asp:TextBox ID="phonenumber" runat="server" BorderColor="Black" ></asp:TextBox>
                   </label>       
                
            </p>
            <p>
                <br>
                        <button id ="Button1"  runat="server" name ="btnSubmitt" onserverclick="Submitt_Click" class="auto-style2">LOAD DETAILS</button>
                                <label>
                    Posting Amount<br>
                         <asp:TextBox ID="tranamount" runat="server" BorderColor="Black" BackColor="#FFFF66" ></asp:TextBox>
                     </label>
                     <label>
                    Reference Number<br>
                    <asp:TextBox ID="refnumber" runat="server" BorderColor="Black" ></asp:TextBox>
                </label>   
                                <label>
                    Balance<br>
                    <asp:TextBox ID="balance" runat="server" BorderColor="Black" ></asp:TextBox>
                    </label>                  
            </p>
            <p>
                  <label style="visibility:hidden">
                    number<br>
                    <input type="number" name="pnumber" id="pnumber" placeholder="123456789" >
                </label>      
                <label>
                    Transaction Date<br>
                    <asp:TextBox ID="trandate" type="date" runat="server" BorderColor="Black" BackColor="#FFFF66" ></asp:TextBox>
                </label>
                 <label>
                    Transaction Narrative<br>
                    <asp:TextBox ID="trandesc" runat="server" Text="Contribution" BorderColor="Black" ></asp:TextBox>
                   </label>

            </p>

            <p>
                <button id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">Post</button>
            </p>
        </div>
    </form>
        <footer>
        <div  class="auto-style1"> <a href="http://www.naccug.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style1"> <a href="https://www.facebook.com/naccug/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style1">Contact Us 7833358 / 9138402</div>
       <div class="auto-style1"">Copyright BJM Management Consultancy Ltd 2020</div>
     </footer>
</body>
</html>
