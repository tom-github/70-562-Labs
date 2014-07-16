using System;
using System.Linq;
using System.Configuration;
using System.Data.Linq;

public partial class LinqToSql : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        ConnectionStringSettings nwConnect =
          ConfigurationManager.ConnectionStrings[
          "NorthwindConnectionString"];

        NorthwindClassesDataContext nw = new
          NorthwindClassesDataContext(nwConnect.ConnectionString);

        var query =
          from order in nw.Orders
          where order.ShipRegion == "OR"
          orderby order.ShippedDate
          select order;

        GridView1.DataSource = query.ToArray();
        GridView1.DataBind();
      }
    }
}
