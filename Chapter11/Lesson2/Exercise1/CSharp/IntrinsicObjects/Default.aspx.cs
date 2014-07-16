using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
      Response.Write(Response.StatusCode + ": " + 
        Response.StatusDescription);

      Response.Write(Context.Timestamp.ToString());

      if (Request.UrlReferrer != null)
        Response.Write(Request.UrlReferrer.ToString());
      else
        Response.Write("No referrer");

      foreach (string s in Request.UserLanguages)
        Response.Write(s + "<br>");

      Response.Write(Request.ApplicationPath);
      Response.Write(Request.FilePath);
      Response.Write(Server.MapPath(Request.FilePath));
      Response.Write(Server.UrlDecode(Request.Headers.ToString()).Replace("&", "<br>"));
      Response.Write(Request.HttpMethod);
      Response.Write(Request.IsAuthenticated.ToString());
      Response.Write(Request.IsLocal.ToString());
      Response.Write(Request.IsSecureConnection.ToString());
      Response.Write(Request.LogonUserIdentity.ToString());
      Response.Write(Request.TotalBytes.ToString());
      Response.Write(Request.UserAgent);
      Response.Write(Request.UserHostAddress);


    }
}
