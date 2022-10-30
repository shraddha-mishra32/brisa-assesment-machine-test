<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="demo.main" %>

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
 &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" Text="LIST OF TASK"></asp:Label>
            <br />
            <br />
&nbsp;<asp:Button ID="btnSelect" runat="server" Text="Select by category" OnClick="btnSelect_Click"  />
             &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnInsert" runat="server" Text="Insert by category" OnClick="btnInsert_Click"  />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" Text="Update by category" OnClick="btnUpdate_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete by category" OnClick="btnDelete_Click"  />

            &#39;<br />
            <br />
            <br />
            &nbsp;
            <asp:Button ID="btnSelectProduct" runat="server" Height="37px" Text="Select by product" Width="231px" OnClick="btnSelectProduct_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnInsertProduct" runat="server" Height="34px" Text="Insert by product" Width="234px" OnClick="btnInsertProduct_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="btnUpdateProduct" runat="server" Height="32px" Text="Update by product" Width="264px" OnClick="btnUpdateProduct_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDeleteProduct" runat="server" Height="35px" Text=" Delete by product" OnClick="btnDeleteProduct_Click" />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnProductList" runat="server" OnClick="btnProductList_Click" Text="PRODUCT LIST" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnback" runat="server" OnClick="btnback_Click" Text="BACK" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <%--<asp:GridView ID="Gridview_ProductList"  runat="server"  AutoGenerateColumns="False" Width="100%" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
               HeaderStyle-CssClass="gridHeader" AllowPaging="True" AlternatingRowStyle-BackColor="#e4e4e4" EnableModelValidation="True">
               <Columns>


                   <asp:TemplateField HeaderText="CustomerID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
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

                   </asp:TemplateField>
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
           </asp:GridView>--%>
        </div>
    </form>
</body>
</html>
