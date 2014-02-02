using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Validate();
        if (IsValid)
        {
            if (PwdTextBox.Text == String.Empty)
            {
                Server.Transfer("password.aspx");
            }
            else if (PwdTextBox.Text == "password" || PwdTextBox.Text == (string)Session["password"])
            {
                Session["userName"] = NameTextBox.Text;
                

                DataTable dt = (DataTable)Application["visitorTable"];
                dt.Rows.Add(new object[] { (string)Session["sessionID"], (string)Session["userName"], (System.DateTime)Session["loginTime"], (string)Session["ipAddress"] });
                DataTable dtCopy = dt.Copy();
                DataSet ds = new DataSet();

                ds.Tables.Add(dtCopy);

                string xmlFilename = Server.MapPath("~/App_Data/visitors.xml");
                //XDocument doc;
                //doc = XDocument.Load(xmlFilename);

                ds.WriteXml(xmlFilename);
                //doc.Save(xmlFilename);

                //Application("visitorTable");
                
                Server.Transfer("Welcome.aspx");

            }
            else
            {
                loginErrorLabel.Visible = true;
                //loginErrorLabel.Text.Insert(loginErrorLabel.Text.Length, "   Please try logging in again");

            }
        }
    }
}