<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Ajax Example</title>
</head>
<body style="font-family: Verdana">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>    
      <div style="font-size: large;">Vendors</div>
      <hr />
      
      <div style="margin: 20px 0px 20px 40px">
        Name<br />
        <asp:TextBox ID="TextBoxName" runat="server" Width="200"></asp:TextBox>
        <br />
        Location<br />
        <asp:TextBox ID="TextBoxLocation" runat="server" Width="200"></asp:TextBox>
        <br />
        Contact Name<br />
        <asp:TextBox ID="TextBoxContact" runat="server" Width="200"></asp:TextBox>
        <br />
        Contact Phone<br />
        <asp:TextBox ID="TextBoxPhone" runat="server" Width="200"></asp:TextBox>
        <br />
        <asp:Button ID="ButtonEnter" runat="server" Text="Enter" 
          style="margin-top: 15px" onclick="ButtonEnter_Click" />
      </div>      
      
      <asp:UpdatePanel ID="UpdatePanelVendors" runat="server">
        <Triggers>
          <asp:AsyncPostBackTrigger ControlID="ButtonEnter" EventName="Click" />
        </Triggers>        
        <ContentTemplate>
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="id" 
            DataSourceID="SqlDataSourceVendors" Width="580px" Font-Size="Small" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
              <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
              <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
              <asp:BoundField DataField="location" HeaderText="Location" 
                SortExpression="location" />
              <asp:BoundField DataField="contact_name" HeaderText="Contact Name" 
                SortExpression="contact_name" />
              <asp:BoundField DataField="contact_phone" HeaderText="Contact Phone" 
                SortExpression="contact_phone" />
            </Columns>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSourceVendors" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringVendors %>" 
            SelectCommand="SELECT [id], [name], [location], [contact_name], [contact_phone] FROM [vendor] Order by [name]">
          </asp:SqlDataSource>
        </ContentTemplate>

      </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
