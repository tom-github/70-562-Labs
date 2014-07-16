using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.ComponentModel;
using System.Data.SqlClient;

[DataObject]
public static class Shipper
{

  private static string _cnnString =
    ConfigurationManager.ConnectionStrings[
    "NorthwindConnectionString"].ToString();

  [DataObjectMethod(DataObjectMethodType.Select)] 
  public static DataTable GetAllShippers() 
  {
    SqlDataAdapter adp = new SqlDataAdapter( 
      "select * from shippers", _cnnString);

    DataSet ds = new DataSet("shippers");
    adp.Fill(ds, "shippers");

    return ds.Tables["shippers"];
  }

  [DataObjectMethod(DataObjectMethodType.Insert)] 
  public static void InsertShipper(
    string companyName, string phone)
  {
    SqlConnection cnn = new SqlConnection(_cnnString);
    SqlCommand cmd = new SqlCommand(
      "insert into shippers (CompanyName, Phone) values(@CompanyName, @Phone)", cnn);

    cmd.Parameters.Add("@CompanyName", SqlDbType.VarChar, 40).Value = companyName;
    cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 24).Value = phone;

    cnn.Open();
    cmd.ExecuteNonQuery();
  }

  [DataObjectMethod(DataObjectMethodType.Update)] 
  public static void UpdateShipper(int shipperId, 
    string companyName, string phone)
  {
    SqlConnection cnn = new SqlConnection(_cnnString);
    SqlCommand cmd = new SqlCommand( 
      "update shippers set CompanyName=@CompanyName, phone=@Phone where ShipperId=@ShipperId", cnn);

    cmd.Parameters.Add("@ShipperId", SqlDbType.Int, 0).Value = shipperId;
    cmd.Parameters.Add("@CompanyName", SqlDbType.VarChar, 40).Value = companyName;
    cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 24).Value = phone;

    cnn.Open();
    cmd.ExecuteNonQuery();
  }

  [DataObjectMethod(DataObjectMethodType.Delete)]
  public static void DeleteShipper(int shipperId)
  {
    SqlConnection cnn = new SqlConnection(_cnnString);
    SqlCommand cmd = new SqlCommand(
      "delete shippers where ShipperId=@ShipperId", cnn);

    cmd.Parameters.Add("@ShipperId", SqlDbType.Int, 0).Value = shipperId;

    cnn.Open();
    cmd.ExecuteNonQuery();
  }
}
