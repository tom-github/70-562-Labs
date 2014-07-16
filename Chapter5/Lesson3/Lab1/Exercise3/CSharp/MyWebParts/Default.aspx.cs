using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class _Default : System.Web.UI.Page 
{
  void Page_Init(object sender, EventArgs e)
  {
    Page.InitComplete += new EventHandler(GenerateModeList);
  }

  protected void GenerateModeList(object sender, EventArgs e)
  {
    WebPartManager _manager = WebPartManager.GetCurrentWebPartManager(Page);
    String browseModeName = WebPartManager.BrowseDisplayMode.Name;
    DropDownListModes.Items.Clear();

    //fill the drop-down list with the names of supported display modes. 
    foreach (WebPartDisplayMode mode in _manager.SupportedDisplayModes)
    {
      String modeName = mode.Name;
      //make sure a mode is enabled before adding it. 
      if (mode.IsEnabled(_manager))
      {
        ListItem item = new ListItem(modeName, modeName);
        DropDownListModes.Items.Add(item);
      }
    }

    //select the current mode 
    ListItemCollection items = DropDownListModes.Items;
    int selectedIndex = items.IndexOf(items.FindByText(_manager.DisplayMode.Name));
    DropDownListModes.SelectedIndex = selectedIndex;
  }


  protected void DropDownListModes_SelectedIndexChanged(
    object sender, EventArgs e)
  {
    WebPartManager manager = 
      WebPartManager.GetCurrentWebPartManager(Page);
    
    WebPartDisplayMode mode = 
      manager.SupportedDisplayModes[DropDownListModes.SelectedValue];
    
    if (mode != null)
      manager.DisplayMode = mode;
  }

}
