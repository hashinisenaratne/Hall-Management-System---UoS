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
          //  String[] oldData = db.getDetails(StudentNoTB.Text);
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

          db.updateStudent(StudentNoTB.Text, bytes, FirstNameTB.Text, LastNameTB.Text, gender, StreetTB.Text, TownTB.Text, Convert.ToInt32(YearTB.Text), DepartmentDL.Text,imageuploaded);
          db.updateStudentPhoneNos(StudentNoTB.Text,PhoneNOTB.Text);

             Response.Write(@"<script language='javascript'>alert('Updated Data SUCCESSFULLY')</script>");
             UpdateB.Visible = false;
             StudentNoTB.Text = "";
             FirstNameTB.Text = "";
             LastNameTB.Text = "";
             StreetTB.Text = "";
             TownTB.Text = "";
             RadioButtonList1.ClearSelection();
             PhoneNOTB.Text = "";
             YearTB.Text = "";
             DepartmentDL.Text = "";
             Image3.Visible = false;
            

        }
        catch (Exception ex)
        {
          //  Response.Write(@"<script language='javascript'>alert('Error Occured')</script>");
            throw (ex);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        try
        {

            DataBase db = new DataBase();


            if (db.hasStudentEntry(StudentNoTB.Text) != true)
            {
                Label1.Visible = true;
                FirstNameTB.Text = "";
                LastNameTB.Text = "";
                StreetTB.Text = "";
                TownTB.Text = "";
                YearTB.Text = "";
                DepartmentDL.Text = "";
                PhoneNOTB.Text = "";
                RadioButtonList1.ClearSelection();
                Image3.Visible = false;
            }
            else
            {
                Label1.Visible = false;

                String[] details = db.getDetails(StudentNoTB.Text);

                FirstNameTB.Text = details[2];
                LastNameTB.Text = details[3];
                StreetTB.Text = details[5];
                TownTB.Text = details[6];
                YearTB.Text = details[7];
                DepartmentDL.Text = details[8];
                PhoneNOTB.Text = details[10];


                if (details[4] == "M")
                {
                    RadioButtonList1.Text = "Male";
                }
                else
                {
                    RadioButtonList1.Text = "Female";
                }

                Image3.ImageUrl = "data:image/png;base64," + details[1];
                Image3.Visible = true;
            }

            UpdateB.Visible = true;
        }
        catch (Exception ex)
        {
            Response.Write(@"<script language='javascript'>alert('Error Occured')</script>");
        }

    }
}