<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="419px" 
        AllowPaging="True" AutoGenerateRows="False" CellPadding="4" 
        DataSourceID="XmlDataSource1" ForeColor="#333333" GridLines="None">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <Fields>
          <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
          <asp:BoundField DataField="Department" HeaderText="Department" 
            SortExpression="Department" />
          <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
          <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Fields>
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
      </asp:DetailsView>  
      <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
        DataFile="~/App_Data/ProductList.xml"></asp:XmlDataSource>
    </div>
    </form>
</body>
</html>
