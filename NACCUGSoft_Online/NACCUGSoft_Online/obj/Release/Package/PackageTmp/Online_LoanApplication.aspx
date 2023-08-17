<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Online_LoanApplication.aspx.cs" Inherits="NACCUGSoft_Online.Online_LoanApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Dashboard</title>
    <link rel="Stylesheet" href="Content/Site.less" type="text/css" />
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
          <a href="CUOnlineVisaApplication.aspx">Online Visa Statement Request </a>
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
   <h2>Online Visa Application</h2>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style3" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="ccustcode" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="custcode" HeaderText="custcode" InsertVisible="False" ReadOnly="True" SortExpression="custcode" />
                <asp:BoundField DataField="employeeNo" HeaderText="employeeNo" SortExpression="employeeNo" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="previousAmount" HeaderText="previousAmount" SortExpression="previousAmount" />
                <asp:BoundField DataField="appliedAmount" HeaderText="appliedAmount" SortExpression="appliedAmount" />
                <asp:BoundField DataField="savingsAmount" HeaderText="savingsAmount" SortExpression="savingsAmount" />
                <asp:BoundField DataField="branchid" HeaderText="branchid" SortExpression="branchid" />
                <asp:BoundField DataField="position" HeaderText="position" SortExpression="position" />
                <asp:BoundField DataField="loanreason" HeaderText="loanreason" SortExpression="loanreason" />
                <asp:BoundField DataField="cwork" HeaderText="cwork" SortExpression="cwork" />
                <asp:BoundField DataField="cends" HeaderText="cends" SortExpression="cends" />
                <asp:BoundField DataField="trandate" HeaderText="trandate" SortExpression="trandate" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="caddress" HeaderText="caddress" SortExpression="caddress" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="guarantor1" HeaderText="guarantor1" SortExpression="guarantor1" />
                <asp:BoundField DataField="gua1phone" HeaderText="gua1phone" SortExpression="gua1phone" />
                <asp:BoundField DataField="gua1ContractPeriod" HeaderText="gua1ContractPeriod" SortExpression="gua1ContractPeriod" />
                <asp:BoundField DataField="gua1savings" HeaderText="gua1savings" SortExpression="gua1savings" />
                <asp:BoundField DataField="gua1Empnumber" HeaderText="gua1Empnumber" SortExpression="gua1Empnumber" />
                <asp:BoundField DataField="guarantor2" HeaderText="guarantor2" SortExpression="guarantor2" />
                <asp:BoundField DataField="gua2phone" HeaderText="gua2phone" SortExpression="gua2phone" />
                <asp:BoundField DataField="gua2ContractPeriod" HeaderText="gua2ContractPeriod" SortExpression="gua2ContractPeriod" />
                <asp:BoundField DataField="gua2savings" HeaderText="gua2savings" SortExpression="gua2savings" />
                <asp:BoundField DataField="gua2Empnumber" HeaderText="gua2Empnumber" SortExpression="gua2Empnumber" />
                <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                <asp:CheckBoxField DataField="checked" HeaderText="checked" SortExpression="checked" />
                <asp:BoundField DataField="ccustcode" HeaderText="ccustcode" ReadOnly="True" SortExpression="ccustcode" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle Wrap="False" BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle Wrap="False" BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle Wrap="False" BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" DeleteCommand="DELETE FROM [OnlineLoanApplication] WHERE [ccustcode] = @ccustcode" InsertCommand="INSERT INTO [OnlineLoanApplication] ([employeeNo], [fname], [mname], [lname], [previousAmount], [appliedAmount], [savingsAmount], [branchid], [position], [loanreason], [cwork], [cends], [trandate], [country], [city], [PhoneNumber], [caddress], [email], [guarantor1], [gua1phone], [gua1ContractPeriod], [gua1savings], [gua1Empnumber], [guarantor2], [gua2phone], [gua2ContractPeriod], [gua2savings], [gua2Empnumber], [remarks], [checked], [ccustcode]) VALUES (@employeeNo, @fname, @mname, @lname, @previousAmount, @appliedAmount, @savingsAmount, @branchid, @position, @loanreason, @cwork, @cends, @trandate, @country, @city, @PhoneNumber, @caddress, @email, @guarantor1, @gua1phone, @gua1ContractPeriod, @gua1savings, @gua1Empnumber, @guarantor2, @gua2phone, @gua2ContractPeriod, @gua2savings, @gua2Empnumber, @remarks, @checked, @ccustcode)" SelectCommand="select * from OnlineLoanApplication where checked &lt;&gt; 1" UpdateCommand="UPDATE [OnlineLoanApplication] SET [custcode] = @custcode, [employeeNo] = @employeeNo, [fname] = @fname, [mname] = @mname, [lname] = @lname, [previousAmount] = @previousAmount, [appliedAmount] = @appliedAmount, [savingsAmount] = @savingsAmount, [branchid] = @branchid, [position] = @position, [loanreason] = @loanreason, [cwork] = @cwork, [cends] = @cends, [trandate] = @trandate, [country] = @country, [city] = @city, [PhoneNumber] = @PhoneNumber, [caddress] = @caddress, [email] = @email, [guarantor1] = @guarantor1, [gua1phone] = @gua1phone, [gua1ContractPeriod] = @gua1ContractPeriod, [gua1savings] = @gua1savings, [gua1Empnumber] = @gua1Empnumber, [guarantor2] = @guarantor2, [gua2phone] = @gua2phone, [gua2ContractPeriod] = @gua2ContractPeriod, [gua2savings] = @gua2savings, [gua2Empnumber] = @gua2Empnumber, [remarks] = @remarks, [checked] = @checked WHERE [ccustcode] = @ccustcode">
            <DeleteParameters>
                <asp:Parameter Name="ccustcode" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="employeeNo" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="mname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="previousAmount" Type="Decimal" />
                <asp:Parameter Name="appliedAmount" Type="Decimal" />
                <asp:Parameter Name="savingsAmount" Type="Decimal" />
                <asp:Parameter Name="branchid" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="loanreason" Type="String" />
                <asp:Parameter Name="cwork" Type="Int32" />
                <asp:Parameter DbType="Date" Name="cends" />
                <asp:Parameter DbType="Date" Name="trandate" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="caddress" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="guarantor1" Type="String" />
                <asp:Parameter Name="gua1phone" Type="String" />
                <asp:Parameter Name="gua1ContractPeriod" Type="String" />
                <asp:Parameter Name="gua1savings" Type="Decimal" />
                <asp:Parameter Name="gua1Empnumber" Type="String" />
                <asp:Parameter Name="guarantor2" Type="String" />
                <asp:Parameter Name="gua2phone" Type="String" />
                <asp:Parameter Name="gua2ContractPeriod" Type="String" />
                <asp:Parameter Name="gua2savings" Type="Decimal" />
                <asp:Parameter Name="gua2Empnumber" Type="String" />
                <asp:Parameter Name="remarks" Type="String" />
                <asp:Parameter Name="checked" Type="Boolean" />
                <asp:Parameter Name="ccustcode" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="custcode" Type="Int32" />
                <asp:Parameter Name="employeeNo" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="mname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="previousAmount" Type="Decimal" />
                <asp:Parameter Name="appliedAmount" Type="Decimal" />
                <asp:Parameter Name="savingsAmount" Type="Decimal" />
                <asp:Parameter Name="branchid" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="loanreason" Type="String" />
                <asp:Parameter Name="cwork" Type="Int32" />
                <asp:Parameter DbType="Date" Name="cends" />
                <asp:Parameter DbType="Date" Name="trandate" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="caddress" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="guarantor1" Type="String" />
                <asp:Parameter Name="gua1phone" Type="String" />
                <asp:Parameter Name="gua1ContractPeriod" Type="String" />
                <asp:Parameter Name="gua1savings" Type="Decimal" />
                <asp:Parameter Name="gua1Empnumber" Type="String" />
                <asp:Parameter Name="guarantor2" Type="String" />
                <asp:Parameter Name="gua2phone" Type="String" />
                <asp:Parameter Name="gua2ContractPeriod" Type="String" />
                <asp:Parameter Name="gua2savings" Type="Decimal" />
                <asp:Parameter Name="gua2Empnumber" Type="String" />
                <asp:Parameter Name="remarks" Type="String" />
                <asp:Parameter Name="checked" Type="Boolean" />
                <asp:Parameter Name="ccustcode" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
      <footer>
        <div class="auto-style1"> <a href="http://www.naccug.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div class="auto-style1"> <a href="https://www.facebook.com/naccug/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div class="auto-style1">Contact Us 7833358 / 9138402</div>
        <div class="auto-style1">Copyright New Vision Technologies Ltd 2020</div>
         </footer>
</body>
</html>
