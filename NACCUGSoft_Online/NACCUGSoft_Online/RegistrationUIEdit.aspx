<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationUIEdit.aspx.cs" Inherits="NACCUGSoft_Online.RegistrationUIEdit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
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

         <div>


    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:Button ID="btnShow" runat="server" onserverclick="btnShow_Click" Text="INSERT NEW ASSET" Width="200px" Height="40" BackColor="#3333FF" ForeColor="White" />
<br>
 <br>


 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ObjectDataSource1" Height="57px" Width="1336px" AllowPaging="True">
                  <Columns>
                      <asp:CommandField ShowEditButton="True" />
                      <asp:BoundField DataField="assetid" HeaderText="Asset ID" SortExpression="assetid" ReadOnly="true"/>
                      <asp:BoundField DataField="assetcode" HeaderText="Asset Code" SortExpression="assetcode" />
                      <asp:BoundField DataField="assetname" HeaderText="Asset Name" SortExpression="assetname" />
                      <asp:BoundField DataField="buyingprice" HeaderText="Buying Price" SortExpression="buyingprice" />
                      <asp:BoundField DataField="leadtime" HeaderText="Lead Time" SortExpression="leadtime" />
                      <asp:BoundField DataField="assetspec" HeaderText="Asset Spec" SortExpression="assetspec" />
                      <asp:BoundField DataField="salvagevalue" HeaderText="Salvage Value" SortExpression="salvagevalue" />
                      <asp:BoundField DataField="assetlocation" HeaderText="Asset Location" SortExpression="assetlocation" />
                      <asp:BoundField DataField="AssetDate" HeaderText="Asset Date" SortExpression="AssetDate" />
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
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllcustomers" TypeName="NACCUGSoft_Online.AssetUpdate" UpdateMethod="UpdateAssets">
                  <UpdateParameters>
                      <asp:Parameter Name="assetid" Type="Int32" />
                      <asp:Parameter Name="assetcode" Type="String" />
                      <asp:Parameter Name="assetname" Type="String" />
                      <asp:Parameter Name="buyingprice" Type="Double" />
                      <asp:Parameter Name="leadtime" Type="Int32" />
                      <asp:Parameter Name="assetspec" Type="String" />
                      <asp:Parameter Name="salvagevalue" Type="Double" />
                      <asp:Parameter Name="assetlocation" Type="String" />
                      <asp:Parameter Name="AssetDate" Type="DateTime" />
                  </UpdateParameters>
              </asp:ObjectDataSource>



<!-- ModalPopupExtender -->
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="pnlPopup" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>

         <asp:Panel ID="pnlPopup" runat="server" align="center" Width="60%" Height="60%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove" CssClass="active right">
 
        <h2>Asset Registration</h2>
          <div id="container">
            <p>
               
                <label>
                    Asset Code<br>
                       <asp:TextBox ID="assetcode" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                </label>                
                
                 <label>
                    Category<br>
                     <asp:DropDownList ID="category" BorderColor="Black" runat="server" Width="200px" Height="30">
                            <asp:ListItem>001</asp:ListItem>
                             <asp:ListItem>002</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                     </asp:DropDownList>
                       </label>     
                 <label>
                    Asset Name<br>
                       <asp:TextBox ID="assetname" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                </label>   
                 <label>
                    Asset Specification<br>
                       <asp:TextBox ID="assetspec" BorderColor="Black" runat="server" Width="200" Height="30"></asp:TextBox>
                </label>       
                  </p> 
              <p>                   
                 <label>
                       Buying Price<br>
                     <asp:TextBox ID="buyingprice" BorderColor="Black" runat="server" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                     </label>     

                 <label>
                    Packaging <br>
                    <asp:TextBox ID="package" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                   </label>
                     <label>
                     Supplier<br>
                      <asp:DropDownList ID="supplier" BorderColor="Black" runat="server" Width="200px" Height="30px" DataSourceID="SqlDataSource1" DataTextField="businessname" DataValueField="custcode">
                      </asp:DropDownList>   
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalesManagementConnectionString %>" SelectCommand="SELECT [custcode], [businessname] FROM [OnlineRegistration] ORDER BY [businessname]"></asp:SqlDataSource>
                    </label>
                   <label>
                    Registration Date<br>
                     <asp:TextBox ID="assetdate" BorderColor="Black" type ="date" runat="server" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                  </label>
                  </p>  
               <p> 
                 <label>
                    Lead Times (Days)<br>
                     <asp:TextBox ID="leadtime" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                    </label> 

            
                 <label>
                    Dep. Method<br>
                     <asp:DropDownList ID="depMethods" BorderColor="Black" runat="server" Width="200px" Height="30">
                            <asp:ListItem>001</asp:ListItem>
                             <asp:ListItem>002</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                     </asp:DropDownList>
                       </label>                 
                <label>
                    Dep. Life Years<br>
                     <asp:TextBox ID="deplife" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                </label>           
                     <label>
                    Salvage Value<br>
                           <asp:TextBox ID="salvagevalue" runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                </label>    
            </p>
                 <p>    
                 <label>
                    Asset Location<br>
                     <asp:TextBox ID="assetlocation" runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                   </label>
                     </p>
                <p>
             
                  <button  id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">SAVE</button>
                   <asp:Button ID="btnClose" runat="server" Text="Close" />
                    </p>
           </div>

             </asp:Panel>
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