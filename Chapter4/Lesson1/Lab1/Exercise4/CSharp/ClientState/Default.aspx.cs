using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

  protected void Page_Load(object sender, EventArgs e)
  {

    if (!IsPostBack)
    {
      //read the query string
      int queryClicks;
      if (Request.QueryString["clicks"] != null)
      {
        queryClicks = int.Parse(Request.QueryString["clicks"]) + 1;
      }
      else
      {
        queryClicks = 1;
      }

      //define the query string in the hyperlink 
      HyperLink1.NavigateUrl += "?clicks=" + queryClicks.ToString();

      Label1.Text = "Query clicks: " + queryClicks.ToString();
    }
  }

}
