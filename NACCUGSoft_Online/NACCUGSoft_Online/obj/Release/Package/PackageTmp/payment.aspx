<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="NACCUGSoft_Online.payment" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css?parameter=1"
        rel="stylesheet">
    <%--Add the css reference here--%>
    <link href="../css/simple-sidebar.css" rel="stylesheet" type="text/css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script>
        $(document).ready(function () {
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("active");
            });
        });
    </script>


    <style>
        #wrapper.active #sidebar-wrapper
        {
            left: 50px;
        }
    </style>

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
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar">
                    </span>
                </button>
                <a class="navbar-brand" href="/">Sales & Inventory Management System</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
<%--                <li><a href="/">Home</a></li>
                    <li><a href="/Home/About">About</a></li>
                    <li><a href="/Home/Contact">Contact</a></li>--%>
        <li>
          <a href="RegistrationUI.aspx">Product Registration</a>
        </li>

         <li>
          <a href="CUOnlineRegistration.aspx">Stock Update</a>
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
            </div>
        </div>
    </div>



    <div class="container body-content" style="margin-top: 50px">
    </div>
    <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul id="sidebar_menu" class="sidebar-nav" style="text-align: right; padding-right: 10px;
                padding-top: 10px">
                <li class="sidebar-brand"><a id="menu-toggle" href="#"><span id="main_icon" class="navbar-icon fa fa-bars icon">
                </span></a></li>
            </ul>
            <ul class="sidebar-nav">
                  <li class="sidebar-brand"><a href="NewDashboard.aspx"> Dashboard </a></li>
<%--                <li><a href="InvoiceForm.aspx">Home</a> </li>
                <li><a href="payment.aspx">About</a> </li>
                <li><a href="MiniStatementUI.aspx">Contact</a> </li>--%>
            <li>        
            <a href="InvoiceListing.aspx">Invoice Form </a>
        </li>
         <li>
          <a href="ReceiptListing.aspx">Posting Form </a>
        </li>
           <li>
          <a href="MiniStatementUI.aspx">Product Statement View</a>
        </li>
        <li>
          <a href="TransactionEnquiry.aspx">Product Enquiry </a>
        </li>
         <li>
          <a href="#">Buy Cash Power</a>
        </li>
        <li>
          <a href="#">Buy Airtime </a>
        </li>
          <li>
          <a href="REPInvoice.aspx">Invoice Report </a>
        </li>
         <li>
          <a href="TransactionsReport.aspx">Transactions Report </a>
        </li>
           <li>
          <a href="ProductReport.aspx">Product Report</a>
        </li>
         <li>
          <a href="CustomerReport.aspx">Customer Report</a>   
        </li> 
         <li>
          <a href="AssetRegisterReport.aspx">Asset Register Report</a>   
        </li> 
        <li>
          <a href="SupplierReport.aspx">Supplier Report</a>   
        </li>
        <li>
          <a href="ChangePinCode.aspx">Change Password</a>  
        </li> 
         <li>
          <a href="NewLoginUI.aspx">Sign Out</a>
        </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <br />
            <br />
            <hr />

         <div>


       <form id="form1" runat="server" align="center">
            <asp:Panel ID="pnlPopup" runat="server" align="center" Width="60%" Height="80%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove">
  
        <h2>Posting</h2>
        <div id="container">
            Note: Enter the Quantity number and click enter button or click Loan details button to display the product information
           <br>
            <br>
             <p>
               
                 <label>
                    Select Product <br>
                     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="GetProducts" DataTextField="prod_name" DataValueField="product_id" Width="208px" OnSelectedIndexChanged="Submitt_Click" OnTextChanged="Submitt_Click"></asp:DropDownList>
                     <asp:SqlDataSource ID="GetProducts" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [prod_code], [prod_name], [product_id] FROM [products] ORDER BY [prod_name]"></asp:SqlDataSource>                 </label>
                <br>
                        <button id ="btnSubmitt"  runat="server" name ="btnSubmitt" onserverclick="Submitt_Click" class="auto-style2">LOAD DETAILS</button>

                <label>
                    Quantity<br>
                    <asp:TextBox ID="TextBox8" runat="server" BorderColor="Black" OnTextChanged="Submitt_Click">1</asp:TextBox>
                     </label>
                <label>
                    Customer<br>
                       <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="fullname" DataValueField="custcode" Height="25px" Width="200px" ></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalesManagementConnectionString %>" SelectCommand="SELECT custcode, LTRIM(RTRIM(fname)) + ' ' + LTRIM(RTRIM(mname)) + ' ' + LTRIM(RTRIM(lname)) AS fullname FROM CustomerRegistration"></asp:SqlDataSource>
                 <asp:SqlDataSource ID="CustomerData" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [customerID], [CustomerName] FROM [Customer] ORDER BY [CustomerName]"></asp:SqlDataSource>
                </label>
                   </p>
               <p>
                <label>
                    Customer Address<br>
                      <asp:TextBox ID="CustomerAddress" runat="server" BorderColor="Black" ></asp:TextBox>
                   </label>   

                    <label>
                    Transaction Narrative<br>
                        <asp:TextBox ID="TextBox9" runat="server" Text="Receipt Transaction" BorderColor="Black"></asp:TextBox>
                   </label>                     
                  <label>
                     Selling Price<br>
                      <asp:TextBox ID="TextBox10" runat="server" BorderColor="Black" BackColor="Yellow" Height="25px" Width="200px"></asp:TextBox>
                     </label>
                       </p>


                       <p>
                    <label>
                    Total Amount<br>
                        <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black"></asp:TextBox>
                     </label>   
                 <label>
                    Rceipt Date<br>
                     <asp:TextBox ID="TextBox6" type="date" runat="server" BorderColor="Black" BackColor="#FFFF66" Height="25px" Width="200px"></asp:TextBox>
                 </label>
                                 
                 <label>
                    Receipt Number<br>
                     <asp:TextBox ID="TextBox7" runat="server" BorderColor="Black"></asp:TextBox>
                </label> 
                               
                </p>
                 <p>
                     <label>
                    Cost Price<br>
                         <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BackColor="#FFFF66" ></asp:TextBox>
                     </label>
                    <label>
                    Discount Price<br>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" OnTextChanged="Submitt_Click" >0.00</asp:TextBox>
                    </label>   
                    <label>
                    Profit Generated<br>
                      <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" ></asp:TextBox>
                   </label>                                    
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Add to Grid" OnClick="Button1_Click1" />
               <%--<button id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">Add it to Grid</button>--%>
            </p>
             <p>
                <asp:GridView ID="GridView1" runat="server" Width="789px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>       
            </p>
           <p>
             <label>
                    Check to Print Receipt<br>
                <asp:CheckBox ID="CheckBox1" runat="server" />
                </label>
               <button id ="Save"  runat="server" name ="Save" onserverclick="Save_Click">Save! </button>
               <%--<asp:Button ID="Button3" runat="server" Text="Save" OnClick="Button3_Click" onserverclick="Button3_Click" />--%>
               <asp:Button ID="Button4" runat="server" Text="Clear Grid" OnClick="Button4_Click" />
             </p>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
        </div>
                </asp:Panel>
    </form>

<%--        <footer>
        <div  class="auto-style1"> <a href="http://www.newvision.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style1"> <a href="https://www.facebook.com/naccug/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style1">Contact Us 7833358 / 9138402</div>
       <div class="auto-style1"">Copyright New Vision Technologies Ltd 2022</div>
     </footer>--%>
</body>
</html>
