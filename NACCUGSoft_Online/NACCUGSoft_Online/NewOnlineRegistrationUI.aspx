<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewOnlineRegistrationUI.aspx.cs" Inherits="NACCUGSoft_Online.NewOnlineRegistrationUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Online Registration</title>
    <link rel="Stylesheet" href="Content/Site.css" type="text/css" />
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
      <a href="DashboardUI.aspx">Sofora Online</a>
    </div>
    <nav class="signout">Sign Out</nav>
    <nav class="primary-nav">
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
      <ul class="nav-list">
       <li>
          <a href="NewOnlineRegistrationUI.aspx" style="background: #2581DC;">Loan Application</a>
        </li>
        <li>
          <a href="VisaRequestUI.aspx">Visa Request Statement </a>
        </li>
        <li>
          <a href="SavingAdjustmentUI.aspx">Savings Adjustment </a>
        </li>
        <li>
          <a href="RequestForClosureUI.aspx">Request for Closure</a>
        </li>
        <li>
          <a href="TranferFormUI.aspx">Account Transfer</a>
        </li>
          <li>
          <a href="withdrawalForm.aspx">Withdrawal Form</a>
        </li>
        <li>
          <a href="MiniStatementUI.aspx">Mini Statement </a>
        </li>
        <li>
          <a href="BalanceEnquiryUI.aspx">Balance Enquiry</a>
        </li>
      </ul>
    </nav>
  </div>
</section>

    <form id="form1" runat="server">
        <h2>Loan Application</h2>
        <div id="container">
            <p>
                <label>
                    Borrower Number<br>
                    <input type="number"  id ="ccustcode" name ="ccustcode" placeholder="Placeholder" value="001">   
                </label>
                    <label>
                    Employee Number<br>
                    <input type="number"  id ="mempnumber" name ="mempnumber" placeholder="Placeholder" value="001"> 
                </label>
                <label>
                    First Name<br>
                    <input type="text"  id ="fname" name ="fname" placeholder="Enter First Name">
                </label>
                <label>
                    Branch<br>
                    <input type="text"  id ="branch" name ="branch" placeholder="Choose Branch">
                </label>
                 <label>
                    Applied Amount<br>
                    <input type="number" id ="appliedamount" name ="appliedamount" placeholder=""> 
                </label>
                <label>
                    Savings Amount<br>
                    <input type="number" id ="savingsAmount" name ="savingsAmount" placeholder=""> 
                </label>
                 <label>
                    Previous Loan Amount<br>
                    <input type="number" id ="pamount" name ="pamount" placeholder="">
                </label>
            </p>
            <p>
                <label class="radio-buttons">
                    Contract Worker<br>
                    <input type="radio" id="yes" name ="yes">
                    <label for="yes">Yes</label>
                    <input type="radio" id="no" name ="no">
                    <label for="no">No</label>
                </label>
                <label>
                    Middle Name<br>
                    <input type="text" id ="mname" name ="mname" placeholder="Enter Middle Name">
                </label>
                <label>
                    Occupation<br>
                    <input type="text" id ="occupation" name ="occupation" placeholder="Enter Occupation">
                </label>
                <label>
                    Date<br>
                    <input type="date" id ="ddate" name ="ddate">
                </label>
                <label>
                    Last Name<br>
                    <input type="text" id ="lname" name ="lname" placeholder="Enter Last Name">
                </label>
                <label>
                    Purpose<br>
                    <input type="text" id ="purpose" name ="purpose" placeholder="Enter Purpose">
                </label>
                <label>
                    Contract Ends<br>
                    <input type="date" id ="cend" name ="cend">
                </label>
            </p>
            <p>
                  <label>
                    Address Line<br>
                    <input type="text" id ="addressline" name ="addressline" placeholder="Enter Address">
                </label>
                  <label>
                    Country<br>
                    <input type="text" id ="country" name ="country" placeholder="The Gambia">
                </label>
                <label>
                    Phone Number<br>
                    <input type="tel" id ="pnumber" name ="pnumber" placeholder="(+220) 456-7890">
                </label>
                <label>
                    Email<br>
                    <input type="email" id ="email" name ="email" placeholder="http://website.com">
                </label>
                <label>
                    City<br>
                    <input type="text" id ="city" name ="city" placeholder="Banjul">
                </label>
            </p>

            <p>
                  <label>
                    Guarantor Name 1<br>
                    <input type="text" id ="gname" name ="gname" placeholder="Enter Guarantor 1">
                </label>
                  <label>
                    Guarantor Contract Period<br>
                    <input type="text" id ="gperiod" name ="gperiod">
                </label>
                <label>
                    Guarantor Saving<br>
                    <input type="number" id ="gsaving" name ="gsaving" placeholder="">
                </label>
                <label>
                    Employer Number <br>
                    <input type="number" id ="enumber" name ="enumber" placeholder="">
                </label>
                <label>
                    Phone Number<br>
                    <input type="tel" id ="phonenum" name ="phonenum" placeholder="(+220) 456-7890">
                </label>
            </p>
           <%-- <p>
                <label style="visibility:hidden">
                    Email<br>
                    <input type="email" id ="temail" name ="temail" placeholder="http://website.com">
                </label>
            </p>--%>

            <p>
                  <label>
                    Guarantor Name 2<br>
                    <input type="text" id ="gname2" name ="gname2" placeholder="Enter Guarantor 2">
                </label>
                  <label>
                    Guarantor Contract Period<br>
                    <input type="text" id ="gperiod2" name ="gperiod2">
                </label>
                <label>
                    Guarantor Saving<br>
                    <input type="number" id ="gsaving2" name ="gsaving2" placeholder="">
                </label>
                <label>
                    Employer Number <br>
                    <input type="number" id ="empnumber" name ="empnumber" placeholder="">
                </label>
                <label>
                    Phone Number<br>
                    <input type="tel" id ="g2phonenumber" name ="g2phonenumber" placeholder="(+220) 456-7890">
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
       <div class="auto-style1"">Copyright BJM Management Consultant.  2020</div>
     </footer>
</body>
</html>
