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
    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        LabelInformation.Text = "User information saved.";
    }
    protected void CheckBoxAdmin_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBoxAdmin.Checked)
        {
            CheckBoxAdmin.Text = "System Administrator";
        }
        else 
        {
            CheckBoxAdmin.Text = "Check to set as system administrator";
        }
    }
}
