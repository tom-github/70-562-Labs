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

public partial class AddressControl : System.Web.UI.UserControl
{
    public string Address
    {
      get { return TextBoxAddress.Text; }
      set { TextBoxAddress.Text = value; }
    }
    public string City
    {
      get { return TextBoxCity.Text; }
      set { TextBoxCity.Text = value; }
    }
    public string State
    {
      get { return TextBoxState.Text; }
      set { TextBoxState.Text = value; }
    }
    public string Zip
    {
      get { return TextBoxZip.Text; }
      set { TextBoxZip.Text = value; }
    }

    public event SaveButtonClickHandler SaveButtonClick;

    protected void ButtonSave_Click(object sender, EventArgs e)
    {
      if (SaveButtonClick != null)
      {
        SaveButtonClick(this, new EventArgs());
      }
    }
}

public delegate void SaveButtonClickHandler(object sender, EventArgs e);