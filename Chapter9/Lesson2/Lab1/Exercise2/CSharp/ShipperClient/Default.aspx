<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body style="font-family: Verdana; font-size: small">
    <form id="form1" runat="server">
    <div>

      <h1>Edit Shipper Information</h1>

      Enter Shipper Code:<br /><asp:TextBox ID="TextBoxGetId" runat="server" Width="200"></asp:TextBox>
      &nbsp;<asp:Button ID="ButtonGetShipper" runat="server" Text="Select" 
        onclick="ButtonGetShipper_Click" />
      <hr />
      <br />
      <h2>Shipper Data</h2>
      ShipperId:<br /> 
      <asp:TextBox ID="TextBoxShipperId" runat="server" Enabled="false" Width="200"></asp:TextBox>
      <br />
      CompanyName:<br /> 
      <asp:TextBox ID="TextBoxCompany" runat="server" Width="200"></asp:TextBox>
      <br />
      Phone:<br /> 
      <asp:TextBox ID="TextBoxPhone" runat="server" Width="200"></asp:TextBox>
      <br /><br />
      <asp:Button ID="ButtonSave" runat="server" Text="Save" 
        onclick="ButtonSave_Click" />
    </div>
    </form>
</body>
</html>

