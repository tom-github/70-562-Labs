<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddressControl.ascx.cs" Inherits="AddressControl" %>
<div>
  Address
  <br />
  <asp:TextBox ID="TextBoxAddress" runat="server" Width="275px" 
    Height="80px" TextMode="MultiLine"></asp:TextBox>  
  <div style="width: 280px">
    <div style="float: left; margin-right: 3px">
      City
      <br />
      <asp:TextBox ID="TextBoxCity" runat="server" Width="150"></asp:TextBox>
    </div>  
    <div style="float: left; margin-right: 3px">
      State
      <br />
      <asp:TextBox ID="TextBoxState" runat="server" Width="30"></asp:TextBox>
    </div>    
    <div style="float: left">
      Zip
      <br />
      <asp:TextBox ID="TextBoxZip" runat="server" Width="70"></asp:TextBox>
    </div>
  </div>
  <asp:Button ID="ButtonSave" runat="server" Text="Save" 
    onclick="ButtonSave_Click" />
</div>