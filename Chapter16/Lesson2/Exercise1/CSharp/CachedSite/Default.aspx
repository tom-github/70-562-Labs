<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ OutputCache Duration="20" VaryByParam="DropDownListChoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="font-family: Verdana">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="LabelChosen" runat="server" Font-Size="XX-Large" 
          Text="nothing chosen"></asp:Label><br />
        <br />Make a choice: <br />
        <asp:DropDownList ID="DropDownListChoice" runat="server">
            <asp:ListItem>Choice One</asp:ListItem>
            <asp:ListItem>Choice Two</asp:ListItem>
            <asp:ListItem>Choice Three</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" 
          onclick="ButtonSubmit_Click" />
    </div>
    </form>
</body>
</html>
