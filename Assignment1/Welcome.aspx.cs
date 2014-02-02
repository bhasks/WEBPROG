using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    DataSet soup;
    protected void Page_Load(object sender, EventArgs e)
    {
        string xmlFilename = Server.MapPath("~/App_Data/visitors.xml");
        XDocument doc;
        doc = XDocument.Load(xmlFilename);
        soup = new DataSet();
        soup.ReadXml(xmlFilename);
        visitor.DataSource = soup;
        visitor.DataBind();
        
        TimeLbl.Text = DateTime.Now.ToString();
        TimeLbl.Visible = true;
        GreetingLabel.Text = "Welcome " + (String)Session["userName"] + ". You Successfully logged on.";
        GreetingLabel.Visible = true;
    }
    protected void visitor_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}