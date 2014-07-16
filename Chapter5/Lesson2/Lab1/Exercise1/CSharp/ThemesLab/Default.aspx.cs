using System;
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

public partial class _Default : System.Web.UI.Page
{
  protected void Page_PreInit(object sender, EventArgs e)
  {
    if (Session["theme"] != null)
    {
      Page.Theme = (string)Session["theme"];
    }
  }

  protected void ButtonSubmit_Click(object sender, EventArgs e)
  {
    string theme = Page.Theme;

    //switch themes
    if (theme == "Contoso")
    {
      Session["theme"] = "Fabrikam";
    }
    else
    {
      Session["theme"] = "Contoso";
    }
  }
}
