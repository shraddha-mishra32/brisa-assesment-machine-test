<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="select.aspx.cs" Inherits="demo.select" %>

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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="cateId" runat="server" Text="Enter category ID"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TxtCateId" runat="server" Height="23px" Width="157px"></asp:TextBox>
            &nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCateId" ErrorMessage="CategoryId should not be blank or It is not in Proper Format" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <br />
            <br />
            <%--&nbsp;&nbsp; &nbsp; <asp:Label ID="catname" runat="server" Text="Enter category Name"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtcatname" runat="server" Height="23px" Width="147px"></asp:TextBox>
            <br />
            <br/>--%>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSelect" runat="server" Text="Select" OnClick="btnSelect_Click"  />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
             <br />
             <br />
               <asp:GridView ID="Gridview_SelectList" runat="server" Visible="False" AutoGenerateColumns="False" Width="81%" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
               HeaderStyle-CssClass="gridHeader" AllowPaging="True" AlternatingRowStyle-BackColor="#e4e4e4" EnableModelValidation="True">
               <Columns>


                   <asp:TemplateField HeaderText="CustomerID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                       <ItemTemplate>
                           <asp:Label ID="CustomerID" runat="server" Text='<%#Eval("CategoryId") %>'></asp:Label>
                       </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                       <ItemStyle HorizontalAlign="Center"></ItemStyle>
                   </asp:TemplateField>


                   <asp:TemplateField HeaderText="ProductId" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                       <ItemTemplate>
                           <asp:Label ID="ProductId" runat="server" Text='<%#Eval("CategoryName") %>'></asp:Label>
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

             
            
            <br />
            <br />
            <br/>
        </div>
    </form>
</body>
</html>
