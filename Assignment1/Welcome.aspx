<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Default2" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Xml" %>

<script runat="server">

    /**
     *
     *	XML data-driven page
     */
    //DataSet soup;
    
    //   void Page_Load()
    //   {
    //       string xmlFilename = Server.MapPath("~/App_Data/visitors.xml");
    //       XDocument doc;
    //       doc = XDocument.Load(xmlFilename);
    //       soup = new DataSet();
    //       soup.ReadXml(xmlFilename);
    //       visitor.DataSource = soup;
    //       visitor.DataBind();
    //   }

       //protected void ian_SelectedIndexChanged(object sender, EventArgs e)
       //{

       //}
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <asp:Panel ID="Panel1" runat="server" Wrap="False">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="TimeLbl" runat="server" Text="Label" Visible="False" 
            Width="500px"></asp:Label>
    </asp:Panel>
    <asp:Panel ID = "GreetingPanel" runat= "server">
       <asp:Label ID="GreetingLabel" runat="server" Text="Greeting" Visible="False" 
            Font-Bold="True" Font-Size="XX-Large" style="text-align: center"></asp:Label>
        </asp:Panel>
        

         <p class="style1">
        Other users with active sessions in this ASP application....  
        </p>    
        
        <asp:GridView id="visitor" runat="server" 
            onselectedindexchanged="visitor_SelectedIndexChanged"></asp:GridView>
    </form>
   


</body>
</html>
