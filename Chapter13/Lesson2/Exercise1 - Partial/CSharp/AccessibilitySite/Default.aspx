<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#ffffcc">
    <form id="form1" runat="server">
    <div>
        <span style="color: #ffcc33"></span>
        <asp:Image ID="Image1" runat="server" ImageUrl="contoso-logo.gif" /><br />
        <asp:Image ID="Image2" runat="server" ImageUrl="shipping-address.gif" /><table>
            <tr>
                <td style="width: 100px">
                    Name:</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Address:</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server" TabIndex="5"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    City:</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    State</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <asp:Image ID="Image3" runat="server" ImageUrl="billing-address.gif" /><br />
        <table>
            <tr>
                <td style="width: 100px">
                    Name:</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Address:</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    City:</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox7" runat="server" TabIndex="2"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    State</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="Button2" runat="server" Text="Continue Shopping" />
        <asp:Button ID="Button1" runat="server" Text="Checkout" />
    </form>
</body>
</html>
