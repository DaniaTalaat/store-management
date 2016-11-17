<%@ Page Language="C#" AutoEventWireup="true" CodeFile="branch.aspx.cs" Inherits="branch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 582px">
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BrancheID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="BrancheID" HeaderText="BrancheID" InsertVisible="False" ReadOnly="True" SortExpression="BrancheID" />
                <asp:BoundField DataField="Branche_location" HeaderText="Branche_location" SortExpression="Branche_location" />
                <asp:BoundField DataField="Branch_phone" HeaderText="Branch_phone" SortExpression="Branch_phone" />
                <asp:BoundField DataField="Bransh_fax" HeaderText="Bransh_fax" SortExpression="Bransh_fax" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Width="83px" />
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" OnTextChanged="TextBox1_TextChanged" Width="254px"></asp:TextBox>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:store managementConnectionString %>" DeleteCommand="DELETE FROM [Branch] WHERE [BrancheID] = @BrancheID" InsertCommand="INSERT INTO [Branch] ([Branche_location], [Branch_phone], [Bransh_fax]) VALUES (@Branche_location, @Branch_phone, @Bransh_fax)" SelectCommand="SELECT * FROM [Branch]" UpdateCommand="UPDATE [Branch] SET [Branche_location] = @Branche_location, [Branch_phone] = @Branch_phone, [Bransh_fax] = @Bransh_fax WHERE [BrancheID] = @BrancheID">
            <DeleteParameters>
                <asp:Parameter Name="BrancheID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Branche_location" Type="String" />
                <asp:Parameter Name="Branch_phone" Type="Int32" />
                <asp:Parameter Name="Bransh_fax" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Branche_location" Type="String" />
                <asp:Parameter Name="Branch_phone" Type="Int32" />
                <asp:Parameter Name="Bransh_fax" Type="Int32" />
                <asp:Parameter Name="BrancheID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:store managementConnectionString %>" SelectCommand="SELECT * FROM [Branch] WHERE ([Branche_location] LIKE '%' + @Branche_location + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Branche_location" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
