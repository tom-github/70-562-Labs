<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Default Page 2 <br />
        <asp:Label ID="LabelApplicationClicks" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="LabelSessionClicks" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLinkPage1" runat="server" NavigateUrl="~/Default.aspx">HyperLink</asp:HyperLink>    
    </div>
    </form>
</body>
</html>
