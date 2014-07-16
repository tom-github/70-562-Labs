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
using System.Globalization;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
      foreach (CultureInfo ci in CultureInfo.GetCultures(CultureTypes.NeutralCultures))
      {
        DropDownListLanguage.Items.Add(new ListItem(ci.NativeName, ci.Name));
      }
    }

    protected override void InitializeCulture()
    {
      if (Request.Form["DropDownListLanguage"] != null)
      {
        UICulture = Request.Form["DropDownListLanguage"];
      }
      base.InitializeCulture();
    }


}
