using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class GetName : System.Web.UI.UserControl
{
  private string _name = string.Empty;

  protected void ButtonSubmit_Click(object sender, EventArgs e)
  {
    _name = TextBoxName.Text;
  }

  [ConnectionProvider("User name provider", "GetUserName")]
  public string GetUserName()
  {
    return _name;
  }

}
