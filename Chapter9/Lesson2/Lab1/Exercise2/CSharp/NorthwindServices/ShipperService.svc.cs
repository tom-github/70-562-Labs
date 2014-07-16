using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NorthwindServices
{
  public class ShipperService : IShipperService
  {
    private string _cnnString =
      ConfigurationManager.ConnectionStrings["NwConnectionString"].ToString();

    public Shipper GetShipper(int shipperId)
    {
      string sql = "select shipperId, companyName, phone " +
        "from shippers where (shipperId = @ShipperId) ";

      SqlConnection cnn = new SqlConnection(_cnnString);

      SqlCommand cmd = new SqlCommand(sql, cnn);
      cmd.Parameters.Add("ShipperId", SqlDbType.Int, 0).Value = shipperId;

      SqlDataAdapter adp = new SqlDataAdapter(cmd);
      DataSet ds = new DataSet();

      adp.Fill(ds);

      Shipper s = new Shipper();
      s.ShipperId = shipperId;
      s.CompanyName = ds.Tables[0].Rows[0]["companyName"].ToString();
      s.Phone = ds.Tables[0].Rows[0]["phone"].ToString();

      return s;
    }

    public void SaveShipper(Shipper shipper)
    {
      string sql = "update Shippers set phone=@Phone, " +
        "companyName=@CompanyName where shipperId = @ShipperId ";

      SqlConnection cnn = new SqlConnection(_cnnString);
      SqlCommand cmd = new SqlCommand(sql, cnn);
      cmd.Parameters.Add("Phone", SqlDbType.NVarChar, 24).Value = shipper.Phone;
      cmd.Parameters.Add("CompanyName", SqlDbType.NVarChar, 40).Value = shipper.CompanyName;
      cmd.Parameters.Add("ShipperId", SqlDbType.Int, 0).Value = shipper.ShipperId;

      cnn.Open();
      cmd.ExecuteNonQuery();
      cnn.Close();
    }
  }
}
