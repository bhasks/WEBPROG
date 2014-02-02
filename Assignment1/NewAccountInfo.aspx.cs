using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AccountButton_Click(object sender, EventArgs e)
    {
        if (!emailCheckBox.Checked)
        {
            emailRequiredFieldValidator.Enabled = false;
            firstNameRequiredFieldValidator.Validate();
            LastNameRequiredFieldValidator.Validate();
        }
        else
        {
            firstNameRequiredFieldValidator.Validate();
            LastNameRequiredFieldValidator.Validate();
            emailRequiredFieldValidator.Enabled = true;
            emailRequiredFieldValidator.Validate();
        }
        
        Server.Transfer("Password.aspx");
    }
    protected void ProgramList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void FirstNameTextBox_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ResetButton_Click(object sender, EventArgs e)
    {
        FirstNameTextBox.Text = String.Empty;
        LastNameTextBox.Text = String.Empty;
        emailTextBox.Text = String.Empty;
        emailCheckBox.Checked = false;
        
    }
}