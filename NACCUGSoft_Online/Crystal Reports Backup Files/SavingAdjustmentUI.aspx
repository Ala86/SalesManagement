<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SavingAdjustmentUI.aspx.cs" Inherits="NACCUGSoft_Online.SavingAdjustmentUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Saving Adjustment</title>
    <link rel="Stylesheet" href="Content/Site.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 6px;
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
          <a href="withdrawalForm.aspx">Payment Form </a>
        </li>
           <li>
          <a href="MiniStatementUI.aspx">Member Statement View</a>
        </li>
        <li>
          <a href="TransactionEnquiry.aspx">Member Enquiry </a>
        </li>
        <li>
          <a href="RequestForClosureUI.aspx">User Creation</a>
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
        <h2>Saving Adjustment</h2>
        <div id="container">
            <p>
                <label>
                    Member Code<br>
                    <input type="number" id="mcode" name ="mcode" placeholder="Placeholder" value="001">
                </label>
                <label>
                    First Name<br>
                    <input type="text" id ="fname" name ="fname" placeholder="Enter First Name">
                </label>
                <label>
                    Phone Number<br>
                    <input type="number" id ="phonenumber" name ="phonenumber" placeholder="Eg +220 7996 556">
                </label>
                 <label>
                    Amount <br>
                    <input type="number" id ="amount" name ="amount" >
                </label>
            </p>
            <p>
                <label>
                    Employment Number<br>
                <input type="number" id ="enumber" name ="enumber" placeholder="Enter Employment Number" >
                </label>
                <label>
                    Middle Name<br>
                    <input type="text" id ="mname" name ="mname" placeholder="Enter Middle Name">
                </label>
                <label>
                    Job Title<br>
                    <input type="text" id ="jobtitile" name ="jobtitle" placeholder="Enter Job Title">
                </label>
            </p>
            <p>
                <label style="visibility:hidden">
                    number<br>
                    <input type="number" placeholder="123456789">
                </label>
                                <label>
                    Last Name<br>
                    <input type="text" id ="lname" name ="lname" placeholder="Enter Last Name">
                </label>
                <label>
                    Date<br>
                    <input type="date" id ="ddate" name ="ddate">
                </label>
            </p>
            <p>
                <button  id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">SAVE</button>
            </p>
        </div>
    </form>
        <footer>
        <div  class="auto-style1"> <a href="http://www.naccug.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style1"> <a href="https://www.facebook.com/naccug/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style1">Contact Us 7833358 / 9138402</div>
       <div class="auto-style1"">Copyright New vision Technologies Ltd.  2020</div>
     </footer>
</body>
</html>
