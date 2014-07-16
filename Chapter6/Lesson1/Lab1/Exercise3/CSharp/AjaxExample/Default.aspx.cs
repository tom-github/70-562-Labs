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
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonEnter_Click(object sender, EventArgs e)
    {
    
      System.Configuration.Configuration webConfig = 
        System.Web.Configuration.WebConfigurationManager.
        OpenWebConfiguration("/AjaxExample");

      string cnnStr = 
        webConfig.ConnectionStrings.ConnectionStrings[
        "ConnectionStringVendors"].ConnectionString;

      SqlConnection cnn = new SqlConnection(cnnStr);
      SqlCommand cmd = new SqlCommand("insert_vendor", cnn);
      cmd.CommandType = CommandType.StoredProcedure;

      SqlParameter pName = new SqlParameter("@name", SqlDbType.VarChar);
      pName.Value = TextBoxName.Text;
      cmd.Parameters.Add(pName);

      SqlParameter pLocation = new SqlParameter("@location", SqlDbType.VarChar);
      pLocation.Value = TextBoxLocation.Text;
      cmd.Parameters.Add(pLocation);

      SqlParameter pContactName = new SqlParameter("@contact_name", 
        SqlDbType.VarChar);
      pContactName.Value = TextBoxContact.Text;
      cmd.Parameters.Add(pContactName);

      SqlParameter pContactPhone = new SqlParameter("@contact_phone", 
        SqlDbType.VarChar);
      pContactPhone.Value = TextBoxPhone.Text;
      cmd.Parameters.Add(pContactPhone);

      cnn.Open();
      cmd.ExecuteNonQuery();

      //rebind the grid
      GridView1.DataBind();

      System.Threading.Thread.Sleep(2000);

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
      if (Image1.ImageUrl == "~/images/contoso.png")
      {
        Image1.ImageUrl = "~/images/fabrikam.png";
      }
      else
      {
        Image1.ImageUrl = "~/images/contoso.png";
      }
    }
}
