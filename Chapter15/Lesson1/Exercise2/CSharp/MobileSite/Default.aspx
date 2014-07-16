<%@ Page Language="C#" AutoEventWireup="true"  
  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register TagPrefix="mobile" 
  Namespace="System.Web.UI.MobileControls" 
  Assembly="System.Web.Mobile" %>
  
<html xmlns="http://www.w3.org/1999/xhtml" >
<body>
  
  <mobile:Form id="FormMain" runat="server" 
    Title="Select a Search Method">
    <mobile:List ID="ListMainMenu" Runat="server" 
    OnItemCommand="ListMainMenu_ItemCommand">
      <Item Text="By Name" Value="1" />
      <Item Text="By ID" Value="2" />
      <Item Text="By Category" Value="3" />
    </mobile:List>
  </mobile:Form>
  
  <mobile:Form id="FormSearchName" runat="server" 
    Title="Enter Name">
    <mobile:Label ID="LabelSearchName" Runat="server">Enter Name</mobile:Label>    
    <mobile:TextBox ID="TextBoxSearchName" Runat="server"></mobile:TextBox>
    <mobile:Command ID="CommandSearchName" Runat="server" OnClick="CommandSearchName_Click">Search</mobile:Command>
  </mobile:Form>

  <mobile:Form id="FormSearchId" runat="server" 
    Title="Enter ID">
    <mobile:Label ID="LabelSearchId" Runat="server">Enter ID</mobile:Label>    
    <mobile:TextBox ID="TextBoxSearchId" Runat="server"></mobile:TextBox>
    <mobile:Command ID="Command1" Runat="server" OnClick="CommandSearchId_Click">Search</mobile:Command>
  </mobile:Form>


  <mobile:Form id="FormSearchCategory" runat="server" 
    Title="Select a Category">
    <mobile:List Runat="server" ID="ListCategory" OnItemCommand="ListCategory_ItemCommand"></mobile:List>
  </mobile:Form>

  <mobile:Form id="FormResults" runat="server" 
    Title="Search Results">
    <mobile:ObjectList Runat="server" ID="ObjectListResults">
    </mobile:ObjectList>
  </mobile:Form>
  
</body>
</html>
