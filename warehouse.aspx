<%@ Page Language="C#" AutoEventWireup="true" CodeFile="warehouse.aspx.cs" Inherits="warehouse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 606px">
    <form id="form1" runat="server">
        
    <div>
        <asp:Label ID="Label1" runat="server" Text="Total Quantity of items in warehouse ="></asp:Label>

        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="warehouseID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="warehouseID" HeaderText="warehouseID" ReadOnly="True" SortExpression="warehouseID" />
            <asp:BoundField DataField="BranchID" HeaderText="BranchID" SortExpression="BranchID" />
            <asp:BoundField DataField="Item_ID" HeaderText="Item_ID" SortExpression="Item_ID" />
            <asp:BoundField DataField="category_ID" HeaderText="category_ID" SortExpression="category_ID" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:store managementConnectionString %>" SelectCommand="SELECT * FROM [warehouse] WHERE ([warehouseID] = @warehouseID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="warehouseID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:store managementConnectionString %>" DeleteCommand="DELETE FROM [warehouse] WHERE [warehouseID] = @warehouseID" InsertCommand="INSERT INTO [warehouse] ([warehouseID], [BranchID], [Item_ID], [category_ID]) VALUES (@warehouseID, @BranchID, @Item_ID, @category_ID)" SelectCommand="SELECT * FROM [warehouse]" UpdateCommand="UPDATE [warehouse] SET [BranchID] = @BranchID, [Item_ID] = @Item_ID, [category_ID] = @category_ID WHERE [warehouseID] = @warehouseID">
            <DeleteParameters>
                <asp:Parameter Name="warehouseID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="warehouseID" Type="Int32" />
                <asp:Parameter Name="BranchID" Type="Int32" />
                <asp:Parameter Name="Item_ID" Type="Int32" />
                <asp:Parameter Name="category_ID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BranchID" Type="Int32" />
                <asp:Parameter Name="Item_ID" Type="Int32" />
                <asp:Parameter Name="category_ID" Type="Int32" />
                <asp:Parameter Name="warehouseID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Search" Width="85px" />
        <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>
    </div>
    </form>
</body>
</html>
