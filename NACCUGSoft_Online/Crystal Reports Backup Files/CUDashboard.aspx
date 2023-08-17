<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CUDashboard.aspx.cs" Inherits="NACCUGSoft_Online.CUDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
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
      <a href="CUDashboardUI.aspx">Sofora Online</a>
     </div>

    <nav class="primary-nav">
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
      <ul class="nav-list">
        <li>
          <a href="cuOnlineRegistration.aspx" style="background: #2581DC;">Online Registration</a>
        </li>
        <li>
          <a href="Online_LoanApplication.aspx">Online Loan Application </a>
        </li>
        <li>
          <a href="CUOnlineVisaApplication.aspx">Online Visa Application </a>
        </li>
        <li>
          <a href="CURequestforclosure.aspx">Online Request for Closure</a>
        </li>
        <li>
          <a href="CUSavingsAdjustment.aspx">Online Savings Adjustment</a>
        </li>
          <li>
          <a href="GenerateNewPin.aspx">Generate New PIN</a>
        </li>
        <li>
          <a href="NewLoginUI.aspx">Sign Out</a>
        </li>
      </ul>
    </nav>
  </div>
</section>

    <form id="form1" runat="server">

        <main role="main" class="container">
      <div id="jumbotron">
        <h1 class="header">Welcome Sofora CCU Online</h1>
          <img alt="" class="logo" longdesc="http://localhost:26530/gtucculogoc.jpe" src="gtucculogoc.jpe" />

      </div>
    </main>
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

