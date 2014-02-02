<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewAccountInfo.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 style="text-align: center">
        New Account Information</h1>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="FirstNameLbl" runat="server" Text="First Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="FirstNameTextBox" runat="server" 
                ontextchanged="FirstNameTextBox_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="firstNameRequiredFieldValidator" runat="server" 
                ControlToValidate="FirstNameTextBox" Display="Dynamic" 
                ErrorMessage="First Name required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LastNameLbl" runat="server" Text="Last Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="LastNameRequiredFieldValidator" runat="server" 
                ControlToValidate="LastNameTextBox" Display="Dynamic" 
                ErrorMessage="Last Name required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="emailLabel" runat="server" Text="Email address"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="ProgramLabel" runat="server" Text="Program option"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ProgramList" runat="server" 
                onselectedindexchanged="ProgramList_SelectedIndexChanged">
                    <asp:ListItem Text="Web Developer Degree" Value="#FF0000" Selected="True" />
                    <asp:ListItem Text="ETSP Degree" Value="#0000FF" />
                    <asp:ListItem Text="NetworkTechnology Degree" Value="#008000" />
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="emailCheckBox" runat="server" Text="email me program updates" />
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" 
                ControlToValidate="emailTextBox" Display="Dynamic" Enabled="False" 
                ErrorMessage="email address required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="AccountButton" runat="server" Text="Create account" 
                onclick="AccountButton_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="ResetButton" runat="server" onclick="ResetButton_Click" 
                Text="Reset" />
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
