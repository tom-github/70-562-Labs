﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="LogoWebPart.ascx" tagname="LogoWebPart" tagprefix="uc1" %>
<%@ Register src="CalendarWebPart.ascx" tagname="CalendarWebPart" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>My Web Part Page</title>
</head>
<body>
    <form id="form1" runat="server">

    <asp:WebPartManager ID="WebPartManager1" runat="server">
    </asp:WebPartManager>

    <div style="width: 700px">
    
      <asp:WebPartZone ID="WebPartZoneTop" runat="server" 
        HeaderText="Top Zone" style="width: 700px; height: auto">
        <ZoneTemplate>
          <uc1:LogoWebPart ID="LogoWebPart1" runat="server" title="Logo" />
        </ZoneTemplate>
      </asp:WebPartZone>
      
      <asp:WebPartZone ID="WebPartZoneLeft" runat="server" 
        HeaderText="Left Zone" style="width: 300px; float: left; height: 300px;">
        <ZoneTemplate>
          <uc2:CalendarWebPart ID="CalendarWebPart1" runat="server" title="Calendar" />
        </ZoneTemplate>
      </asp:WebPartZone>
      
      <div style="width: 395px; float: right; height: auto; padding-left: 5px">        
        <asp:DropDownList ID="DropDownListModes" runat="server" AutoPostBack="true" 
          OnSelectedIndexChanged="DropDownListModes_SelectedIndexChanged">
        </asp:DropDownList>        
        
        <asp:EditorZone ID="EditorZone1" runat="server">
          <ZoneTemplate>
            <asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" />
            <asp:LayoutEditorPart ID="LayoutEditorPart1" runat="server" />
          </ZoneTemplate>
        </asp:EditorZone>

        <asp:CatalogZone ID="CatalogZone1" runat="server">
          <ZoneTemplate>
            <asp:DeclarativeCatalogPart ID="DeclarativeCatalogPart1" runat="server">
              <WebPartsTemplate>
                <uc1:LogoWebPart ID="LogoWebPart1" runat="server" title="Logo" />
                <uc2:CalendarWebPart ID="CalendarWebPart1" runat="server" title="Calendar" />              
              </WebPartsTemplate>            
            </asp:DeclarativeCatalogPart>
          </ZoneTemplate>
        </asp:CatalogZone>
        
      </div>
      
      <asp:WebPartZone ID="WebPartZoneBottom" runat="server" 
        HeaderText="Bottom Zone" style="width: 700px; height: auto;">
      </asp:WebPartZone>
    
    </div>

    </form>
</body>
</html>

