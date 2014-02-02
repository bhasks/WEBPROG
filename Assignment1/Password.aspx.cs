using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void PwdList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["password"] = PwdList.SelectedItem.ToString();
        
        Server.Transfer("default.aspx");
    }
    protected void pwdSugBtn_Click(object sender, EventArgs e)
    {
         String lastName = String.Empty;
        //make sure that length is 4
        String birthYear = String.Empty;
        String color = String.Empty;
        int year;
        if(!Int32.TryParse(BirthYearTxtBox.Text, out year))
            yearRangeValidator.Validate();
        
        Validate();
        if(IsValid)
        {
           lastName = LastNameTxtBox.Text;
        //make sure that length is 4 and between 1900 and 2050
           birthYear = BirthYearTxtBox.Text;
           color = FavColTxtBx.Text;
        }
        char[] toReverse = birthYear.ToArray();
        Array.Reverse(toReverse);
        String birthYearReversed = new String(toReverse);

        string[] items = new string[5] { "", "", "", "", "" };


        if (lastName.Length > 4 && color.Length >= 4 && birthYear.Length == 4)
        {
            items[0] = lastName.Substring(0, 4) + color + lastName.Substring(4);
            items[1] = color + birthYear + lastName.Substring(0, 1);
            items[2] = birthYear.Substring(0, 2) + color + birthYear.Substring(2, 2);
            items[3] = birthYearReversed + lastName;
            items[4] = lastName.Substring(0, 1) + color + color + color;
        }
        else
        {

            for (int i = 0; i < 5; i++)
            {
                while (items[i].Length < 8)
                {
                    if (i == 0)
                    {
                        items[0] += lastName.Substring(0, lastName.Length) + color;
                    }
                    else if (i == 1)
                        items[1] += color + birthYear + lastName.Substring(0, 1);
                    else if (i == 2)
                        items[2] += birthYear.Substring(0, 2) + color + birthYear.Substring(2, 2);
                    else if (i == 3)
                        items[3] += birthYearReversed + lastName;
                    else
                        items[4] = lastName.Substring(0, 1) + color + color + color;
                }



                //    bool  doLoop = true;
                //        while (doLoop)
                //        {


                //            if(items[0].Value.Length < 8)
                //            {
                //                items[0].Value += lastName + color;

                //            }
                //            items[1].Value += color + birthYear + lastName.Substring(0, 1);
                //            items[2].Value += birthYear.Substring(0, 2) + color + birthYear.Substring(2, 2);
                //            items[3].Value += birthYear.Reverse().ToString() + lastName;
                //            items[4].Value += lastName.Substring(0, 1) + color + color + color;
                //        }

            }


            //List<string> list = new List<string>(suggestedPwd);

            for (int i = 0; i < items.Length; i++)
            {
                PwdList.Items.Add(items[i]);
                
            }








        }


    }
    protected void BirthYearTxtBox_TextChanged(object sender, EventArgs e)
    {

    }
    //protected void ProgramList_SelectedIndexChanged(object sender, EventArgs e)
    //{
        
    //}
    //protected void AccountButton_Click(object sender, EventArgs e)
    //{
    //    if (emailCheckBox.Checked)
    //        emailRequiredFieldValidator.Validate();
    //    Validate();
    //    if (IsValid)
    //    {
    //        Server.Transfer(~/default.aspx);



    //    }

    }

