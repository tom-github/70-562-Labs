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

public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      { 
        TextBoxName.Text = Profile.Name;
        if (Profile.PostalCode > 0)
        {
          TextBoxPostal.Text = Profile.PostalCode.ToString();
        }
        if (Profile.ColorPreference.Length > 0) 
        {
          DropDownListColors.SelectedValue = Profile.ColorPreference.ToString();
        }
      }
    }

  protected void ButtonSave_Click(object sender, EventArgs e)
  {
    Profile.Name = TextBoxName.Text;
    Profile.PostalCode = short.Parse(TextBoxPostal.Text);
    Profile.ColorPreference = DropDownListColors.SelectedValue.ToString();

    Profile.Save();

    Response.Redirect("Default.aspx");
  }
}
