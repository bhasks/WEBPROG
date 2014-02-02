<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 style="text-align: left">
        Automatic Password Generator</h1>
    <p style="text-align: left">
        Having a hard time thinking up a unique and memorable password?
        <br />
        Enter the information below to automatically generate possible passwords.
        </p>

    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Height="185px" Width="443px">
            <asp:Label ID="LastNameLbl" runat="server" Text="Last Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="LastNameTxtBox" runat="server"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" 
                ControlToValidate="LastNameTxtBox" Display="Dynamic" 
                ErrorMessage="Please enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="BirthYearLbl" runat="server" Text="Birth Year"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="BirthYearTxtBox" runat="server" 
                ontextchanged="BirthYearTxtBox_TextChanged"></asp:TextBox>
        
    
  
            &nbsp;&nbsp;
            <asp:RangeValidator ID="yearRangeValidator" runat="server" 
                ControlToValidate="BirthYearTxtBox" Display="Dynamic" 
                ErrorMessage="enter year between 1900 and 2050" ForeColor="Red" 
                MaximumValue="2050" MinimumValue="1900"></asp:RangeValidator>
            <br />
            <br />
            <asp:Label ID="FavoriteColorLbl" runat="server" Text="Favorite Color"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="FavColTxtBx" runat="server"></asp:TextBox>
&nbsp;
            <br />
            <br />
            <asp:Button ID="pwdSugBtn" runat="server" onclick="pwdSugBtn_Click" 
                Text="Suggested Password &gt;&gt;&gt;" Width="233px" />
            &nbsp;&nbsp;&nbsp;
   <asp:DropDownList ID="PwdList" runat="server" AutoPostBack="True" 
        onselectedindexchanged="PwdList_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="SuggestedPwd">Possible Passwords</asp:ListItem>
    </asp:DropDownList>
    <br />
    </asp:Panel>
      </div>
    </form>
</body>
</html>
