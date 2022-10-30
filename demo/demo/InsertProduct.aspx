<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertProduct.aspx.cs" Inherits="demo.InsertProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <script>
    function simpleAlert(title, message, alertType) {

            swal(
            title,
            message,
            alertType)
        };

        function ErrorAlert(message) {
            sweetAlert("Invalid", message, "error");
        };
     </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style1"><strong> Insert The Data</strong></span><br />
            <br />
&n<%--bsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="custId" runat="server" Text="Enter Customer ID"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TxtCustId" runat="server" Height="23px" Width="147px"></asp:TextBox>
            <br />
            <br/>
            &nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="CustName" runat="server" Text="Enter Customer Name"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TxtName" runat="server" Height="26px" Width="158px"></asp:TextBox>
            <br />--%>
            <br />
            &nbsp;&nbsp; &nbsp; <asp:Label ID="PrdId" runat="server" Text="Enter Product ID"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtProdID" runat="server" Height="23px" Width="147px"></asp:TextBox>
            <br />
            <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="PrdName" runat="server" Text="Enter Product Name"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtProdName" runat="server" Height="26px" Width="158px"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Insert" runat="server" Text="Insert"    OnClick="Insert_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
           <asp:GridView ID="Gridview_InsertList" runat="server" Visible="False" AutoGenerateColumns="False" Width="100%" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
               HeaderStyle-CssClass="gridHeader" AllowPaging="True" AlternatingRowStyle-BackColor="#e4e4e4" EnableModelValidation="True">
               <Columns>


                  <%-- <asp:TemplateField HeaderText="CustomerID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                       <ItemTemplate>
                           <asp:Label ID="AccountId" runat="server" Text='<%#Eval("CategoryId") %>'></asp:Label>
                       </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                       <ItemStyle HorizontalAlign="Center"></ItemStyle>
                   </asp:TemplateField>



                   <asp:TemplateField HeaderText="CustomerName" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                       <ItemTemplate>
                           <asp:Label ID="trip_end_date" runat="server" Text='<%#Eval("CategoryName") %>'></asp:Label>
                       </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                       <ItemStyle HorizontalAlign="Center"></ItemStyle>

                   </asp:TemplateField>--%>
                   <asp:TemplateField HeaderText="ProductId" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                       <ItemTemplate>
                           <asp:Label ID="trip_no" runat="server" Text='<%#Eval("ProductId") %>'></asp:Label>
                       </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                       <ItemStyle HorizontalAlign="Center"></ItemStyle>
                   </asp:TemplateField>



                   <asp:TemplateField HeaderText="ProductName" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                       <ItemTemplate>
                           <asp:Label ID="total_distance" runat="server" Text='<%#Eval("ProductName") %>'></asp:Label>
                       </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                       <ItemStyle HorizontalAlign="Center"></ItemStyle>
                   </asp:TemplateField>


               </Columns>

               <EmptyDataRowStyle HorizontalAlign="Center" Height="120px" Width="500" />
               <EmptyDataTemplate>
                   No Data Found.             
               </EmptyDataTemplate>
               <HeaderStyle HorizontalAlign="Center" CssClass="gridHeader"></HeaderStyle>
           </asp:GridView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
