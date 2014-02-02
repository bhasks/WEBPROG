<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>
        Please Login</h1>
    <form id="form1" runat="server">
    <p>
        <asp:Label ID="loginErrorLabel" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="Red" Text="login error" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Label ID="NameLbl" runat="server" Text="User Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
    &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="NameValidator" runat="server" 
            ControlToValidate="NameTextBox" ErrorMessage="You must enter your name" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <div>
    
        <asp:Label ID="PwdLbl" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PwdTextBox" runat="server" Columns="10" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewAccountInfo.aspx">need a new account?</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:Button ID="LogInBtn" runat="server" Text="Login" onclick="Button1_Click" 
            style="height: 26px" />
        <br />
    
    </div>
    </form>
</body>
</html>
