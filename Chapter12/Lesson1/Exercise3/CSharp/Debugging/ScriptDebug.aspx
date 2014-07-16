<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ScriptDebug.aspx.cs" Inherits="ScriptDebug" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Untitled Page</title>

  <script language="javascript" type="text/jscript">

    function buttonClick() {
      alert('Button clicked.');
    }

  </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>    
      <input id="Button1" type="button" 
        value="button" onclick="buttonClick()" />
    </div>
    </form>
</body>
</html>
