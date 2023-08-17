<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationUIEx.aspx.cs" Inherits="NACCUGSoft_Online.RegistrationUIEx" %>
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
             <h2>Supplier Registration</h2>
         <div>

    <form id="form1" runat="server">

                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:Button ID="btnShow" runat="server" onserverclick="btnShow_Click" Text="CREATE NEW SUPPLIER" Width="200px" Height="40" BackColor="#3333FF" ForeColor="White" />
<br>
 <br>
     
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ObjectDataSource1" Width="1500px" Height="40px" AllowPaging="True">
                  <Columns>
                      <asp:CommandField ShowEditButton="True" />
                      <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" />
                       <asp:BoundField DataField="businessname" HeaderText="Business Name" SortExpression="businessname" />
                      <asp:BoundField DataField="residential" HeaderText="Residential" SortExpression="residential" />
                      <asp:BoundField DataField="baddress" HeaderText="Business Address" SortExpression="baddress" />
                      <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                      <asp:BoundField DataField="cperson" HeaderText="Contact Person" SortExpression="cperson" />
                      <asp:BoundField DataField="cpersonaddress" HeaderText="Contact Address" SortExpression="cpersonaddress" />
                      <asp:BoundField DataField="cpersonphone" HeaderText="Contact Phone" SortExpression="cpersonphone" />
                      <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                      <asp:BoundField DataField="wproduct" HeaderText="Product" SortExpression="wproduct" />
                      <asp:BoundField DataField="renewdate" HeaderText="Date Join" SortExpression="datejoin" />
                      <asp:BoundField DataField="bregistrationDate" HeaderText="Registration Date" SortExpression="bregistrationDate" />
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
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllsuppliers" TypeName="NACCUGSoft_Online.SupplierUpdate" UpdateMethod="UpdateSupplier">
                  <UpdateParameters>
                      <asp:Parameter Name="id" Type="Int32" />
                      <asp:Parameter Name="businessname" Type="String" />
                      <asp:Parameter Name="residential" Type="String" />
                      <asp:Parameter Name="baddress" Type="String" />
                      <asp:Parameter Name="phone" Type="String" />
                      <asp:Parameter Name="cperson" Type="String" />
                      <asp:Parameter Name="cpersonaddress" Type="String" />
                      <asp:Parameter Name="cpersonphone" Type="String" />
                      <asp:Parameter Name="email" Type="String" />
                      <asp:Parameter Name="wproduct" Type="String" />
                      <asp:Parameter Name="renewdate" Type="DateTime" />
                      <asp:Parameter Name="bregistrationDate" Type="DateTime" />
                  </UpdateParameters>
              </asp:ObjectDataSource>


        <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="pnlPopup" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>

         <asp:Panel ID="pnlPopup" runat="server" align="center" Width="70%" Height="70%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove" CssClass="active right">
 
        <h2>Supplier Registration</h2>
        <div id="container">
            <p>
                <label>
                    Business Name<br>
                       <asp:TextBox ID="bname" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                </label>                
                 <label>
                    Resident Status <br>
                         <asp:DropDownList ID="rstatus" runat="server" Width="200px" BorderColor="Black" Height="30">
                             <asp:ListItem>Gambian</asp:ListItem>
                             <asp:ListItem>Non-Gambian</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                       </label>
                 <label>
                    Region<br>
                     <asp:DropDownList ID="Region" BorderColor="Black" runat="server" Width="200px" DataSourceID="regionString" DataTextField="regionname" DataValueField="regionid" Height="30"></asp:DropDownList>
                        <asp:SqlDataSource ID="regionString" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [regionid], [regionname] FROM [regions]"></asp:SqlDataSource>
                        </label>              
      
                  <label>
                       Branch<br>
                      <asp:DropDownList ID="branch" BorderColor="Black" runat="server" Width="200px" DataSourceID="SqlDataSource1" DataTextField="br_name" DataValueField="branchid" Height="30">
                            </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [branchid], [br_name] FROM [branch]"></asp:SqlDataSource>
             </label>
                      </p>
            <p> 
              
                 <label>
                    Nature of the Business <br>
                     <asp:DropDownList ID="bnature" BorderColor="Black" runat="server" Width="200px" DataSourceID="BizCatSqlDataSource" DataTextField="cat_name" DataValueField="bus_id" BackColor="#FFFF66" Height="30"></asp:DropDownList>
                     <asp:SqlDataSource ID="BizCatSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [bus_id], [cat_name] FROM [bizcat]"></asp:SqlDataSource>
                   </label>
                     <label>
                      District<br>
                      <asp:DropDownList ID="district" BorderColor="Black" runat="server" DataSourceID="DistrctSqlDataSource" DataTextField="COUN_NAME" DataValueField="COUN_ID" Width="200px" Height="30"></asp:DropDownList>   
                      <asp:SqlDataSource ID="DistrctSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [COUN_ID], [COUN_NAME] FROM [county]"></asp:SqlDataSource>
                  </label>
                 
                                  
                <label>
                    Date Join<br>
                     <asp:TextBox ID="datejoin" BorderColor="Black" type ="date" runat="server" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                </label>
                 <label>
                    Tin Number<br>
                     <asp:TextBox ID="tin" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                    </label>
                </p>
               <p> 
                   <label>
                    Registration Date<br>
                         <asp:TextBox ID="rdate" type ="date"  runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                </label>  
 
                <label>
                    Renewal Date<br>
                     <asp:TextBox type ="date" ID="renewaldate" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                </label>           
                     <label>
                    Phone Number<br>
                           <asp:TextBox ID="phonenumber" runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                </label>                      

                <label>
                    Indentification Type<br>
                    <asp:DropDownList ID="idtype" runat="server" BorderColor="Black" DataSourceID="IdtypeSqlDataSource" DataTextField="id_name" DataValueField="idtype" Width="200px" Height="30"></asp:DropDownList>
                <asp:SqlDataSource ID="IdtypeSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [idtype], [id_name] FROM [id_type]"></asp:SqlDataSource>
                   </label>
                </p>
            <p>
                  <label>
                    Place Issued<br>
                       <asp:TextBox ID="pissued" BorderColor="Black" runat="server" Width="200" Height="30"></asp:TextBox>
                </label>
                <label>
                    Identification Number<br>
                    <asp:TextBox ID="idnumber" BorderColor="Black" runat="server" Width="200" Height="30"></asp:TextBox>
                  </label>

                <label>
                       Date Issued<br>
                     <asp:TextBox ID="dateissued" type ="date" BorderColor="Black" runat="server" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                     </label>   
          
                  <label>
                    Date Expired<br>
                       <asp:TextBox ID="dexpired" type ="date" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="30"></asp:TextBox>
                 </label>              
                </p>
            <p>
                 <label>
                    Country<br>
                     <asp:DropDownList ID="country" BorderColor="Black" runat="server" Width="200px" DataSourceID="CountrySqlDataSource" DataTextField="cou_name" DataValueField="cou_id" Height="30"></asp:DropDownList>                   
                           
                 <asp:SqlDataSource ID="CountrySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [cou_id], [cou_name] FROM [country]"></asp:SqlDataSource>
               </label>
                     <label>
                      City<br>
                     <asp:DropDownList ID="city" BorderColor="Black" runat="server" DataSourceID="CitySqlDataSource" DataTextField="city_name" DataValueField="city_id" Width="200px" Height="30"></asp:DropDownList>        
                 <asp:SqlDataSource ID="CitySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" SelectCommand="SELECT [city_id], [city_name] FROM [city]"></asp:SqlDataSource>
                   </label>
                <label>
                      Email Address<br>
                     <asp:TextBox ID="email" runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                </label>
                 <label>
                    Website Address<br>
                       <asp:TextBox ID="web" runat="server" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                </label>
            </p>           
            <p>
                <label>
                    Contact Person<br>
                      <asp:TextBox ID="cperson" runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                </label>

                  <label>
                  Contact Person Address<br>
                         <asp:TextBox ID="cpersonaddress" runat="server" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                    </label>
                  <label>
                   Contact Person Phone Number<br>
                        <asp:TextBox ID="cpersonPhone" runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
                </label>

                <label>
                    Business Address<br>
                    <asp:TextBox ID="baddress" runat="server" BackColor="#FFFF66" BorderColor="Black" Width="200" Height="30"></asp:TextBox>
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
       <div class="auto-style1"">New Vision Technologies Ltd 2022</div>
     </footer>
</body>
</html>
