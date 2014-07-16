using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PubsServices
{
  [WebService(Namespace = "http://tempuri.org/")]
  public class Authors
  {

    private string _cnnString =
      ConfigurationManager.ConnectionStrings["PubsConnectionString"].ToString();

    [WebMethod(CacheDuration = 300)]
    public DataTable GetAuthorTitles(string authorId)
    {
      string sql = "select titles.title, titles.type, titles.price, " +
        "titles.pubdate from titleauthor INNER JOIN titles ON " +
        "titleauthor.title_id = titles.title_id ";
      if(authorId != "0") 
        sql = sql + " where (titleauthor.au_id = @AuthorId) ";

      SqlConnection cnn = new SqlConnection(_cnnString);
      SqlCommand cmd = new SqlCommand(sql, cnn);
      cmd.Parameters.Add("AuthorId", SqlDbType.VarChar, 11).Value = authorId;

      SqlDataAdapter adp = new SqlDataAdapter(cmd);
      DataSet ds = new DataSet();

      adp.Fill(ds);

      return ds.Tables[0];
    }


  }
}
