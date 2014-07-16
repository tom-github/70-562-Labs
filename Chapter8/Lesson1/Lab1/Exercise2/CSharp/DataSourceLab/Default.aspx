<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      <asp:ObjectDataSource runat="server"
        ID="ObjectDataSource1"         
        TypeName="Shipper" 
        SelectMethod="GetAllShippers" 
        InsertMethod="InsertShipper" 
        DeleteMethod="DeleteShipper"
        UpdateMethod="UpdateShipper">
        <DeleteParameters>
          <asp:Parameter Name="shipperId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
          <asp:Parameter Name="shipperId" Type="Int32" />
          <asp:Parameter Name="companyName" Type="String" />
          <asp:Parameter Name="phone" Type="String" />
        </UpdateParameters>
        <InsertParameters>
          <asp:Parameter Name="companyName" Type="String" />
          <asp:Parameter Name="phone" Type="String" />
        </InsertParameters>
      </asp:ObjectDataSource>
   
      <asp:DetailsView 
        ID="DetailsView1" 
        runat="server"
        AllowPaging="True"
        DataSourceID="ObjectDataSource1" 
        AutoGenerateRows="False" 
        Width="450px" 
        DataKeyNames="ShipperID">
        <Fields>
          <asp:BoundField DataField="ShipperID" HeaderText="ShipperId" 
            ReadOnly="true" InsertVisible="false" />
          <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />
          <asp:BoundField DataField="Phone" HeaderText="Phone" />
          <asp:CommandField 
            ShowInsertButton="True" 
            ShowDeleteButton="True" 
            ShowEditButton="True" />
        </Fields>
      </asp:DetailsView>
   
    </div>
    </form>
</body>
</html>
