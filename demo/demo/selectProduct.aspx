<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selectProduct.aspx.cs" Inherits="demo.selectProduct" %>

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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style1"><strong> Select&nbsp; The Data</strong></span><br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="cateId" runat="server" Text="Enter Product ID"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtProduct" runat="server" Height="23px" Width="157px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProduct" ErrorMessage="ProductId should not be blank or It is not in Proper Format" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnSelect" runat="server" Text="Select"  OnClick="btnSelect_Click" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
             <br />
             <br />
               <asp:GridView ID="Gridview_SelectProductList" runat="server" Visible="False" AutoGenerateColumns="False" Width="81%" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
               HeaderStyle-CssClass="gridHeader" AllowPaging="True" AlternatingRowStyle-BackColor="#e4e4e4" EnableModelValidation="True">
               <Columns>


                   <asp:TemplateField HeaderText="ProductId" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                       <ItemTemplate>
                           <asp:Label ID="ProductId" runat="server" Text='<%#Eval("ProductId") %>'></asp:Label>
                       </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                       <ItemStyle HorizontalAlign="Center"></ItemStyle>
                   </asp:TemplateField>


                   <asp:TemplateField HeaderText="ProductName" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                       <ItemTemplate>
                           <asp:Label ID="ProductName" runat="server" Text='<%#Eval("ProductName") %>'></asp:Label>
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
