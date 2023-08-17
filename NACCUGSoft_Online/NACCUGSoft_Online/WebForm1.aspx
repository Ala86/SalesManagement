<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NACCUGSoft_Online.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
   
   

    <title></title>
    <style type="text/css">
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
<body style = "height:1000px">
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:Button ID="btnShow" runat="server" onserverclick="btnShow_Click" Text="Show Modal Popup" />

<!-- ModalPopupExtender -->
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>

<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" Width="60%" Height="60%"  style = "display:none"  >
   <h2>Invoice Form</h2>
    <p>
             Note: Enter the Quantity number and click enter button or click Loan details button to display the product information
                    <label>
                    Quantity<br>
                        <asp:TextBox ID="qty" runat="server" BorderColor="Black"  Width="200"></asp:TextBox>
                    </label>
                <label>
                    </label>
                          <label>
                    Invoice Number<br>
                    <asp:TextBox ID="InvoiceNumber" runat="server" BorderColor="Black" ></asp:TextBox>
                </label> 
                <label>
                    Invoice Date<br>
                    <asp:TextBox ID="trandate" type="date" runat="server" BorderColor="Black" BackColor="#FFFF66" Width="200" Height="25"></asp:TextBox>
                </label>                   
                <label>
                    Selling Price<br>
                         <asp:TextBox ID="InvoiceAmount" runat="server" BorderColor="Black" BackColor="#FFFF66" ></asp:TextBox>
                     </label>
                       </p>
                       <p>  
                    <label>
                    Total Amount<br>
                    <asp:TextBox ID="TotalBalance" runat="server" BorderColor="Black" ></asp:TextBox>
                    </label>   
                                 <label>
                    Customer Address<br>
                      <asp:TextBox ID="CustomerAddress" runat="server" BorderColor="Black" ></asp:TextBox>
                   </label>       
                     <label>
                    Discount Price<br>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" ></asp:TextBox>
                    </label>              
            </p>
            <p>
                 <label>
                    Cost Price<br>
                         <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BackColor="#FFFF66" ></asp:TextBox>
                     </label>
                  <label>
                  Profit Generated<br>
                      <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" ></asp:TextBox>
                   </label>    
               
                 <label>
                    Transaction Narrative<br>
                    <asp:TextBox ID="trandesc" runat="server" Text="Invoice" BorderColor="Black" ></asp:TextBox>
                   </label>     
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
    <asp:Button ID="btnClose" runat="server" Text="Close" />
</asp:Panel>
<!-- ModalPopupExtender -->
</form>
</body>
</html>
