<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashboardUI.aspx.cs" Inherits="NACCUGSoft_Online.DashboardUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link rel="Stylesheet" href="Content/Site.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 408px;
            width: 881px;
            margin-left: 14px;
        }
        </style>
</head>
<body>

 <section class="navigation">
  <div class="nav-container">
    <div class="brand">
      <a href="RegistrationUI.aspx"><span class="auto-style3">Sales & Inventory</span></a>
    </div>
    <nav class="primary-nav">
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
           <ul class="nav-list">
        <li>
          <a href="RegistrationUI.aspx" style="background: #2581DC;">Product & Service Registration</a>
        </li>
        <li>
          <a href="CUOnlineRegistration.aspx">Stock Update</a>
        </li>
        <li>
          <a href="InvoiceForm.aspx">Invoice Form </a>
        </li>
         <li>
          <a href="payment.aspx">Posting Form </a>
        </li>
           <li>
          <a href="MiniStatementUI.aspx">Product Statement View</a>
        </li>
        <li>
          <a href="TransactionEnquiry.aspx">Product Enquiry </a>
        </li>
        <li>
          <a href="createuser.aspx">User Creation</a>
        </li>
         <li>
          <a href="RegistrationUIEx.aspx">Supplier Management</a>
        </li>
         <li>
          <a href="RegistrationUIInd.aspx">Customer Management</a>
        </li>
         <li>
          <a href="RegistrationUIEdit.aspx">Asset Management</a>
        </li>
         <li>
          <a href="NewLoginUI.aspx">Sign Out</a>
        </li>
      </ul>
    </nav>
  </div>
</section>

     <div>
    <form id="form1" runat="server">

        <main role="main" class="container">
        <div id="jumbotron">
            <h1 class="header" style="margin-left: 0px">&nbsp;&nbsp; Welcome to SITTA'S PASTRIES AND CATERING SERVICE</h1>
             <img alt="" class="auto-style1" longdesc="http://localhost:26530/gtucculogoc.jpe" src="Sales-and-Inventory-System-.jpg" />

<%--          <h4>Sub Menu for CUs</h4>
            <a class="btn btn-lg btn-primary" href="CUOnlineRegistration.aspx" role="button">Member Registration »</a>
              <a class="btn btn-lg btn-primary" href="Online_LoanApplication.aspx" role="button">Loan Application »</a>
              <a class="btn btn-lg btn-primary" href="CUOnlineVisaApplication.aspx" role="button">Visa Request Statement »</a>
              <a class="btn btn-lg btn-primary" href="CUSavingsAdjustment.aspx" role="button">Savings Adjustment »</a>
              <a class="btn btn-lg btn-primary" href="CURequestforclosure.aspx" role="button">Request for Closure »</a>--%>
              
          <h4>Sub Menu for Report</h4>
              <a class="btn btn-lg btn-primary" href="REPInvoice.aspx" role="button" media="tv">Invoice / Receipt Report »</a>
              <a class="btn btn-lg btn-primary" href="TransactionsReport.aspx" role="button">Transaction Enquiry »</a>
              <a class="btn btn-lg btn-primary" href="ProductReport.aspx" role="button">Product Report »</a> 
             <a class="btn btn-lg btn-primary" href="ChangePinCode.aspx" role="button">Change your Password»</a> 
              </div>
    </main>
    </form>
</div>
  

</body>
</html>
