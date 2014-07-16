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
  protected void Page_Init(object sender, EventArgs e)
  {
    AddressControl1.SaveButtonClick += this.AddressSave_Click;
  }
  protected void AddressSave_Click(object sender, EventArgs e)
  {
    System.Diagnostics.Debug.WriteLine("Address: " + AddressControl1.Address 
      + " City: " + AddressControl1.City + "State: " + AddressControl1.State 
      + "Zip: " + AddressControl1.Zip);
  }
}
