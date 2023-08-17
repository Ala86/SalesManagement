<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationUI.aspx.cs" Inherits="NACCUGSoft_Online.RegistrationUI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
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
          .modalBackground
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .modalPopup
        {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 300px;
            height: 140px;
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
  <h2>Product Registration</h2>
         <div>


    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:Button ID="btnShow" runat="server" onserverclick="btnShow_Click" Text="INSERT NEW PRODUCT" Width="200px" Height="40" BackColor="#3333FF" ForeColor="White" />
<br>
 <br>

<!-- ModalPopupExtender -->
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="pnlPopup" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>


  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ObjectDataSource1" DataKeyNames="product_id" Width="1500px" Height="40px">
                  <Columns>
                      <asp:CommandField ShowEditButton="True" />
                      <asp:BoundField DataField="product_id" HeaderText="Product ID" SortExpression="product_id" ReadOnly ="true" />
                      <asp:BoundField DataField="prod_name" HeaderText="Product Name" SortExpression="prod_name" />
                      <asp:BoundField DataField="sell_price" HeaderText="Sell Price" SortExpression="sell_price" />
                      <asp:BoundField DataField="buy_price" HeaderText="Buy Price" SortExpression="buy_price" />
                      <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                      <asp:BoundField DataField="rorder_lev" HeaderText="Reorder lev" SortExpression="rorder_lev" />
                      <asp:BoundField DataField="discontinu" HeaderText="Discount" SortExpression="discontinu" />
                      <asp:BoundField DataField="rorder_qty" HeaderText="Reorder Qty" SortExpression="rorder_qty" />
                      <asp:BoundField DataField="max_level" HeaderText="Max Level" SortExpression="max_level" />
                      <asp:BoundField DataField="totvalue" HeaderText="Total Value" SortExpression="totvalue" />
                      <asp:BoundField DataField="Serv_fee" HeaderText="Serv_fee" SortExpression="Serv_fee" />
                      <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                  </Columns>
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
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllProducts" TypeName="NACCUGSoft_Online.StockUpdate" UpdateMethod="UpdateProducts">
                  <UpdateParameters>
                      <asp:Parameter Name="product_id" Type="Int32" />
                      <asp:Parameter Name="prod_name" Type="String" />
                      <asp:Parameter Name="sell_price" Type="Decimal" />
                      <asp:Parameter Name="buy_price" Type="Decimal" />
                      <asp:Parameter Name="quantity" Type="Int32" />
                      <asp:Parameter Name="rorder_lev" Type="Int32" />
                      <asp:Parameter Name="discontinu" Type="Decimal" />
                      <asp:Parameter Name="rorder_qty" Type="Int32" />
                      <asp:Parameter Name="max_level" Type="Int32" />
                      <asp:Parameter Name="totvalue" Type="Decimal" />
                      <asp:Parameter Name="Serv_fee" Type="Decimal" />
                      <asp:Parameter Name="qty" Type="Int32" />
                  </UpdateParameters>
              </asp:ObjectDataSource>


         <asp:Panel ID="pnlPopup" runat="server" align="center" Width="80%" Height="70%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove" CssClass="active right">
 
        <h2>Product Registration</h2>
          <div id="container">
            <p>
                 <label>
                    Item Type <br>
                         <asp:DropDownList ID="itemtype" runat="server" Width="200px" BorderColor="Black" Height="30">
                             <asp:ListItem Value="1">Food</asp:ListItem>
                             <asp:ListItem Value="2">Construction</asp:ListItem>
                             <asp:ListItem Value="3">Pharamacy</asp:ListItem>
                             <asp:ListItem Value="4">Technology</asp:ListItem>
                             <asp:ListItem Value="5">Others</asp:ListItem>
                </asp:DropDownList>
                 </label>
                <label>
                    Product ID<br>
                       <asp:TextBox ID="productid" runat="server" BorderColor="Black" BackColor="#FFFF66" Height="30" Width="200"></asp:TextBox>
                </label>                
                  <label>
                    Product Name<br>
                       <asp:TextBox ID="productname" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                </label> 
                  
                <label>
                    Qty in stock<br>
                     <asp:TextBox ID="qtyinstock" runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                   </label>
                </p> 
                <p>
                      <label>
                    Total Value<br>
                       <asp:TextBox ID="totalvalue" BorderColor="Black" runat="server" Width="200" BackColor="#FFFF66" Height="30">0.00</asp:TextBox>
                </label>   
                  <label>
                      Cost Price<br>
                    <asp:TextBox ID="buyprice" BorderColor="Black" runat="server" BackColor="#FFFF66" Height="30" Width="200"></asp:TextBox>       
                  </label>
                    <label>
                       Sales Price<br>
                     <asp:TextBox ID="salesprice" BorderColor="Black" runat="server" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                     </label>             
                  <label>
                    Sales Analysis Code<br>
                       <asp:TextBox ID="salesanalysis" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                 </label>       
                      
                    </p>
              <p>
                   <label>
                      Purchase Anaylsis<br>
                     <asp:TextBox ID="panalysis" runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30">

                     </asp:TextBox>
                </label>
                   <label>
                    Category<br>
                     <asp:DropDownList ID="category" BorderColor="Black" runat="server" Width="200px" Height="30">
                            <asp:ListItem Value="1">General merchandise </asp:ListItem>
                             <asp:ListItem>Food Stuffs</asp:ListItem>
                             <asp:ListItem Value="3">Construction  Materials</asp:ListItem>
                            <asp:ListItem Value="4">Others</asp:ListItem>
                     </asp:DropDownList>
                       </label> 
                     <label>
                     Supplier<br>
                      <asp:DropDownList ID="supplier" BorderColor="Black" runat="server" Width="200px" Height="30">
                            <asp:ListItem>1</asp:ListItem>
                             <asp:ListItem>2</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                      </asp:DropDownList>   
                          </label>
                     <label>
                    Packaging <br>
                    <asp:TextBox ID="package" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                   </label>
                 
            </p>
               <p>  
                  <label>
                   Debitors Control A/C<br>
                     <asp:DropDownList ID="debitors" BorderColor="Black" runat="server" Width="200px" Height="30">
                            <asp:ListItem>956255255</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                     </asp:DropDownList>                                              
               </label>

                                 <label>
                    COGS Account<br>
                     <asp:DropDownList ID="DropDownList5" BorderColor="Black" runat="server" Width="200px" Height="30">
                            <asp:ListItem>856255255</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                     </asp:DropDownList> 
                </label>
                 <label>
                    Creditors Control A/C<br>
                      <asp:DropDownList ID="creditors" BorderColor="Black" runat="server" Width="200px" Height="30">
                            <asp:ListItem>56255255</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                      </asp:DropDownList>   
                </label>
                <label>
                    Date Join<br>
                     <asp:TextBox ID="datejoin" BorderColor="Black" type ="date" runat="server" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                </label>
                   </p>
              <p>
                 <label>
                    Max Stock Level<br>
                     <asp:TextBox ID="maxstocklevel" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                    </label>

                   <label>
                    Min Stock Level<br>
                         <asp:TextBox ID="minstocklevel" runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                </label>                 
                <label>
                    Reorder Level<br>
                     <asp:TextBox ID="reorderlevel" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                </label>           
                     <label>
                    Reorder Qty<br>
                           <asp:TextBox ID="reorderqty" runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                </label>      
                   </p>
              <p>
                  <label>
                    As of Date<br>
                    <asp:TextBox ID="asofdate" type="date" BorderColor="Black" runat="server" Width="200" Height="30"></asp:TextBox>
                  </label>

                 <label>
                    Stock Control A/C<br>
                    <asp:DropDownList ID="stockcontrol" BorderColor="Black" runat="server" Width="200px" BackColor="#FFFF66" Height="30">
                                <asp:ListItem>728956545</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>            
                 </label>
            </p>
              <p>

                  <button  id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">SAVE</button>
            </p>
           </div>
    <asp:Button ID="btnClose" runat="server" Text="Close" />
             </asp:Panel>
        <br>
        <br>
    </form>

        <footer>
        <div  class="auto-style1"> <a href="http://www.newvision.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style1"> <a href="https://www.facebook.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style1">Contact Us 9567888 / 2790316</div>
       <div class="auto-style1"">Copyright New Vision Technologies Ltd 2022</div>
     </footer>
</body>
</html>
