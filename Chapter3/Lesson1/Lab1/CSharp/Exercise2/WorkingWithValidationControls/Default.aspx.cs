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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidatorPassword_ServerValidate(
      object source, ServerValidateEventArgs args)
    {

      string data = args.Value;
      //start by setting false 
      args.IsValid = false;

      //check length 
      if (data.Length < 6 || data.Length > 14) return;

      //check for uppercase 
      bool uc = false;
      foreach (char c in data)
      {
        if (c >= 'A' && c <= 'Z')
        {
          uc = true; break;
        }
      }
      if (!uc) return;

      //check for lowercase 
      bool lc = false;
      foreach (char c in data)
      {
        if (c >= 'a' && c <= 'z')
        {
          lc = true; break;
        }
      }
      if (!lc) return;

      //check for numeric 
      bool num = false;
      foreach (char c in data)
      {
        if (c >= '0' && c <= '9')
        {
          num = true; break;
        }
      }
      if (!num) return;

      //must be valid 
      args.IsValid = true; 


    }
}
