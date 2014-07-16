using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      Application.Lock();
      Application["clicks"] = ((int)Application["clicks"]) + 1;
      Application.UnLock();

      LabelApplicationClicks.Text = "Application clicks: " +
        Application["clicks"].ToString();

      Session["session_clicks"] =
        (int)Session["session_clicks"] + 1;

      LabelSessionClicks.Text = "Session clicks: "
        + Session["session_clicks"].ToString();

    }
}
