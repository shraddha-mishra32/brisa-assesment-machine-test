<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductListForm.aspx.cs" Inherits="demo.ProductListForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ProductList<br />
            <br />
&nbsp;&nbsp;&nbsp; Enter CategoryId:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtcate" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Enter CategoryName:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtcatName" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Enter ProductId:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtProduct" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Enter ProductName:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtproductName" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnselect" runat="server" Text="select" OnClick="btnselect_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LBLRESULT" runat="server" Visible="false" Text=""></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />

            <asp:GridView ID="Gridview_ProductList"  runat="server"  AutoGenerateColumns="False" Width="100%" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
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
                           <asp:Label ID="ProductId" runat="server" Text='<%#Eval("ProductlistId") %>'></asp:Label>
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
        </div>
    </form>
</body>
</html>
