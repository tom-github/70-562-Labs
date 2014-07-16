using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.MobileControls.MobilePage 
{
  private string _cnnString =
    ConfigurationManager.ConnectionStrings[
    "NorthwindConnectionString"].ToString();

  private DataTable GetProducts() 
  {
    SqlDataAdapter adp = new SqlDataAdapter( 
      "select * from products", _cnnString);

    DataSet ds = new DataSet("products");
    adp.Fill(ds, "products");

    return ds.Tables["products"];
  }

  private DataTable GetCategories() 
  {
    SqlDataAdapter adp = new SqlDataAdapter( 
      "select * from categories", _cnnString);

    DataSet ds = new DataSet("categories");
    adp.Fill(ds, "categories");

    return ds.Tables["categories"];
  }

  protected void ListMainMenu_ItemCommand(object sender , 
    System.Web.UI.MobileControls.ListCommandEventArgs e)
  {
    if (e.ListItem.Value == "1")
    {
      //search by name
      this.ActiveForm = FormSearchName;
    }
    else if (e.ListItem.Value == "2")
    {
      //search by ID
      this.ActiveForm = FormSearchId;
    } 
    else if (e.ListItem.Value == "3")
    {
      //search by category
      this.ActiveForm = FormSearchCategory;
      ListCategory.DataSource = GetCategories();
      ListCategory.DataTextField = "CategoryName";
      ListCategory.DataValueField = "CategoryID";
      ListCategory.DataBind();    
    }
  }

  protected void CommandSearchId_Click(object sender, EventArgs e)
  {
    DataTable products = GetProducts();
    products.DefaultView.RowFilter =
      String.Format("ProductID = {0}", TextBoxSearchId.Text);

    ShowResults(products);
  }

  protected void CommandSearchName_Click(object sender, EventArgs e) 
  {
    DataTable products = GetProducts();
    products.DefaultView.RowFilter =
      String.Format("ProductName like '{0}%'", TextBoxSearchName.Text);

    ShowResults(products);
  }

  protected void ListCategory_ItemCommand(object sender, 
    System.Web.UI.MobileControls.ListCommandEventArgs e)
  {
    DataTable products = GetProducts();
    products.DefaultView.RowFilter =
      String.Format("CategoryID = {0}", e.ListItem.Value);

    ShowResults(products);
  }

  private void ShowResults(DataTable data)
  {
    ObjectListResults.DataSource = data.DefaultView;
    ObjectListResults.LabelField = "ProductName";
    ObjectListResults.DataBind();
    this.ActiveForm = FormResults;
  }

}
