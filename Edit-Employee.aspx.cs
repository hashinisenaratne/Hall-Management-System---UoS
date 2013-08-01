using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class master_pages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitB_Click(object sender, EventArgs e)
    {
        Boolean imageuploaded = false;
        try
        {

            DataBase db = new DataBase();
           
            Byte[] bytes;

            if (FileUpload1.HasFile != true)
            {
                bytes = File.ReadAllBytes("C:/Users/Pubudu/Documents/Visual Studio 2010/WebSites/WebSite6/images/Default_Photo.PNG");

            }
            else
            {
                imageuploaded = true;
                System.IO.Stream fs = FileUpload1.PostedFile.InputStream;
                System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                bytes = br.ReadBytes((Int32)fs.Length);

            }
            String gender;
            if (RadioButtonList1.Text == "Male")
                gender = "M";
            else
                gender = "F";

            db.updateEmployeeDetails(EmpIdTB.Text, NameTB.Text, gender, bytes, StreetTB.Text, TownTB.Text, Convert.ToDouble(SalaryTB.Text), PositionTB.Text,imageuploaded);
            db.updateEmployeePhoneNos(EmpIdTB.Text, PhoneNOTB.Text);

           Response.Write(@"<script language='javascript'>alert('Updated Data SUCCESSFULLY')</script>");
           UpdateB.Visible = false;
           EmpIdTB.Text = "";
           NameTB.Text = "";
           StreetTB.Text = "";
           TownTB.Text = "";
           SalaryTB.Text = "";
           PositionTB.Text = "";
           RadioButtonList1.ClearSelection();
           PhoneNOTB.Text = "";
           Image3.Visible = false;

        }
        catch (Exception ex)
        {
            Response.Write(@"<script language='javascript'>alert('Error Occured')</script>");
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            DataBase db = new DataBase();


            if (db.hasEmployeeEntry(EmpIdTB.Text) != true)
            {
                Label1.Visible = true;
                NameTB.Text = "";
                StreetTB.Text = "";
                TownTB.Text = "";
                PhoneNOTB.Text = "";
                SalaryTB.Text = "";
                PositionTB.Text = "";
                RadioButtonList1.ClearSelection();
                Image3.Visible = false;
            }
            else
            {
                Label1.Visible = false;

                String[] details = db.getEmployeeDetails(EmpIdTB.Text);

                NameTB.Text = details[1];

                StreetTB.Text = details[4];
                TownTB.Text = details[5];
                SalaryTB.Text = details[6];
                PositionTB.Text = details[7];
                PhoneNOTB.Text = details[9];


                if (details[2] == "M")
                {
                    RadioButtonList1.Text = "Male";
                }
                else
                {
                    RadioButtonList1.Text = "Female";
                }

                Image3.ImageUrl = "data:image/png;base64," + details[3];
                Image3.Visible = true;

                UpdateB.Visible = true;
            }

        }
        catch (Exception ex)
        {
            Response.Write(@"<script language='javascript'>alert('Error Occured')</script>");
        }



    }

}