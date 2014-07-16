<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AjaxEnabled._Default" %>

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
        <Scripts>
          <asp:ScriptReference Path="PassTextBox.js" />
        </Scripts>      
      </asp:ScriptManager>
      
      <script language="javascript" type="text/javascript">
        
        var app = Sys.Application;
        app.add_init(appInit);
        
        function appInit(sender, args) {
                    
          $create(AjaxEnabled.PassTextBox,  
            {weakCssClass : 'weak', mediumCssClass : 'medium', 
            strongCssClass : 'strong'}, 
            null, null, $get('TextBoxPassword'));                                              
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
        TextMode="Password" Width="200"></asp:TextBox> 
      <asp:Label ID="LabelStrength" runat="server" Text=""></asp:Label>
      <br /> 
      <input id="Button1" type="button" value="Submit" />

    
    </div>
    </form>
</body>
</html>
