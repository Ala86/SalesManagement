<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationUIInd.aspx.cs" Inherits="NACCUGSoft_Online.RegistrationUIInd" %>
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

    <form id="form1" runat="server">
                         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:Button ID="btnShow" runat="server" onserverclick="btnShow_Click" Text="CREATE NEW CUSTOMER" Width="200px" Height="40" BackColor="#3333FF" ForeColor="White" />
<br>
 <br>   
        
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="ObjectDataSource1" Width="1500px" Height="40px" AllowPaging="True">
                  <Columns>
                      <asp:CommandField ShowEditButton="True" />
                       <asp:BoundField DataField="custcode" HeaderText="custcode" SortExpression="custcode" ReadOnly ="true"/>
                      <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                      <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
                      <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                      <asp:BoundField DataField="datejoin" HeaderText="datejoin" SortExpression="datejoin" />
                      <asp:BoundField DataField="nationality" HeaderText="nationality" SortExpression="nationality" />
                      <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                      <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                      <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                      <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
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
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllcustomers" TypeName="NACCUGSoft_Online.CustomerUpdate" UpdateMethod="UpdateCustomers" OldValuesParameterFormatString="original_{0}">
                  <UpdateParameters>
                      <asp:Parameter Name="custcode" Type="Int32" />
                      <asp:Parameter Name="fname" Type="String" />
                      <asp:Parameter Name="mname" Type="String" />
                      <asp:Parameter Name="lname" Type="String" />
                      <asp:Parameter Name="datejoin" Type="DateTime" />
                      <asp:Parameter Name="nationality" Type="Int32" />
                      <asp:Parameter Name="city" Type="String" />
                      <asp:Parameter Name="address" Type="String" />
                      <asp:Parameter Name="phone" Type="String" />
                      <asp:Parameter Name="email" Type="String" />
                  </UpdateParameters>
              </asp:ObjectDataSource>


        <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="pnlPopup" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>
         <asp:Panel ID="pnlPopup" runat="server" align="center" Width="60%" Height="60%" BackColor="#CCFFFF" BorderColor="#333300" BorderStyle="Groove" CssClass="active right">
 
        <h2>Customer Registration</h2>
        <div id="container">
            <p>
                  <label>
                 Select Member Type<br>
                <asp:DropDownList ID="memtype" runat="server" Height="25px" Width="200px">
                    <asp:ListItem Value="001">Individual</asp:ListItem>
                    <asp:ListItem Value="002">Community / Joint</asp:ListItem>
                  </asp:DropDownList>
                
             
                    <%--Select Customer type <br>
                      <select name="memtype" id="memtype"">
                        <option value="">Individual Member</option>
                        <option value="">Joint / Group Member</option>
                      </select>--%>
                </label>
                <label>
                    First Name<br>
                    <asp:TextBox ID="fname" runat="server" Height="25px" BackColor="#FFFF66" Width="200px"></asp:TextBox>
                 <%--   <input type="text" id="fname" name="fname" placeholder="">--%>
                </label>
                  <label>
                    Middle Name<br>
                      <asp:TextBox ID="mname" runat="server" Height="25px" Width="200px"></asp:TextBox>
                   <%-- <input type="text" name="mname" id="mname" placeholder="">--%>
                </label>
                  <label>
                    Last Name<br>
                      <asp:TextBox ID="lname" runat="server" Height="25px" BackColor="#FFFF66" Width="200px"></asp:TextBox>
                  <%--  <input type="text" name="lname" id="lname"  placeholder="">--%>
                </label>
                </p>

                 <p>
                <label>
                    Marital Status<br>
                    <asp:DropDownList ID="mstatus" runat="server" DataSourceID="SqlDataSource3" DataTextField="mar_name" DataValueField="mar_id" Height="25px" Width="200px"></asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SalesManagementConnectionString %>" SelectCommand="SELECT [mar_id], [mar_name] FROM [marystat]"></asp:SqlDataSource>
                    <%--<asp:TextBox ID="mstatus" runat="server" Height="25px" Width="200px"></asp:TextBox>--%>
                   <%-- <input type="text" id="mstatus" name="mstatus" placeholder="">--%>
                  <%--  <select name="mstatus" id="mstatus">
                        <option value="">Single</option>
                        <option value="">Married</option>
                      </select>--%>
                </label>
                  <label>
                    Address<br>
                      <asp:TextBox ID="Address" runat="server" Height="25px" BackColor="#FFFF66" Width="200px"></asp:TextBox>
                   <%-- <input type="text" name="Address" id="Address" placeholder="">--%>
                </label>
                 <label>
                    Nationality<br>
                     <asp:DropDownList ID="Nationality" runat="server" Height="25px" Width="200px" DataSourceID="SqlDataSource1" DataTextField="cou_name" DataValueField="cou_id"></asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalesManagementConnectionString %>" SelectCommand="SELECT [cou_id], [cou_name] FROM [country] ORDER BY [cou_name], [cou_id]"></asp:SqlDataSource>
                   <%-- <select name="Nationality" id="Nationality">
                        <option value="">Gambia</option>
                        <option value="">Senegal</option>
                      </select>--%>
                      </label>
                   <label>
                    Region<br>
                       <asp:DropDownList ID="Region" runat="server" DataSourceID="SqlDataSource4" DataTextField="regionname" DataValueField="regionid" Height="25px" Width="200px"></asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SalesManagementConnectionString %>" SelectCommand="SELECT [regionid], [regionname] FROM [regions]"></asp:SqlDataSource>
                       <%--<asp:TextBox ID="Region" runat="server" Height="25px" Width="200px"></asp:TextBox>--%>
                  <%-- <input type="text" id="Region" name="Region" placeholder="">
                    <select name="Region" id="Region">
                        <option value="">BCC</option>
                        <option value="">KM</option>
                      </select>--%>
                </label>
            </p>

<%--                 <label>
                    Ward<br>
                    <input type="text" name="ward" id="ward" placeholder="">
                    <select name="Ward" id="Ward">
                        <option value="">Ward 1</option>
                        <option value="">Ward 2</option>
                      </select>
                </label>--%>

<%--               <label>
                    Branch<br>
                    <input type="text" id="branch" name="branch" placeholder="">
                     <select name="Branch" id="Branch">
                        <option value="">Banjul</option>
                        <option value="">Serrekunda</option>
                      </select>
                </label>--%>
                <p>
                <label>
                    Title<br>
                    <asp:DropDownList ID="title" runat="server" Height="25px" Width="200px">
                        <asp:ListItem Value="001">Mr</asp:ListItem>
                        <asp:ListItem Value="002">Mrs</asp:ListItem>
                    </asp:DropDownList>
                    <%-- <input type="text" name="title" id="title" placeholder="">
                     <select name="Title" id="Title">
                        <option value="">Mr</option>
                        <option value="">Mrs</option>
                      </select>--%>
                </label>
               <label>
                    Date of Birth<br>
                   <asp:TextBox ID="dbirth" type="date" runat="server" Height="25px" Width="200px"></asp:TextBox>
                   <%-- <input type="date" name="dbirth" id="dbirth">--%>
                </label>
 <%--                   <label>
                    District<br>
                    <input type="text" name="district" id="district" placeholder="">
                    <select name="district" id="district">
                        <option value="">Jarra East</option>
                        <option value="">Jarra West</option>
                      </select>
                </label>--%>

<%--                  <label>
                  Next of Kin's Address<br>
                    <input type="text" name="nextofkinaddress" id="nextofkinaddress" placeholder="">
                </label>--%>
                
                <label>
                    Gender<br>
                    <asp:DropDownList ID="gender" runat="server" Height="25px" Width="200px">
                        <asp:ListItem Value="001">Male</asp:ListItem>
                        <asp:ListItem Value="002">Female</asp:ListItem>
                    </asp:DropDownList>
                     <%--<input type="text" name="gender" id="gender" placeholder="">
                     <select name="gender" id="gender">
                        <option value="">Male</option>
                        <option value="">Female</option>
                      </select>--%>
                </label>
                <label>
                    Registration Date <br>
                    <asp:TextBox ID="datejoin" type="date" runat="server" Height="25px" Width="200px"></asp:TextBox>
               <%--     <input type="date" name="datejoin" id="datejoin">--%>
                </label>
              </p>
            <p>
                <label>
                    Residential type<br>
                    <asp:DropDownList ID="Residential" runat="server" Height="25px" Width="200px">
                        <asp:ListItem Value="001">Gambian</asp:ListItem>
                        <asp:ListItem Value="002">Non-Gambian</asp:ListItem>
                </asp:DropDownList>
<%--                    <select name="Residential" id="Residential">
                        <option value="">Residentail </option>
                        <option value="">Non Residentail</option>
                      </select>--%>
                </label>
                  <label>
                    Identification Type<br>   
                      <asp:DropDownList ID="idtype" runat="server" Height="25px" Width="200px" DataSourceID="SqlDataSource2" DataTextField="id_name" DataValueField="idtype"></asp:DropDownList>                            
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SalesManagementConnectionString %>" SelectCommand="SELECT [idtype], [id_name] FROM [id_type] ORDER BY [id_name]"></asp:SqlDataSource>
                   <%-- <select name="idtype" id="idtype">
                        <option value="">PassPort</option>
                        <option value="">ID card</option>
                        <option value="">Birth Certificate</option>
                      </select>--%>
                </label>
                  <label>
                    Place Issued<br>
                      <asp:TextBox ID="pissued" runat="server" Height="25px" Width="200px"></asp:TextBox>
                   <%-- <input type="text" name="pissued" id="pissued" placeholder="">--%>
                </label>
                <label>
                    Date Expired<br>
                    <asp:TextBox ID="dexpired" type="date" runat="server" Height="25px" Width="200px"></asp:TextBox>
                   <%-- <input  name="dexpired" id="dexpired" type="date">--%>
                </label>
             </p>
            <p>
                <label>
                    Identification Number<br>
                    <asp:TextBox ID="idnumber" runat="server" Height="25px" Width="200px"></asp:TextBox>
                  <%--  <input type="text" name="idnumber" id="idnumber"  placeholder="">--%>
                </label>
               <%-- <label>
                    Membership type<br>
                                     
                    <select name="Membership" id="Membership">
                        <option value="">New Member</option>
                        <option value="">Old Member</option>
                      </select>
                
                </label>

                <label>
                    Number of Dependance<br>
                    <input type="number" name="Dependance" id="Dependance" placeholder="">
                </label>--%>
                <label>
                    Date Issued<br>
                    <asp:TextBox ID="dateissued" type="date" runat="server" Height="25px" Width="200px"></asp:TextBox>
                   <%-- <input type="date" name="dateissued" id="dateissued">--%>
                </label>

                <%-- <label>
                    Country<br>
                                     
                    <select name="Country" id="Country">
                        <option value="">Gambia</option>
                        <option value="">Senegal</option>
                      </select>
                                     </label>--%>

               <%-- <label>
                    Referee Name<br>
                    <input type="text" name="refname" id="refname" placeholder="">
                </label>
                <label>
                    Next of kin Name<br>
                    <input type="text" name="nextofkin" id="nextofkin" placeholder="">
                </label>
                <label>
                    Relationship Name<br>
                    <input type="text" name="Relationship" id="Relationship"  placeholder="">
                </label>--%>

                  <label>
                    Phone Number<br>
                      <asp:TextBox ID="phonenumber" runat="server" Height="25px" Width="200px"></asp:TextBox>
                   <%-- <input type="tel" name="phonenumber" id="phonenumber" placeholder="">--%>
                </label>
             <label>
                City<br>
                 <asp:TextBox ID="City" runat="server" Height="25px" Width="200px"></asp:TextBox>
                  <%--  <input type="text" name="City" id="city"  placeholder="">--%>
                </label>       
             </p>
            <p>
                <label>
                    Email Address<br>
                    <asp:TextBox ID="email" runat="server" Height="25px" Width="200px"></asp:TextBox>
                   <%-- <input type="email" name="email" id="email" placeholder="">--%>
                </label>
               <%-- <label>
                    Referee's Address<br>
                    <input type="text" name="refaddress" id="refaddress" placeholder="">
                </label>
                <label>
                   Next of Kin's  Phone Number<br>
                    <input type="tel" name="nextofkinPhone" id="nextofkinPhone" placeholder="">
                </label>--%>
           <%-- <p>
                    <label>
                    Relationship Address<br>
                    <input type="text" name="RelationshipAdress" id="RelationshipAdress"  placeholder="">
                </label>

                <label>
                    Referee's Phone Number<br>
                    <input type="number" name="refphonenumber" id="refphonenumber" placeholder="">
                </label>
                 <label>
                   Referee's Email<br>
                    <input type="email" name="refemail" id="refemail" placeholder="">
                </label>
            </p>--%>

           <%-- <p>
                  <label>
                    Employer<br>   
                       <input type="text" name="Employer" id="Employer" placeholder="">                                
<%--                    <select name="Employer" id="Employer">
                        <option value="">MRC</option>
                        <option value="">Ports Authority</option>
                      </select>--%>
               <%-- <label>
                    Salary<br>
                    <input type="number" name="Salary" id="Salary">
                </label>
                <label>
                    Employer's Phone Number<br>
                    <input type="tel" name="employeephne" id="employeephne" placeholder="">
                </label>

                <label>
                    Employer's Number <br>
                    <input type="number" name="employernumber" id="employernumber" placeholder="">
                </label>
              </p>--%>
           <%-- <p>
                <label>
                    Position<br>
                    <input type="text" name="Position" id="Position" placeholder="">
                </label>
                <label>
                    Monthly Save Amount<br>
                    <input type="number" name="monthlysave" id="monthlysave" placeholder="">
                </label>

                <label>
                    Employer's Address<br>
                    <input type="text" name="employeraddress" id="employeraddress" placeholder="">
                </label>
                <label>
                    Department<br>
                    <input type="text" name="Department" id="Department" placeholder="">
                </label>

            </p>--%>
            <p>
                <br>
                <br>
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
       <div class="auto-style1"">Copyright New vision Technologies Ltd.  2020</div>
     </footer>
</body>
</html>
