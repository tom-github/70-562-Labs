<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body style="font-family: Arial">
    <form id="form1" runat="server">
    <div>
        <table width="500">
            <tr>
                <td colspan="2" style="font-size: x-large">User Registration<br />&nbsp;</td>
            </tr>
            <tr>
                <td>User name:</td>
                <td>
                    <asp:TextBox ID="TextBoxUserName" runat="server" Width="200"></asp:TextBox>
                </td>
            </tr>        
            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="200"></asp:TextBox>
                </td>
            </tr>        
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="200"
                      TextMode="Password"></asp:TextBox>
                </td>
            </tr>        
            <tr>
                <td>Confirm Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="200"
                      TextMode="Password"></asp:TextBox>
                </td>
            </tr>        
            <tr>
                <td></td>
                <td>                
                    <asp:Button ID="ButtonRegister" runat="server" Text="Register" />
                </td>
            </tr>        
        </table>
    </div>
    </form>
</body>
</html>
