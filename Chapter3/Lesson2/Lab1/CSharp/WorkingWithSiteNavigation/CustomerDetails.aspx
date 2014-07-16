<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerDetails.aspx.cs" Inherits="CustomerDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="font-family: Arial">
    <form id="form1" runat="server">
    <div>
      <asp:SiteMapDataSource ID="SiteMapDataSourceMenu" 
        ShowStartingNode="false" runat="server"  />
      <asp:SiteMapDataSource ID="SiteMapDataSourceTree" runat="server"  />      
      <table width="600" cellpadding="3" border="1" >
        <tr>
          <td colspan="2">
            <asp:Menu ID="Menu1" runat="server" 
              DataSourceID="SiteMapDataSourceMenu" Orientation="Horizontal"
              StaticMenuItemStyle-HorizontalPadding="10">
            </asp:Menu>
          </td>
        </tr>
        <tr>
          <td width="225">
            <asp:TreeView ID="TreeView1" runat="server"
              DataSourceID="SiteMapDataSourceTree" LeafNodeStyle-VerticalPadding="8">
            </asp:TreeView>
          </td>
          <td width="375" valign="top">
            <br />
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Size="Smaller">
            </asp:SiteMapPath>
          </td>
        </tr>
      </table>      
    </div>
    </form>
</body>
</html>
