<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewMenuUI.aspx.cs" Inherits="NACCUGSoft_Online.NewMenuUI" %>

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
        .auto-style2 {
            text-align: center;
            width: 210px;
        }
    </style>
</head>
<body>
  <section class="navigation">
  <div class="nav-container">
    <div class="brand">
      <a href="#!">Sofora Online</a>
    </div>
    <nav class="signout"> Sign Out
         <a href="newLoginUI.aspx"></a>
    </nav>
    <nav class="primary-nav">
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
      <ul class="nav-list">
        <li>
          <a href="RegistrationUI.aspx">Registration</a>
        </li>
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
          <a href="OnlineMiniStatementLatest.aspx">Mini Statement </a>
        </li>
        <li>
          <a href="OnlineBalanceEnquiry.aspx">Balance Enquiry</a>
        </li>
      </ul>
    </nav>
  </div>
</section>

     <%-- <div
      class="fontawesome-align-center">
      <div
        class="fontawesome-align-center">
        <h3 class="auto-style1">WELCOME TO SOFORA CCU</h3>
          <img alt="" class="auto-style1" longdesc="http://localhost:26530/gtucculogoc.jpe" src="gtucculogoc.jpe" />--%>

    <form id="form1" runat="server">
            <tr>
                <td class="auto-style4">
                    <h1 class="auto-style1">Welcome TO The Mainmenu</h1>
                       
                    <strong>&nbsp;</strong></td>
            </tr>
                       
                    <strong><img alt="" class="auto-style1" longdesc="http://localhost:26530/gtucculogoc.jpe" src="gtucculogoc.jpe" /></strong></form>
<%--     </div>
     </div>--%>
     <footer>
        <div class="auto-style1">Copyright Naccug 2020</div>
        <div class="auto-style1">Contact Us 7833358 / 9138402</div>
        <div class="auto-style1"> <a href="http://www.naccug.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div class="auto-style1"> <a href="https://www.facebook.com/naccug/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
    </footer>
</body>
</html>
