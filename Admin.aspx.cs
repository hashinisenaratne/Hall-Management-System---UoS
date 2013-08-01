using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Admin : System.Web.UI.Page
{
    Button bt;
    DataBase db = new DataBase();
    Cookie cookieHandler = new Cookie();
    protected void Page_Load(object sender, EventArgs e)
    {
        ((MasterPage_no_sidebar)Master).overrideBack = true;
        String[] cookieId = cookieHandler.getCookie(this.Request);
        if ((String.IsNullOrWhiteSpace(cookieId[0])) || (cookieId[1] != "admin")) //if no cookie or the cookie is not student type
        {
            Response.Redirect("Login.aspx");
        }


        bt = Master.FindControl("backBtn") as Button;
        bt.Click += new EventHandler(Back_Clicked);
        if (MultiView1.ActiveViewIndex != 0)
        {
            bt.Visible = true;
        }
        else
        {
            bt.Visible = false;
        }
       
    }
    protected void Back_Clicked(object sender, EventArgs e)
    {
        if (MultiView1.ActiveViewIndex == 5)
        {
            MultiView1.ActiveViewIndex = 2;
        }
        else
        {
            bt.Visible = false;
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void Student_Clicked(object sender, EventArgs e)
    {
        bt.Visible = true;
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Employee_Clicked(object sender, EventArgs e)
    {
        bt.Visible = true;
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Hall_Clicked(object sender, EventArgs e)
    {
        bt.Visible = true;
        MultiView1.ActiveViewIndex = 3;
    }
    protected void Add_Clicked(object sender, EventArgs e)
    {
        bt.Visible = true;
        MultiView1.ActiveViewIndex = 4;
    }
    protected void ListBoxStudents_SelectedIndexChanged(object sender, EventArgs e)
    {
        Byte[] imagearray =null;
        String[] details=db.getStudentInfoComplete(ListBoxStudents.SelectedItem.Value,ref imagearray);

        if (imagearray != null)
        {
            ImageStudent.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(imagearray, 0, imagearray.Length);
        }
        else
        {
            ImageStudent.ImageUrl = "";
        }
        ImageStudent.Visible = true; ImageStudent.Width = 100; ImageStudent.Height = 100;
        
        LabelStudentNo.Text = details[0];
        LabelStudentName.Text = details[1];
        LabelStudentAddress.Text = details[2];
        LabelStudentDepartment.Text = details[3];
        LabelStudentYearOfAdmission.Text = details[4];
        LabelStudentTelephone.Text = details[5];
        LabelStudentBalance.Text = details[6];
        LabelStudentHall.Text = details[7];
        LabelStudentRoom.Text = details[8];
    }
    protected void ListBoxHalls_SelectedIndexChanged(object sender, EventArgs e)
    {

        LabelRoomNo.Text = "";
        LabelRoomType.Text = "";
        LabelCost.Text = "";
        LabelRoomVacant.Text = "";

        String[] details=db.getHallDetails(ListBoxHalls.SelectedItem.Text);
        LabelHallName.Text = details[0];
        LabelCapacity.Text = details[1];
        LabelHallType.Text = (details[2][0] == 'm' || details[2][0] == 'M') ? "Male" : "Female";
        LabelHallStudents.Text = details[3];
        LabelHallVacant.Text = (Int32.Parse(details[1]) - Int32.Parse(details[3])).ToString();

        String[] rooms = db.getRooms(details[0]);
        while (ListBoxRooms.Items.Count != 0)
        {
            ListBoxRooms.Items.RemoveAt(0);
        }

        for (int i = 0; i < rooms.Length; i++)
        {
            ListBoxRooms.Items.Add(new ListItem(rooms[i]));
        }

    }
    protected void ListBoxRooms_SelectedIndexChanged(object sender, EventArgs e)
    {
        String[] details = db.getRoomDetails(ListBoxHalls.SelectedItem.Text, ListBoxRooms.SelectedItem.Text);
        LabelRoomNo.Text = details[0];
        LabelRoomType.Text = details[1];
        LabelCost.Text = details[2];
        LabelRoomVacant.Text = (details[1][0] == 's' || details[1][0] == 'S') ? (1 - Int32.Parse(details[3])).ToString() : (2 - Int32.Parse(details[3])).ToString();
    }

    protected void ButtonSearchEmployee_Click(object sender, EventArgs e)
    {
        if (!"".Equals(TextBoxEid.Text) || !"".Equals(TextBoxEname.Text) || !"".Equals(TextBoxEhall.Text))
        {

            //reset fields
            ImageEmployee.ImageUrl = "";
            LabelEmployeeID.Text = "";
            LabelEmployeeName.Text = "";
            LabelEmployeeAddress.Text = "";
            LabelEmployeeSalary.Text = "";
            LabelEmployeePosition.Text = "";
            LabelEmployeeTelephone.Text = "";
            LabelEmployeeHall.Text = "";

            ButtonEHistory.Visible = false;
            String[][] list = db.getEmployeeInfo(TextBoxEid.Text, TextBoxEname.Text, TextBoxEhall.Text);
            while (ListBoxEmployees.Items.Count != 0)
            {
                ListBoxEmployees.Items.RemoveAt(0);
            }

            for (int i = 0; i < list.Length; i++)
            {
                ListBoxEmployees.Items.Add(new ListItem(list[i][0] + " - " + list[i][1], list[i][0]));

            }
        }
        
    }
    protected void ButtonSearchStudent_Click(object sender, EventArgs e)
    {
        if (!"".Equals(TextBoxSid.Text) || !"".Equals(TextBoxSFirstName.Text) || !"".Equals(TextBoxSLastName.Text) || !"".Equals(TextBoxSdepartment.Text))
        {
            //reset fields

            ImageStudent.ImageUrl = "";
            LabelStudentNo.Text = "";
            LabelStudentName.Text = "";
            LabelStudentAddress.Text = "";
            LabelStudentDepartment.Text = "";
            LabelStudentYearOfAdmission.Text = "";
            LabelStudentTelephone.Text = "";
            LabelStudentBalance.Text = "";
            LabelStudentHall.Text = "";
            LabelStudentRoom.Text = ""; 



            String[][] list = db.getStudentInfo(TextBoxSid.Text, TextBoxSFirstName.Text, TextBoxSLastName.Text, TextBoxSdepartment.Text);
            while (ListBoxStudents.Items.Count != 0)
            {
                ListBoxStudents.Items.RemoveAt(0);
            }

            for (int i = 0; i < list.Length; i++)
            {
                ListBoxStudents.Items.Add(new ListItem(list[i][0] + " - " + list[i][1], list[i][0]));
            }
        }
    }
    protected void ListBoxEmployees_SelectedIndexChanged(object sender, EventArgs e)
    {
        ButtonEHistory.Visible = true;
        Byte[] imagearray = null;
        String[] details = db.getEmployeeInfoComplete(ListBoxEmployees.SelectedItem.Value,ref imagearray);

        if (imagearray != null)
        {
            ImageEmployee.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(imagearray, 0, imagearray.Length);
        }
        else
        {
            ImageEmployee.ImageUrl = "";
        }
        ImageEmployee.Visible = true; ImageEmployee.Width = 100; ImageEmployee.Height = 100;
        LabelEmployeeID.Text = details[0];
        LabelEmployeeName.Text = details[1];
        LabelEmployeeAddress.Text = details[2];
        LabelEmployeeSalary.Text = details[3];
        LabelEmployeePosition.Text = details[4];
        LabelEmployeeTelephone.Text = details[5];
        LabelEmployeeHall.Text = details[6];
    }
    protected void View4_Activate(object sender, EventArgs e)
    {
        String[] halls=db.getHallNames();
        while (ListBoxHalls.Items.Count != 0)
        {
            ListBoxHalls.Items.RemoveAt(0);
        }

        for (int i = 0; i < halls.Length; i++)
        {
            ListBoxHalls.Items.Add(new ListItem(halls[i]));
        }
    }
    protected void ButtonAddUser_Click(object sender, EventArgs e)
    {
        if (TextBoxUserName.Text.Length == 7)
        {
            LabelUsernameError.Visible = false;
            if (TextBoxPassword.Text.Equals(TextBoxRetypePassword.Text))
            {
                LabelPasswordError.Visible = false;
                if (db.hasUser(TextBoxUserName.Text))
                {
                    LabelExistError.Visible = true;
                }
                else
                {
                    LabelExistError.Visible = false;
                    db.addUser(TextBoxUserName.Text, TextBoxPassword.Text, RadioButtonAdmin.Checked ? "admin" : "data");
                }
            }
            else
            {
                LabelPasswordError.Visible = true;
            }
        }
        else
        {
            LabelUsernameError.Visible = true;
        }
    }
    protected void View5_Activate(object sender, EventArgs e)
    {
        LabelExistError.Visible = false;
        LabelUsernameError.Visible = false;
        LabelPasswordError.Visible = false;
        TextBoxPassword.Text = "";
        TextBoxRetypePassword.Text = "";
        TextBoxUserName.Text = "";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
    }
}
