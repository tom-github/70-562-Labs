<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:Image ID="Image1" SkinID="Logo" runat="server" />
      <br />
      User Name: <br />
      <asp:TextBox ID="TextBoxUname" runat="server" 
        CssClass="textBox"></asp:TextBox>      
      <br />
      Password: <br />
      <asp:TextBox ID="TextBoxPass" runat="server" 
        CssClass="textBox"></asp:TextBox>
      <br />
      <asp:Button ID="ButtonSubmit" runat="server" Text="Login" 
        CssClass="button" onclick="ButtonSubmit_Click" />      
    </div>
    </form>
</body>
</html>
