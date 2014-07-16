<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AjaxEnabled._Default" %>

<%@ Register Assembly="AjaxEnabled" Namespace="AjaxEnabled" TagPrefix="ajaxEnabled" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Ajax Password Text Box</title>
    <style type="text/css">
      .weak
      {
        border: thin solid #FF0000;
      }
      .medium
      {
        border: thin solid #FFFF00;
      }
      .strong
      {
        border: medium solid #008000;
      }
    </style>
</head>
<body style="font-family: Verdana">
    <form id="form1" runat="server">
    <div>

      <asp:ScriptManager ID="ScriptManager1" runat="server">
      </asp:ScriptManager>
      
      <div style="font-size: large; font-weight: bold">User Login</div>
      <hr />
      <br />
      User Name:
      <br />
      <asp:TextBox ID="TextBoxUserName" runat="server" Width="200"></asp:TextBox> 
      <br />
      Password:
      <br />
      <ajaxEnabled:PassTextBox ID="textbox1" runat="server" width="200" 
        TextMode="Password" WeakCssClass="weak" MediumCssClass="medium" 
        StrongCssClass="strong"></ajaxEnabled:PassTextBox>
      <br /> 
      <input id="Button1" type="button" value="Submit" />

    
    </div>
    </form>
</body>
</html>
