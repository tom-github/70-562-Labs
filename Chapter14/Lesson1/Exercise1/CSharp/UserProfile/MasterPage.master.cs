using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      if (Profile.Name.Length > 0)
      {
        HyperLinkUserProfile.Text = "Welcome, " + Profile.Name;
      } 
      else
      {
        HyperLinkUserProfile.Text = "Set Profile";
      }

      if (Profile.ColorPreference.Length > 0)
      {
        Panel1.BackColor =
          System.Drawing.Color.FromName(Profile.ColorPreference);
      }
    }

}
