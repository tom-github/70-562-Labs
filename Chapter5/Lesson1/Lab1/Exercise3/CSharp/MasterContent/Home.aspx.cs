﻿using System;
using System.Collections;
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

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      if (Session["UserName"] != null)
      {
        Label welcome = (Label)Master.FindControl("LabelWelcome");
        welcome.Text = "Welcome, " + Session["UserName"] + "!";
      } 
    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
      if (Session["Template"] != null)
        MasterPageFile = (String)Session["Template"] + ".master";
    }

  protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
      if (TextBoxUserName.Text != "")
      {
        Session["UserName"] = TextBoxUserName.Text;
        Label welcome = (Label)Master.FindControl("LabelWelcome");
        welcome.Text = "Welcome, " + Session["UserName"] + "!";
      }
    }
    protected void DropDownListSitePref_SelectedIndexChanged(
      object sender, EventArgs e)
    {
      Session["Template"] = DropDownListSitePref.SelectedValue;
    }
}