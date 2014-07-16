<%@ Control Language="C#" AutoEventWireup="true" CodeFile="GetName.ascx.cs" Inherits="GetName" %>
<asp:Label ID="Label1" runat="server" Text="Label">Enter name:</asp:Label>
<br />
<asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
<br />
<asp:Button ID="ButtonSubmit" runat="server" Text="Submit" 
  onclick="ButtonSubmit_Click" />