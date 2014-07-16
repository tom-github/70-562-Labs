<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="287px" 
        AllowPaging="True" AutoGenerateRows="False" CellPadding="4" 
        DataKeyNames="ShipperID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <RowStyle BackColor="#EFF3FB" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <Fields>
          <asp:BoundField DataField="ShipperID" HeaderText="ShipperID" 
            InsertVisible="False" ReadOnly="True" SortExpression="ShipperID" />
          <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
            SortExpression="CompanyName" />
          <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
      </asp:DetailsView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
        DeleteCommand="DELETE FROM [Shippers] WHERE [ShipperID] = @original_ShipperID AND [CompanyName] = @original_CompanyName AND [Phone] = @original_Phone" 
        InsertCommand="INSERT INTO [Shippers] ([CompanyName], [Phone]) VALUES (@CompanyName, @Phone)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Shippers]" 
        UpdateCommand="UPDATE [Shippers] SET [CompanyName] = @CompanyName, [Phone] = @Phone WHERE [ShipperID] = @original_ShipperID AND [CompanyName] = @original_CompanyName AND [Phone] = @original_Phone">
        <DeleteParameters>
          <asp:Parameter Name="original_ShipperID" Type="Int32" />
          <asp:Parameter Name="original_CompanyName" Type="String" />
          <asp:Parameter Name="original_Phone" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
          <asp:Parameter Name="CompanyName" Type="String" />
          <asp:Parameter Name="Phone" Type="String" />
          <asp:Parameter Name="original_ShipperID" Type="Int32" />
          <asp:Parameter Name="original_CompanyName" Type="String" />
          <asp:Parameter Name="original_Phone" Type="String" />
        </UpdateParameters>
        <InsertParameters>
          <asp:Parameter Name="CompanyName" Type="String" />
          <asp:Parameter Name="Phone" Type="String" />
        </InsertParameters>
      </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
