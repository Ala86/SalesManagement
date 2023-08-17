<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="NewDashboard.aspx.cs" Inherits="NACCUGSoft_Online.NewDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css?parameter=1"
        rel="stylesheet">
    <%--Add the css reference here--%>
    <%-- <link rel="Stylesheet" href="Content/Site.css" type="text/css" />--%>
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
</head>
<body>

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar">
                    </span>
                </button>
                <a class="navbar-brand" href="/">Welcome to Sales & Inventory Management System</a>
            </div>
            <div class="navbar-collapse collapse">
           <ul class="nav navbar-nav">
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
        </ul>
        </div>
        </div>
    </div>


    <div class="container body-content" style="margin-top: 50px">
    </div>
    <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper" aria-haspopup="true" aria-expanded="false">
            <ul id="sidebar_menu" class="sidebar-nav" style="text-align: right; padding-right: 10px;
                padding-top: 10px">
                <li class="sidebar-brand">
                    <a id="menu-toggle" href="#">
                        <span id="main_icon" class="navbar-icon fa fa-bars icon">
                </span>

                    </a></li>
            </ul>


        <ul class="sidebar-nav">
           <li class="sidebar-brand"><a href="NewDashboard.aspx"> Dashboard </a>
         </li>
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
          <a href="CashPower.aspx">Buy Cash Power</a>
        </li>
        <li>
          <a href="airtimeUI.aspx">Buy Airtime </a>
        </li>
          <li>
          <a href="REPInvoice.aspx">Invoice Report</a>
        </li>
         <li>
          <a href="TransactionsReport.aspx">Transactions Report</a>
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
          <a href="BalanceEnquiryUI.aspx">Balance Enquiry</a>  
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
    <div>

    <form id="form1" runat="server">
        <main role="main" class="container">
        <div id="jumbotron">
            <p> <br>
            <asp:Label ID="Label1" runat="server" Text=" " Font-Bold="True" Font-Italic="True" Font-Size="14"></asp:Label></p>
             <asp:Label ID="Label2" runat="server" Text="" Font-Bold="True" Font-Italic="True" Font-Size="16"></asp:Label>
           <%-- <h1 class="header" style="margin-left: 0px">&nbsp;&nbsp; </h1>--%>
            <h4>Statistics</h4>
             <label>
                    Total Products<br>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" Enabled="False"  stlye =" width: 1000px" Height="60px" Font-Bold="True" Font-Size="Larger" Width="200px" BackColor="#CCFFFF">5</asp:TextBox>
                    </label>
                    <label>
                     Total Transactions<br>
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" BackColor="#CCFFFF">1000,00</asp:TextBox>
                    </label>
                     <label>
                     Total Transaction Volume<br>
                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" BackColor="#CCFFFF">10,000</asp:TextBox>
                    </label>
                     <label>
                     Total Revenue<br>
                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" BackColor="#CCFFFF">50,000</asp:TextBox>
                    </label>
                    <label>
                    Total Quantity<br>
                    <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" Height="60px" Enabled="False" Font-Bold="True" Font-Size="Larger" Width="200px" BackColor="#CCFFFF">60,000.00</asp:TextBox>
                    </label>
              <%--<a class="btn btn-lg btn-primary" href="REPInvoice.aspx" role="button" media="tv">Invoice / Receipt Report »</a>--%>
             <%-- <a class="btn btn-lg btn-primary" href="TransactionsReport.aspx" role="button">Transaction Enquiry »</a>
              <a class="btn btn-lg btn-primary" href="ProductReport.aspx" role="button">Product Report »</a> 
             <a class="btn btn-lg btn-primary" href="ChangePinCode.aspx" role="button">Change your Password»</a> --%>
              </div>
              <img alt="" class="auto-style1" longdesc="http://localhost:26530/gtucculogoc.jpe" />
             
              </div>
          
<%--            <div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <script src="Scripts/jquery-1.10.2.js"></script>
                <script language ="javascript">
                    $(document).ready(function () {
                        var gridHeader = $('#<%=GridView1.ClientID%>').clone(true);
                        $(gridHeader).find("tr:gt(0)").remove();
                        $('#<%=GridView1.ClientID%> tr th').each(function (i) {
                            $("th:nth-child(" + (i + 1) + ")", gridHeader).css('width', $(this).width().toString() + "px");
                        });
                        $("#GHead").append(gridHeader);
                        $('#GHead').css('position', 'absolute');
                        $('#GHead').css('top', $("#<%=GridView1.ClientID%>").offset().top());
                    });

                </script>--%>

                <p>
             <asp:Button ID="Button3" OnClick="Button3_Click" runat="server" Text="Export to Excel" />
                    
             <br>
            <br>
                     </p>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllProducts" TypeName="NACCUGSoft_Online.StockUpdate"></asp:ObjectDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" Width="1466px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="product_id" HeaderText="Product id" SortExpression="product_id" />
                    <asp:BoundField DataField="prod_name" HeaderText="ProdUCT Name" SortExpression="prod_name" />
                    <asp:BoundField DataField="sell_price" HeaderText="Sell Price" SortExpression="sell_price" />
                    <asp:BoundField DataField="buy_price" HeaderText="Buy Price" SortExpression="buy_price" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="rorder_lev" HeaderText="Rorder level" SortExpression="rorder_lev" />
                    <asp:BoundField DataField="discontinu" HeaderText="Discount" SortExpression="discontinu" />
                    <asp:BoundField DataField="rorder_qty" HeaderText="Rorder QTY" SortExpression="rorder_qty" />
                    <asp:BoundField DataField="max_level" HeaderText="Max Level" SortExpression="max_level" />
                    <asp:BoundField DataField="totvalue" HeaderText="Total Value" SortExpression="totvalue" />
                    <asp:BoundField DataField="Serv_fee" HeaderText="Service Fee" SortExpression="Serv_fee" />
                    <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
             <%--  <div style= "overflow:scroll" >
                <div id =" GHead"> </div>
                   <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllProducts" TypeName="NACCUGSoft_Online.StockUpdate"></asp:ObjectDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1071px" Height="200px" AllowPaging="True" >
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
           </div>--%>

            <div>
             <br>
             <br>
              <h4>Sub Menu for Journal Entries</h4>
              <a class="btn btn-lg btn-primary" href="JournalCreation.aspx" role="button">Create Journal »</a>
              <a class="btn btn-lg btn-primary" href="JournalPosting.aspx" role="button">Journal Verification »</a>
              <a class="btn btn-lg btn-primary" href="JournalExit.aspx" role="button">Journal Report »</a> 
             <a class="btn btn-lg btn-primary" href="ChangePinCode.aspx" role="button">Change your Password »</a> 
              </div>

    </main>
  <br>
  <br>
  <br>

              <div class="auto-style1">Copyright New Vision Technologies Ltd 2023</div>
    </form>
  </div>
</div>




              



        <!-- /#page-content-wrapper -->

</body>
</html>

 <%--<a class="btn btn-lg btn-primary" href="REPInvoice.aspx" role="button" media="tv">Invoice / Receipt Report »</a>
              <a class="btn btn-lg btn-primary" href="TransactionsReport.aspx" role="button">Transaction Enquiry »</a>
              <a class="btn btn-lg btn-primary" href="ProductReport.aspx" role="button">Product Report »</a> 
             <a class="btn btn-lg btn-primary" href="ChangePinCode.aspx" role="button">Change your Password»</a> --%>
