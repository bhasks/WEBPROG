<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data" %>
<script RunAt="server">
    
    /*
* Initialize a new DataTable variable for the application,
* define the data types in its columns
*/

    void Application_Start(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn("session_id", System.Type.GetType("System.String")));
        dt.Columns.Add(new DataColumn("username", System.Type.GetType("System.String")));
        dt.Columns.Add(new DataColumn("login_time", System.Type.GetType("System.DateTime")));
        dt.Columns.Add(new DataColumn("ip_address", System.Type.GetType("System.String")));
        // store the DataTable as an Application variable
        Application["visitorTable"] = dt;

        string file = Server.MapPath("~/App_Data/visitors.xml");

        XDocument doc;

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Session["sessionID"] = Session.SessionID;
        Session["userName"] = String.Empty;
        Session["logInTime"] = DateTime.Now;
        Session["ipAddress"] = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
        Session["password"] = "password";
    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
