<%@ Page Language="C#" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 594px">
    <form id="form1" runat="server">
    <div>
    

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="category_Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="category_Id" HeaderText="category_Id" InsertVisible="False" ReadOnly="True" SortExpression="category_Id" />
                <asp:BoundField DataField="Category_type" HeaderText="Category_type" SortExpression="Category_type" />
                <asp:BoundField DataField="category_quantity" HeaderText="category_quantity" SortExpression="category_quantity" />
                <asp:BoundField DataField="category_price" HeaderText="category_price" SortExpression="category_price" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:store managementConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [category_Id] = @category_Id" InsertCommand="INSERT INTO [Category] ([Category_type], [category_quantity], [category_price]) VALUES (@Category_type, @category_quantity, @category_price)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [Category_type] = @Category_type, [category_quantity] = @category_quantity, [category_price] = @category_price WHERE [category_Id] = @category_Id">
            <DeleteParameters>
                <asp:Parameter Name="category_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Category_type" Type="String" />
                <asp:Parameter Name="category_quantity" Type="Int32" />
                <asp:Parameter Name="category_price" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Category_type" Type="String" />
                <asp:Parameter Name="category_quantity" Type="Int32" />
                <asp:Parameter Name="category_price" Type="Double" />
                <asp:Parameter Name="category_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:store managementConnectionString %>" SelectCommand="SELECT * FROM [Category] WHERE ([Category_type] LIKE '%' + @Category_type + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Category_type" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Width="82px" />
        <asp:TextBox ID="TextBox1" runat="server" Width="165px"></asp:TextBox>
    </div>

       

    </form>
</body>
</html>
