<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CURequestforclosure.aspx.cs" Inherits="NACCUGSoft_Online.CURequestforclosure" %>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
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
    <h2>Online Request For Closure</h2>
  <div id='container' style='width: 100%;'>
      <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style3" ForeColor="#333333" GridLines="None" DataKeyNames="custcode" DataSourceID="SqlDataSource1">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              <asp:BoundField DataField="custcode" HeaderText="custcode" InsertVisible="False" ReadOnly="True" SortExpression="custcode" />
              <asp:BoundField DataField="EmpNo" HeaderText="EmpNo" SortExpression="EmpNo" />
              <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
              <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
              <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
              <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
              <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
              <asp:BoundField DataField="trandate" HeaderText="trandate" SortExpression="trandate" />
              <asp:BoundField DataField="reasonforClose" HeaderText="reasonforClose" SortExpression="reasonforClose" />
              <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
              <asp:CheckBoxField DataField="checked" HeaderText="checked" SortExpression="checked" />
          </Columns>
          <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" Wrap="False" />
          <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
          <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
          <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
          <SortedAscendingCellStyle BackColor="#FDF5AC" />
          <SortedAscendingHeaderStyle BackColor="#4D0000" />
          <SortedDescendingCellStyle BackColor="#FCF6C0" />
          <SortedDescendingHeaderStyle BackColor="#820000" />
      </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" DeleteCommand="DELETE FROM [OnlineRequestForClose] WHERE [custcode] = @custcode" InsertCommand="INSERT INTO [OnlineRequestForClose] ([EmpNo], [fname], [mname], [lname], [title], [phone], [trandate], [reasonforClose], [remarks], [checked]) VALUES (@EmpNo, @fname, @mname, @lname, @title, @phone, @trandate, @reasonforClose, @remarks, @checked)" SelectCommand="SELECT * FROM [OnlineRequestForClose]" UpdateCommand="UPDATE [OnlineRequestForClose] SET [EmpNo] = @EmpNo, [fname] = @fname, [mname] = @mname, [lname] = @lname, [title] = @title, [phone] = @phone, [trandate] = @trandate, [reasonforClose] = @reasonforClose, [remarks] = @remarks, [checked] = @checked WHERE [custcode] = @custcode">
            <DeleteParameters>
                <asp:Parameter Name="custcode" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpNo" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="mname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter DbType="Date" Name="trandate" />
                <asp:Parameter Name="reasonforClose" Type="String" />
                <asp:Parameter Name="remarks" Type="String" />
                <asp:Parameter Name="checked" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmpNo" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="mname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter DbType="Date" Name="trandate" />
                <asp:Parameter Name="reasonforClose" Type="String" />
                <asp:Parameter Name="remarks" Type="String" />
                <asp:Parameter Name="checked" Type="Boolean" />
                <asp:Parameter Name="custcode" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
          </div>
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
