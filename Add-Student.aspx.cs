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
        Panel2.Visible = false;
        Panel1.Enabled = true;
    }

    
    protected void SubmitB_Click(object sender, EventArgs e)
    {
        Page.Validate("grp1");
        int year;
        Label2.Visible = false;
        Label3.Visible = false;

        if (YearTB.Text.Equals(""))
        {
            year = 0;
        }
        else
        {
            year = Convert.ToInt32(YearTB.Text);
        }

        if (StudentNoTB.Text.Length != 7 || year < 999 || year> 9999)
        {
            Label1.Visible = true;
            
            if (StudentNoTB.Text.Length != 7)
            {
                Label2.Visible = true;
                
            }
            if (year < 999 || year > 9999 )
            {
                Label3.Visible = true;
            }

        }
        
        else
        {

            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;

        try
        {
            DataBase db = new DataBase();

            if (db.hasStudentEntry(StudentNoTB.Text) == true)
            {
                Response.Write(@"<script language='javascript'>alert('Student Number is already assigned')</script>");
                
            }
            else
            {

                Byte[] bytes;

                if (FileUpload1.HasFile != true)
                {
                    bytes = File.ReadAllBytes("D:/Visual Studio Projects/ASP/Hall_Management_System/images/default.jpg");
                    //System.IO.Stream fs = new FileStream("/images/default.png", FileMode.Open, FileAccess.Read);
                    //System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                    //bytes = br.ReadBytes((Int32)fs.Length);
                    //br.Close();
                    //fs.Close();

                }
                else
                {
                    System.IO.Stream fs = FileUpload1.PostedFile.InputStream;
                    System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                    bytes = br.ReadBytes((Int32)fs.Length);
                    br.Close();
                    fs.Close();
                }

                String gender;
                if (RadioButtonList1.Text == "Male")
                    gender = "M";
                else
                    gender = "F";

                db.insertStudent(StudentNoTB.Text, bytes, FirstNameTB.Text, LastNameTB.Text, gender, StreetTB.Text, TownTB.Text, Convert.ToInt32(YearTB.Text), DepartmentDL.Text, 0);

                db.insertStudentPhoneNos(StudentNoTB.Text, PhoneNOTB.Text);

                successLbl.Text += StudentNoTB.Text;
                Panel1.Enabled = false;
                Panel2.Visible = true;
            }
        }
        catch (Exception ex)
        {
           
            Response.Write(@"<script language='javascript'>alert('Error Occured')</script>");
          
        }

         }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void assignBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Assign-Student.aspx");
    }
    protected void newBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }
}