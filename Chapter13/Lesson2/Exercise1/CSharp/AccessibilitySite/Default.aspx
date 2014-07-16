<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
          <span style="color: #ffcc33"></span>
          <asp:Image ID="Image1" runat="server" ImageUrl="contoso-logo.gif" AlternateText="Contoso, Inc. logo" />
        </div>

        <asp:Panel ID="Panel1" runat="server" GroupingText="Shipping Address">
          <table>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" AccessKey="n" AssociatedControlID="TextBox1"
                        Text="<u>N</u>ame:"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server" TabIndex="1"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" AccessKey="a" AssociatedControlID="TextBox2"
                        Text="<u>A</u>ddress"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server" TabIndex="2"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" AccessKey="c" AssociatedControlID="TextBox3"
                        Text="<u>C</u>ity:"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server" TabIndex="3"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" AccessKey="s" AssociatedControlID="TextBox4"
                        Text="<u>S</u>tate:"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server" TabIndex="4"></asp:TextBox></td>
            </tr>
          </table>
        </asp:Panel>
        
        <br />
        
        <asp:Panel ID="Panel2" runat="server" GroupingText="Billing Address">
          <table>
              <tr>
                  <td style="width: 100px">
                      <asp:Label ID="Label5" runat="server" AccessKey="m" AssociatedControlID="TextBox5"
                          Text="Na<u>m</u>e:"></asp:Label></td>
                  <td style="width: 100px">
                      <asp:TextBox ID="TextBox5" runat="server" TabIndex="5"></asp:TextBox></td>
              </tr>
              <tr>
                  <td style="width: 100px">
                      <asp:Label ID="Label6" runat="server" AccessKey="d" AssociatedControlID="TextBox6"
                          Text="A<u>d</u>dress"></asp:Label></td>
                  <td style="width: 100px">
                      <asp:TextBox ID="TextBox6" runat="server" TabIndex="6"></asp:TextBox></td>
              </tr>
              <tr>
                  <td style="width: 100px">
                      <asp:Label ID="Label7" runat="server" AccessKey="i" AssociatedControlID="TextBox7"
                          Text="C<u>i</u>ty:"></asp:Label></td>
                  <td style="width: 100px">
                      <asp:TextBox ID="TextBox7" runat="server" TabIndex="7"></asp:TextBox></td>
              </tr>
              <tr>
                  <td style="width: 100px">
                      <asp:Label ID="Label8" runat="server" AccessKey="t" AssociatedControlID="TextBox8"
                          Text="S<u>t</u>ate:"></asp:Label></td>
                  <td style="width: 100px">
                      <asp:TextBox ID="TextBox8" runat="server" TabIndex="8"></asp:TextBox></td>
              </tr>
          </table>
        </asp:Panel>
        
        <br />
        
    <asp:Button ID="Button2" runat="server" Text="Continue Shopping" TabIndex="9" />
    <asp:Button ID="Button1" runat="server" Text="Checkout" TabIndex="10" />    
  </div>
  
  </form>
</body>
</html>
