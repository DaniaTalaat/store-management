<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #000000;
            font-weight: normal;
            font-size: medium;
            text-align: right;
        }
    </style>
</head>
<body style="height: 859px">
    <form id="form1" runat="server">
    <div style="height: 543px; text-align: center; font-size: xx-large; color: #0000FF; font-weight: 700">
    
        <address style="color: #003399; background-color: #33CCFF">
            Login Page</address>



    
        <table class="auto-style1">
            <tr>
                <td style="color: #000000; font-size: medium; text-align: right">user name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="265px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="please enter user name" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="275px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="please enter password" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="104px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>



    
    </div>
    </form>
</body>
</html>
