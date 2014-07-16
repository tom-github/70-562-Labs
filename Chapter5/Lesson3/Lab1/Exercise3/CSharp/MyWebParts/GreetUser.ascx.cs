using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class GreetUser : System.Web.UI.UserControl
{
  [ConnectionConsumer("User name consumer", "GetName")]
  public void GetName(string Name)
  {
    LabelGreeting.Text = "Welcome, " + Name + "!";
  } 

}
