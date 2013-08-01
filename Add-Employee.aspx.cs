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
        Page.Validate("grp1");

        int salary;
        Label1.Visible = false;
        Label2.Visible = false;

        if (SalaryTB.Text.Equals(""))
        {
            salary = 0;
        }
        else
        {
            salary = Convert.ToInt32(SalaryTB.Text);
        }


        if (EmpIdTB.Text.Length != 7 || salary < 0)
        {
            Label3.Visible = true;

            if (EmpIdTB.Text.Length != 7)
            {
                Label1.Visible = true;

            }
            if (salary <= 0)
            {
                Label2.Visible = true;
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

            if (db.hasEmployeeEntry(EmpIdTB.Text) == true)
            {
                Response.Write(@"<script language='javascript'>alert('Employee Id Number is already assigned')</script>");
            }
            else
            {

                Byte[] bytes;

                if (FileUpload1.HasFile != true)
                {
                    bytes = File.ReadAllBytes("C:/Users/Pubudu/Documents/Visual Studio 2010/WebSites/WebSite6/images/Default_Photo.PNG");

                }
                else
                {
                    System.IO.Stream fs = FileUpload1.PostedFile.InputStream;
                    System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                    bytes = br.ReadBytes((Int32)fs.Length);

                }

                String gender;
                if (RadioButtonList1.Text == "Male")
                    gender = "M";
                else
                    gender = "F";

                db.insertEmp(EmpIdTB.Text, NameTB.Text, gender, bytes, StreetTB.Text, TownTB.Text, Convert.ToDouble(SalaryTB.Text), PositionTB.Text);
                db.insertEmployeePhoneNos(EmpIdTB.Text, PhoneNOTB.Text);

                Response.Write(@"<script language='javascript'>alert('Employee SUCCESSFULLY added ')</script>");

                EmpIdTB.Text = "";
                NameTB.Text = "";
                StreetTB.Text = "";
                TownTB.Text = "";
                SalaryTB.Text = "";
                PositionTB.Text = "";
                RadioButtonList1.ClearSelection();
                PhoneNOTB.Text = "";

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
}