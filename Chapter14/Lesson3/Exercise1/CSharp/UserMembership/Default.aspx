﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:LoginName ID="LoginName1" runat="server" />
      <br />    
      <asp:LoginStatus ID="LoginStatus1" runat="server" />
      <br />
      <br />
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Members/Default.aspx">Members only</asp:HyperLink>
      <br />
      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin/Default.aspx">Administrators only</asp:HyperLink>    
    </div>
    </form>
</body>
</html>
