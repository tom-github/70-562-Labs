<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<script language="javascript" type="text/javascript"> 
    function ValidatePassword(source, arguements) 
    { 
     var data = arguements.Value.split(''); 
     //start by setting false 
     arguements.IsValid=false; 
 
     //check length 
     if(data.length < 6 || data.length > 14) return; 
      
     //check for uppercase 
     var uc = false; 
     for(var c in data) 
     { 
        if(data[c] >= 'A' && data[c] <= 'Z') 
        { 
           uc=true; break; 
        } 
     } 
     if(!uc) return; 
 
     //check for lowercase 
     var lc = false; 
     for(var c in data) 
     { 
        if(data[c] >= 'a' && data[c] <= 'z') 
        { 
           lc=true; break; 
        } 
     } 
     if(!lc) return; 
 
     //check for numeric 
     var num = false; 
     for(var c in data) 
     { 
        if(data[c] >= '0' && data[c] <= '9') 
        { 
           num=true; break; 
        } 
     } 
     if(!num) return; 
 
     //must be valid 
     arguements.IsValid=true; 
    } 
</script>
<body style="font-family: Arial">
    <form id="form1" runat="server">
    <div>
        <table width="500">
            <tr>
                <td colspan="2" style="font-size: x-large">User Registration<br />&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="font-size: small">
                    <asp:ValidationSummary ID="ValidationSummaryPage" runat="server" />
                </td>
            </tr>
            <tr>
                <td>User name:</td>
                <td>
                    <asp:TextBox ID="TextBoxUserName" runat="server" Width="200"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorUserName" 
                        Text="*" runat="server" ControlToValidate="TextBoxUserName"
                        ErrorMessage="Please enter only alpha-numeric characters (and no spaces)."
                        ToolTip="Please enter only alpha-numeric characters (and no spaces)."
                        ValidationExpression="\w{6,14}">
                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" 
                        Text="*" ErrorMessage="User name is required"
                        ControlToValidate="TextBoxUserName"
                        ToolTip="User name is required"></asp:RequiredFieldValidator>                        
                </td>
            </tr>        
            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="200"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                        Text="*" runat="server" ControlToValidate="TextBoxEmail"
                        ErrorMessage="Please enter a valid email address."
                        ToolTip="Please enter a valid email address."
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
                        Text="*" ErrorMessage="Email is required"
                        ControlToValidate="TextBoxEmail"
                        ToolTip="Email is required"></asp:RequiredFieldValidator>
                </td>
            </tr>        
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="200"
                        TextMode="Password"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidatorPassword" runat="server" 
                        Text="*" ControlToValidate="TextBoxPassword"
                        ErrorMessage="Please enter 6-14 characters, at least 1 uppercase letter, 1 lowercase letter, and 1 number"
                        ToolTip="Please enter 6-14 characters, at least 1 uppercase letter, 1 lowercase letter, and 1 number"
                        ClientValidationFunction="ValidatePassword" 
                        onservervalidate="CustomValidatorPassword_ServerValidate">
                    </asp:CustomValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" 
                        Text="*" ErrorMessage="Password is required"
                        ControlToValidate="TextBoxPassword"
                        ToolTip="Password is required"></asp:RequiredFieldValidator>
                </td>
            </tr>        
            <tr>
                <td>Confirm Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="200"
                      TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidatorConfirmPassword" runat="server" 
                        Text="*" ControlToValidate="TextBoxConfirmPassword"
                        ControlToCompare="TextBoxPassword"
                        ErrorMessage="Both password fields must match."
                        ToolTip="Both password fields must match.">                    
                    </asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" 
                        Text="*" ErrorMessage="Confirm password field is required"
                        ControlToValidate="TextBoxConfirmPassword"
                        ToolTip="Confirm password field is required"></asp:RequiredFieldValidator>
                </td>
            </tr>        
            <tr>
                <td></td>
                <td>                
                    <asp:Button ID="ButtonRegister" runat="server" Text="Register" />
                </td>
            </tr>        
        </table>
    </div>
    </form>
</body>
</html>
