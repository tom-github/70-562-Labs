<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="250px" 
            Width="425px" BackColor="#F7F6F3" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em"
            CellPadding="2" onactivestepchanged="Wizard1_ActiveStepChanged" 
            onfinishbuttonclick="Wizard1_FinishButtonClick">
            <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Select Office">
                    <asp:ImageMap ID="ImageMapOffice" runat="server" 
                        ImageUrl="~/images/floorplan.jpg" ImageAlign="Middle" 
                        OnClick="ImageMapOffice_Click">
                    </asp:ImageMap>
                    <br />
                    <br />
                    Room Selected:
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Service Date">
                    <br />
                    Select Service Date<br />
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Summary">
                    <asp:Label ID="Label2" runat="server" Height="200px" Text="Label" Width="250px"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#284775" />
            <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" 
                VerticalAlign="Top" />
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
                Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
        </asp:Wizard>
    </div>
    </form>
</body>
</html>
