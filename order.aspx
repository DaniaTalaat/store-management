<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 490px">
    <form id="form1" runat="server">
    <div style="height: 540px">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Item_Type" HeaderText="Item_Type" SortExpression="Item_Type" />
                <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                <asp:BoundField DataField="Item_Price" HeaderText="Item_Price" SortExpression="Item_Price" />
                <asp:BoundField DataField="Item_Discount" HeaderText="Item_Discount" SortExpression="Item_Discount" />
                <asp:BoundField DataField="Item_sold" HeaderText="Item_sold" SortExpression="Item_sold" />
                <asp:BoundField DataField="totalprice" HeaderText="totalprice" ReadOnly="True" SortExpression="totalprice" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:store managementConnectionString %>" SelectCommand="SELECT Item_Type,Item_name,Item_Price,Item_Discount,Item_sold, (Item_AfterDiscount*Item_sold) 
as totalprice 
FROM Item ORDER BY (Item_AfterDiscount*Item_sold) DESC"></asp:SqlDataSource>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:store managementConnectionString %>" DeleteCommand="DELETE FROM [Branch] WHERE [BrancheID] = @BrancheID" InsertCommand="INSERT INTO [Branch] ([Branche_location], [Branch_phone], [Bransh_fax]) VALUES (@Branche_location, @Branch_phone, @Bransh_fax)" SelectCommand="SELECT [Item_Type],[Item_name],[Item_Price],[Item_Discount],[Item_sold], (Item_AfterDiscount*Item_sold) 
as [totalprice] FROM [Item] WHERE ([Item_name] LIKE '%' + @Item_name2 + '%')" UpdateCommand="UPDATE [Branch] SET [Branche_location] = @Branche_location, [Branch_phone] = @Branch_phone, [Bransh_fax] = @Bransh_fax WHERE [BrancheID] = @BrancheID">
            <DeleteParameters>
                <asp:Parameter Name="BrancheID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Branche_location" Type="String" />
                <asp:Parameter Name="Branch_phone" Type="Int32" />
                <asp:Parameter Name="Bransh_fax" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Item_name2" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Branche_location" Type="String" />
                <asp:Parameter Name="Branch_phone" Type="Int32" />
                <asp:Parameter Name="Bransh_fax" Type="Int32" />
                <asp:Parameter Name="BrancheID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <asp:Button ID="Button1" runat="server" Text="Search" Width="77px" OnClick="Button1_Click" />
        <asp:TextBox ID="TextBox1" runat="server" Width="191px"></asp:TextBox>


    </div>
    </form>
</body>
</html>
