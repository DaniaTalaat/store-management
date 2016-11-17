<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regestration.aspx.cs" Inherits="Regestration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 328px;
            margin-top: 86px;
        }
        .auto-style2 {
            width: 613px;
        }
    </style>
</head>
<body style="height: 474px; margin-top: 2px;">
    <form id="form1" runat="server">

        &nbsp;<asp:Label ID="Label7" runat="server" BackColor="#99CCFF" BorderColor="#3333FF" Font-Bold="True" Font-Italic="True" Font-Names="Aharoni" Font-Size="50pt" ForeColor="Blue" Text="Regestration page"></asp:Label>
        
        
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Confirm password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Both password must be the same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="you must enter the valid E-mail ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Country"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select country</asp:ListItem>
                        <asp:ListItem>America</asp:ListItem>
                        <asp:ListItem>Egypt</asp:ListItem>
                        <asp:ListItem>England</asp:ListItem>
                        <asp:ListItem>Italy</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select country name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <input id="Reset1" type="reset" value="reset" /><asp:Button ID="Button2" runat="server" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
