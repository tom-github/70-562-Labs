<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Manage Customers Example</title>
</head>
<body style="font-family: Verdana">
    <form id="form1" runat="server">

      <asp:SqlDataSource runat="server"
        ID="SqlDataSourceReadList" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringNorthwind %>"         
        SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [City], [Country], [Phone] FROM [Customers]" >
      </asp:SqlDataSource>
    
      <asp:SqlDataSource runat="server"
        ID="SqlDataSourceUpdate" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringNorthwind %>" 
        DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" 
        InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (@CustomerID, @CompanyName, @ContactName, @ContactTitle, @Address, @City, @Region, @PostalCode, @Country, @Phone, @Fax)" 
        SelectCommand="SELECT * FROM [Customers] WHERE ([CustomerID] = @CustomerID)" 
        UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName, [ContactName] = @ContactName, [ContactTitle] = @ContactTitle, [Address] = @Address, [City] = @City, [Region] = @Region, [PostalCode] = @PostalCode, [Country] = @Country, [Phone] = @Phone, [Fax] = @Fax WHERE [CustomerID] = @CustomerID" >
        <SelectParameters>
          <asp:ControlParameter ControlID="GridView1" Name="CustomerID" 
            PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <DeleteParameters>
          <asp:Parameter Name="CustomerID" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
          <asp:Parameter Name="CompanyName" Type="String" />
          <asp:Parameter Name="ContactName" Type="String" />
          <asp:Parameter Name="ContactTitle" Type="String" />
          <asp:Parameter Name="Address" Type="String" />
          <asp:Parameter Name="City" Type="String" />
          <asp:Parameter Name="Region" Type="String" />
          <asp:Parameter Name="PostalCode" Type="String" />
          <asp:Parameter Name="Country" Type="String" />
          <asp:Parameter Name="Phone" Type="String" />
          <asp:Parameter Name="Fax" Type="String" />
          <asp:Parameter Name="CustomerID" Type="String" />
        </UpdateParameters>
        <InsertParameters>
          <asp:Parameter Name="CustomerID" Type="String" />
          <asp:Parameter Name="CompanyName" Type="String" />
          <asp:Parameter Name="ContactName" Type="String" />
          <asp:Parameter Name="ContactTitle" Type="String" />
          <asp:Parameter Name="Address" Type="String" />
          <asp:Parameter Name="City" Type="String" />
          <asp:Parameter Name="Region" Type="String" />
          <asp:Parameter Name="PostalCode" Type="String" />
          <asp:Parameter Name="Country" Type="String" />
          <asp:Parameter Name="Phone" Type="String" />
          <asp:Parameter Name="Fax" Type="String" />
        </InsertParameters>
      </asp:SqlDataSource>
    
    <div style="font-size: large">Manage Customers</div>
    <hr />
    
    <div style="font-size: x-small">                 
      <asp:GridView runat="server" 
        ID="GridView1" 
        AllowPaging="True" 
        AllowSorting="True" 
        DataSourceID="SqlDataSourceReadList"
        Width="700px" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
          GridLines="None" DataKeyNames="CustomerID" PageSize="5">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
          <asp:CommandField ShowSelectButton="True" />
          <asp:BoundField DataField="CustomerID" HeaderText="ID" ReadOnly="True" 
            SortExpression="CustomerID" />
          <asp:BoundField DataField="CompanyName" HeaderText="Company" 
            SortExpression="CompanyName" />
          <asp:BoundField DataField="ContactName" HeaderText="Contact" 
            SortExpression="ContactName" />
          <asp:BoundField DataField="City" HeaderText="City" 
            SortExpression="City" />
          <asp:BoundField DataField="Country" HeaderText="Country" 
            SortExpression="Country" />
          <asp:BoundField DataField="Phone" HeaderText="Phone" 
            SortExpression="Phone" />
        </Columns>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
      </asp:GridView>
      
      <br /><br />
      <div style="font-size: large">Customer Details</div>
      <hr />
      
      <asp:DetailsView runat="server" Width="400px"
        ID="DetailsView1"          
        AutoGenerateRows="False" DataKeyNames="CustomerID" 
        DataSourceID="SqlDataSourceUpdate" CellPadding="2" ForeColor="#333333" 
            GridLines="None" oniteminserted="DetailsView1_ItemInserted" 
        onitemupdated="DetailsView1_ItemUpdated">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <EmptyDataTemplate>
          No customer data currently selected<br />
          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
            CommandName="New">New</asp:LinkButton>
        </EmptyDataTemplate>
        <Fields>
          <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
            ReadOnly="True" SortExpression="CustomerID" />
          <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
            SortExpression="CompanyName" />
          <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
            SortExpression="ContactName" />
          <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" 
            SortExpression="ContactTitle" />
          <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
          <asp:BoundField DataField="City" HeaderText="City" 
            SortExpression="City" />
          <asp:BoundField DataField="Region" HeaderText="Region" 
            SortExpression="Region" />
          <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" 
            SortExpression="PostalCode" />
          <asp:BoundField DataField="Country" HeaderText="Country" 
            SortExpression="Country" />
          <asp:BoundField DataField="Phone" HeaderText="Phone" 
            SortExpression="Phone" />
          <asp:BoundField DataField="Fax" HeaderText="Fax" 
            SortExpression="Fax" />
          <asp:CommandField ShowEditButton="True" 
            ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
      </asp:DetailsView>                  
    </div>
    </form>
</body>
</html>
