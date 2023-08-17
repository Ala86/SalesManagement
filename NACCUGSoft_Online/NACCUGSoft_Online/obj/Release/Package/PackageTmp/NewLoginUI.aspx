<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewLoginUI.aspx.cs" Inherits="NACCUGSoft_Online.NewLoginUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

     <%--<script language="C#" runat="server">

      protected void Submit_Click(object sender, EventArgs e)
      {  
        Response.Write("HTML Server Control Button...");
      }
      
    </script>--%>
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Login</title>
     <link rel="Stylesheet" href="Content/Login.less" type="text/css" />
      <style type="text/css">
          .auto-style1 {
              width: 230px;
              height: 134px;
          }
          .auto-style2 {
              font-size: large;
              text-align: center;
              height: 32px;
          }
      </style>
</head>
<body>
    <div
      class="signup-bg d-flex flex-column justify-content-center align-items-center">
      <div
        class="signup-modal col-11 col-sm-6 col-md-5 d-flex flex-column justify-content-center align-items-center">
        <h3 class="signup-heading text-center">WELCOME TO SALES AND INVENTORY MANAGEMENT SYSTEM!<span> </span></h3>
          <p class="auto-style2"><strong><em>Sales And Inventory Management System</em></strong></p>
          <img alt="" class="auto-style1" longdesc="http://localhost:26530/gtucculogoc.jpe" src="Sales-and-Inventory-System-.jpg" />
        <form runat="server" class="signup-form">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="256px">
                <asp:ListItem Selected="True" Value="1">Normal Users</asp:ListItem>
                <asp:ListItem Value="0">System Admin</asp:ListItem>
            </asp:RadioButtonList>

            <div class="form-group">
                <strong>User Name </strong>
                    <asp:TextBox ID="name"  placeholder="Eg. 2207996556" name="name" aria-hidden="False" autofocus="autofocus" class="form-control signup-form-input" runat="server"  BorderColor="Black" BackColor="#FFFF66"></asp:TextBox>
                <strong>Password </strong>
              <asp:TextBox ID="password" class="form-control signup-form-input" placeholder=" " type="password" runat="server"  BorderColor="Black" BackColor="#FFFF66"></asp:TextBox>
           </div>
          <div class="form-group">
            <button  id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click" class="get-started-btn">Login </button>
     <%--       <button id ="btnSubmitt" runat="server" name ="btnSubmitt" onserverclick="Submitt_Click" class="get-started-btn">Member Registration</button>--%>
          <%-- <button id ="btnInd" runat="server" name ="btnInd" onserverclick="Submittt_Click" class="get-started-btn">Individual Member Registration</button>--%>
          </div>
        </form>
      </div>
    </div>
    <footer>
        <div> <a href="http://www.agm.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div> <a href="https://www.facebook.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div>Contact Us 2790316 / 9567888</div>
        <div>Copyright New Vision Technologies Ltd 2022</div>
         </footer>
  </body>
</html>
