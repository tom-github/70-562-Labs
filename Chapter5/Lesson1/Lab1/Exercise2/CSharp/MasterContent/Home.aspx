<%@ Page Language="C#" MasterPageFile="~/Professional.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
  <div style="text-align: left; margin: 10px 0px 10px 25px">
    User Name:<br />
    <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
    <br /><br />
    Site Preference:<br />
    <asp:DropDownList ID="DropDownListSitePref" runat="server">
      <asp:ListItem Text="Professional" Value="Professional"></asp:ListItem>
      <asp:ListItem Text="Colorful" Value="Colorful"></asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" 
      onclick="ButtonSubmit_Click" />
  </div>
</asp:Content>

