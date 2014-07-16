<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="font-family: Verdana">

  <form id="form2" runat="server"> 
    <div> 
     <asp:GridView ID="GridView1" runat="server"  
      Style="z-index: 100; left: 55px; position: absolute;top: 15px" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
       <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
       <RowStyle BackColor="#EFF3FB" />
       <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
       <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
       <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
       <EditRowStyle BackColor="#2461BF" />
       <AlternatingRowStyle BackColor="White" />
     </asp:GridView> 
    </div> 
  </form>

</body>
</html>
