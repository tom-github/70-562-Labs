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
    if (!IsPostBack)
    {
      Sales salesDataSet = new Sales();

      salesDataSet.Customer.Rows.Add(Guid.NewGuid(), "A. Datum Corporation");
      salesDataSet.Customer.Rows.Add(Guid.NewGuid(), "Northwind Traders");
      salesDataSet.Customer.Rows.Add(Guid.NewGuid(), "Alpine Ski House");
      salesDataSet.Customer.Rows.Add(Guid.NewGuid(), "Coho Winery");
      salesDataSet.Customer.Rows.Add(Guid.NewGuid(), "Litware, Inc.");
      
      GridView1.DataSource = salesDataSet;
      DataBind();

    }
  }
}