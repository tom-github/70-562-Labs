using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class ShowNameBackwards : System.Web.UI.UserControl
{
  [ConnectionConsumer("User name consumer", "GetName")]
  public void GetName(string Name)
  {
    char[] forwardsName = Name.ToCharArray();
    char[] backwardsName = Name.ToCharArray();
    int length = Name.Length - 1;

    for (int x = 0; x <= length; x++)
      backwardsName[x] = forwardsName[length - x];

    LabelBackwards.Text = "Your name backward is: " + 
      new string(backwardsName);
  }
}
