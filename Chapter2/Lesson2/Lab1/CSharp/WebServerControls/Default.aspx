<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="LabelInformation" runat="server"></asp:Label>        
        <br />
        <br />
        User Name<br />
        <asp:TextBox ID="TextBoxUserName" runat="server" MaxLength="12"></asp:TextBox>
        <br />
        <br />
        <asp:CheckBox ID="CheckBoxAdmin" runat="server" Text="System Administrator" 
            AutoPostBack="True" oncheckedchanged="CheckBoxAdmin_CheckedChanged" />
        <br />
        <br />
        Applicaiton role:
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="User" 
            GroupName="ApplicationRole" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="Manager" 
            GroupName="ApplicationRole" />
&nbsp;<asp:RadioButton ID="RadioButton3" runat="server" Text="Director" 
            GroupName="ApplicationRole" />
        <br />
        <br />
        <asp:Button ID="ButtonSave" runat="server" Text="Save" 
            onclick="ButtonSave_Click" />    
    </div>
    </form>
</body>
</html>
