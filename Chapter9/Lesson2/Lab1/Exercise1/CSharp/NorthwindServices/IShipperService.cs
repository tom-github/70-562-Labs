using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace NorthwindServices
{
  [ServiceContract]
  public interface IShipperService
  {
    [OperationContract]
    Shipper GetShipper(int shipperId);

    [OperationContract]
    void SaveShipper(Shipper shipper);
  }

  [DataContract]
  public class Shipper
  {
    [DataMember]
    public int ShipperId { get; set; }

    [DataMember]
    public string CompanyName { get; set; }

    [DataMember]
    public string Phone { get; set; }
  }
}
