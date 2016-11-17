<%@ Page Language="C#" AutoEventWireup="true" CodeFile="item.aspx.cs" Inherits="item" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 749px;
        }
    </style>
</head>
<body style="height: 781px">
    <form id="form1" runat="server">
    <div>

     <table align="center" style="border-collapse:collapse; width:50%; border:2px solid black" >
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/L1sm (1).jpg" style="text-align: center" />
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl="~/L1sm (2).jpg" />
                </td>
                <td>
                    <asp:Image ID="Image3" runat="server" Height="150px" ImageUrl="~/L1sm (3).jpg" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="white whale" style="text-align: right"></asp:Label>
                </td>
                <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label2" runat="server" Text="Sharp" style="text-align: right"></asp:Label>
                </td>
                <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label3" runat="server" Text="samsoung" style="text-align: right"></asp:Label>
                </td>
            </tr>
            <tr>
                <td >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label4" runat="server" Text="Price: 5000 L.E." style="text-align: right"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Price: 6650 L.E." style="text-align: right"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Price: 3000 L.E." style="text-align: right"></asp:Label>
                </td>
            </tr>

                   <tr>
                       <td>
                    <asp:Image ID="Image4" runat="server" Height="150px" ImageUrl="~/Ld.jpg" style="text-align: center" />
                </td>
                <td>
                    <asp:Image ID="Image5" runat="server" Height="150px" ImageUrl="~/LG.jpg" />
                </td>
                <td>
                    <asp:Image ID="Image6" runat="server" Height="150px" ImageUrl="~/LH.jpg" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="DELL" style="text-align: right"></asp:Label>
                </td>
                <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label8" runat="server" Text="LG" style="text-align: right"></asp:Label>
                </td>
                <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label9" runat="server" Text="HP" style="text-align: right"></asp:Label>
                </td>
            </tr>
            <tr>
                <td >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label10" runat="server" Text="Price: 4000 L.E." style="text-align: right"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server" Text="Price: 2500L.E." style="text-align: right"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Text="Price: 7000 L.E." style="text-align: right"></asp:Label>
                </td>
            </tr>
        </table>


        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Item_ID" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Item_ID" HeaderText="Item_ID" InsertVisible="False" ReadOnly="True" SortExpression="Item_ID" />
                <asp:BoundField DataField="Item_Type" HeaderText="Item_Type" SortExpression="Item_Type" />
                <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                <asp:BoundField DataField="Item_price" HeaderText="Item_price" SortExpression="Item_price" />
                <asp:BoundField DataField="Item_discount" HeaderText="Item_discount" SortExpression="Item_discount" />
                <asp:BoundField DataField="Item_afterDiscount" HeaderText="Item_afterDiscount" SortExpression="Item_afterDiscount" />
                <asp:BoundField DataField="Item_quantity" HeaderText="Item_quantity" SortExpression="Item_quantity" />
                <asp:BoundField DataField="Item_sold" HeaderText="Item_sold" SortExpression="Item_sold" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Orders" OnClick="Button1_Click" />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:store managementConnectionString %>" SelectCommand="SELECT [Item_ID], [Item_Type], [Item_name], [Item_price], [Item_discount], [Item_afterDiscount], [Item_quantity], [Item_sold] FROM [Item] ORDER BY [Item_afterDiscount] DESC">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:store managementConnectionString %>" SelectCommand="SELECT * FROM [Item] WHERE ([Item_Type] LIKE '%' + @Item_Type + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Item_Type" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
        <asp:Button ID="Button2" runat="server" Text="Search" Width="80px" OnClick="Button2_Click" />
        <asp:TextBox ID="TextBox1" runat="server" Width="218px"></asp:TextBox>
    </form>
</body>
</html>
