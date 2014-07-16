using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;

namespace AjaxEnabled
{
  public class PassTextBox : TextBox, IScriptControl
  {

    private ScriptManager sMgr;

    public string WeakCssClass;
    public string MediumCssClass;
    public string StrongCssClass;

    protected virtual IEnumerable<ScriptDescriptor> GetScriptDescriptors()
    {
      ScriptControlDescriptor descriptor =
        new ScriptControlDescriptor("AjaxEnabled.PassTextBox", this.ClientID);

      descriptor.AddProperty("weakCssClass", this.WeakCssClass);
      descriptor.AddProperty("mediumCssClass", this.MediumCssClass);
      descriptor.AddProperty("strongCssClass", this.StrongCssClass);

      return new ScriptDescriptor[] { descriptor };
    }

    protected override void OnPreRender(EventArgs e)
    {
      if (!this.DesignMode)
      {
        //test for the existense of a ScriptManager 
        sMgr = ScriptManager.GetCurrent(Page);

        if (sMgr == null)
          throw new HttpException(
            "A ScriptManager control must exist on the page.");

        sMgr.RegisterScriptControl(this);
      }

      base.OnPreRender(e);
    }

    protected override void Render(HtmlTextWriter writer)
    {
      if (!this.DesignMode)
        sMgr.RegisterScriptDescriptors(this);

      base.Render(writer);
    }

    protected virtual IEnumerable<ScriptReference> GetScriptReferences()
    {
      ScriptReference reference = new ScriptReference();
      reference.Assembly = "AjaxEnabled";
      reference.Name = "AjaxEnabled.PassTextBox.js";

      return new ScriptReference[] { reference };
    }

    IEnumerable<ScriptReference> IScriptControl.GetScriptReferences()
    {
      return GetScriptReferences();
    }

    IEnumerable<ScriptDescriptor> IScriptControl.GetScriptDescriptors()
    {
      return GetScriptDescriptors();
    }
  }
}