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

public class ImageHandler : IHttpHandler
{
	public ImageHandler()
	{
	}

  public bool IsReusable
  {
    get { return false; }
  }

  public void ProcessRequest(HttpContext context)
  {
    context.Response.ContentType = "image/jpeg";
    context.Response.TransmitFile(@"C:\Users\Public\Pictures\Sample Pictures\" + 
      "dock.jpg");
  }

}
