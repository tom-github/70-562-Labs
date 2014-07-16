<!--page directives--> 
<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--code--> 
<script runat="server"> 
    private void OnSubmit(Object sender, EventArgs args) {
        LabelReponse.Text = "Hello " + TextBoxName.Text;         
    } 
</script> 

<!--page layout--> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Sample Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Enter Name: <asp:TextBox ID="TextBoxName" 
          runat="server"></asp:TextBox>
        
        <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" 
          OnClick="OnSubmit" />
        
        <br />
        
        <asp:Label ID="LabelReponse" 
          runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>

</html>
