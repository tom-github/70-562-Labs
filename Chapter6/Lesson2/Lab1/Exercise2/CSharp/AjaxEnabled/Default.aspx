<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AjaxEnabled._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Password Strength Component</title>
</head>
<body style="font-family: Verdana">
    <form id="form1" runat="server">
    <div>
      
      <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Scripts>
          <asp:ScriptReference Path="~/PasswordStrengthComponent.js" />
        </Scripts>      
      </asp:ScriptManager>
      
      <script language="javascript" type="text/javascript">
        
        function _OnKeypress() {
          var checker = new AjaxEnabled.PasswordStrengthComponent();          
          var pass = document.getElementById("TextBoxPassword").value;
          var strength = checker.returnPasswordStrength(pass);
          document.getElementById("LabelStrength").innerText = strength;
        }

      </script>

      <div style="font-size: large; font-weight: bold">User Login</div>
      <hr />
      <br />
      User Name:
      <br />
      <asp:TextBox ID="TextBoxUserName" runat="server" Width="200"></asp:TextBox> 
      <br />
      Password:
      <br />
      <asp:TextBox ID="TextBoxPassword" runat="server" 
        TextMode="Password" Width="200" onkeyup="_OnKeypress()"></asp:TextBox> 
      <asp:Label ID="LabelStrength" runat="server" Text=""></asp:Label>
      <br /> 
      <input id="Button1" type="button" value="Submit" />
      
    </div>
    </form>
</body>
</html>
