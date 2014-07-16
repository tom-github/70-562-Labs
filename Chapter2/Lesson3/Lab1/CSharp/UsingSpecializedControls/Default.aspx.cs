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
      Wizard1.ActiveStepIndex = 0;
      ImageMapOffice.HotSpotMode = HotSpotMode.PostBack;

      ImageMapOffice.HotSpots.Add(GetHotSpot("Office 2A", 0, 0, 50, 60));
      ImageMapOffice.HotSpots.Add(GetHotSpot("Office 2B", 51, 0, 100, 60));
      ImageMapOffice.HotSpots.Add(GetHotSpot("Office 2C", 101, 0, 150, 60));
      ImageMapOffice.HotSpots.Add(GetHotSpot("Office 2D", 151, 0, 200, 60));

      ImageMapOffice.HotSpots.Add(GetHotSpot("Hallway 2H1", 0, 61, 200, 90));

      ImageMapOffice.HotSpots.Add(GetHotSpot("Stairs", 0, 91, 25, 155));

      ImageMapOffice.HotSpots.Add( 
        GetHotSpot("Kitchen / Copy Room 2K1", 26, 91, 100, 155));

      ImageMapOffice.HotSpots.Add( 
        GetHotSpot("Conference Room 2CR1", 101, 91, 200, 155));

    }

  }

  private RectangleHotSpot GetHotSpot(string name, int left,
    int top, int right, int bottom)
  {
    RectangleHotSpot rhs = new RectangleHotSpot();

    rhs.PostBackValue = name;

    rhs.Left = left;
    rhs.Top = top;
    rhs.Right = right;
    rhs.Bottom = bottom;

    return rhs;

  }

  protected void ImageMapOffice_Click(object sender, ImageMapEventArgs e)
  {
    Label1.Text = e.PostBackValue;
  }


  protected void Wizard1_FinishButtonClick(
    object sender, WizardNavigationEventArgs e)
  {
    Wizard1.Visible = false;
    Response.Write("Thank you! Your request is being processed.");
  }

  protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
  {
    if (Wizard1.ActiveStep.Title == "Summary")
    {
      Label2.Text = "Summary Info:<br />"
      + "Room: " + Label1.Text + "<br />"
      + "Delivery Date: "
      + Calendar1.SelectedDate.ToShortDateString();
    }    
  }
}
