<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <title>User Profile</title>
</asp:Content>

<asp:Content ID="Content2" 
  ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">

  <h2>User Profile</h2>
  
  Name<br />
  <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
  <br /><br />
  Postal Code<br />
  <asp:TextBox ID="TextBoxPostal" runat="server"></asp:TextBox>
  <br /><br />
  Background Preference<br />
  <asp:DropDownList ID="DropDownListColors" runat="server">
    <asp:ListItem Text="White" Value="White"></asp:ListItem>
    <asp:ListItem Text="Yellow" Value="Yellow"></asp:ListItem>
    <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
  </asp:DropDownList>
  <br /><br />
  
  <asp:Button ID="ButtonSave" runat="server" Text="Save" 
    onclick="ButtonSave_Click" />
  
</asp:Content>