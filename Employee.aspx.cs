using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Default2 : System.Web.UI.Page
{
    Button buttonBack;
    DataBase db;
    Worker employee;
    String employeeid;
    Cookie cookieHandler = new Cookie();
    protected void Page_Load(object sender, EventArgs e)    //set the initial appearence
    {
        ((MasterPage_no_sidebar)Master).overrideBack = true;
        String[] cookieId = cookieHandler.getCookie(this.Request);
        if ((String.IsNullOrWhiteSpace(cookieId[0])) || (cookieId[1] != "employee")) //if no cookie or the cookie is not student type
        {
            Response.Redirect("Login.aspx");
        }

        employeeid = cookieId[0];

        buttonBack = Master.FindControl("backBtn") as Button;        
        buttonBack.Click += new EventHandler(ButtonBack_Click);
        buttonBack.Visible = false;
        db = new DataBase();
        fillEmployeeData();
        if (MultiView2.ActiveViewIndex == 2)
            buttonBack.Visible = false;
        else
            buttonBack.Visible = true;
    }

    protected void fillEmployeeData()   //fill the details of the logged in employee
    {
        String[] data = db.getEmployeeDetails(employeeid);
        employee = new Worker(data[0], data[1], data[2],data[4]+", "+data[5], data[6], data[7], data[8], data[9]);
        LabelID.Text = employee.id;
        LabelName.Text = employee.name;
        LabelGender.Text = employee.gender;
        LabelAddress.Text = employee.address;
        LabelSalary.Text = employee.salary;
        LabelPosition.Text = employee.position;
        LabelHall.Text = employee.hall;
        LabelTelephone.Text = employee.phonenos;
        if (data[2] != null)
        {
            ImageEmployee.ImageUrl = "data:image/png;base64," + data[3];
            ImageEmployee.Visible = true;
        }
    }

    protected void fillHallData()   //retriew and fill the details of the hall that the employee is assigned to
    {
        String[] data = db.getEmployeeHallDetails(employee.hall);
        LabelHall.Text = data[0];
        Label2hall.Text = data[0];
        Label2rooms.Text = data[1];
        if (data[2] == "F")
            Label2type.Text = "Female";
        if (data[2] == "M")
            Label2type.Text = "Male";
    }

    protected void ButtonHall_Click(object sender, EventArgs e) //when the button clicked to get hall information
    {
        if (LabelHall.Text == "")   //if no hall is assigned to the employee
        {
            MultiView2.ActiveViewIndex = 3;
        }
            //if a hall is assigned
        else
        {
            MultiView2.ActiveViewIndex = 1;
            fillHallData();
        }
        buttonBack.Visible = true;
        
    }
    protected void ButtonHistory_Click(object sender, EventArgs e)  //when the button clicked to get work history
    {
        if (db.hasEmployeeHistory(employee.id)) //if has workhistory
        {
            MultiView2.ActiveViewIndex = 0;
        }
            //if has no history
        else
        {
            MultiView2.ActiveViewIndex = 4;
        }
        buttonBack.Visible = true;
    }
    protected void Button2employee_Click(object sender, EventArgs e)// to show employee details of the same hall
    {
        MultiView1.ActiveViewIndex = 1;
        buttonBack.Visible = true;
        
    }
    protected void Button2student_Click(object sender, EventArgs e)// to show students details of the assigned hall
    {
        MultiView1.ActiveViewIndex = 2;
        buttonBack.Visible = true;
    }
    protected void Button2room_Click(object sender, EventArgs e)// to show room details of the assigned hall
    {
        MultiView1.ActiveViewIndex = 3;
        buttonBack.Visible = true;
    }

    protected void ButtonBack_Click(object sender, EventArgs e)// to get back to  the previous page
    {
        if (MultiView1.ActiveViewIndex == 1 || MultiView1.ActiveViewIndex == 2 || MultiView1.ActiveViewIndex == 3)
        {
            MultiView1.ActiveViewIndex = 0;
            MultiView2.ActiveViewIndex = 1;
            buttonBack.Visible = true;
        }
        else
        {
            MultiView1.ActiveViewIndex = 0;
            MultiView2.ActiveViewIndex = 2;
            buttonBack.Visible = false;
        }
        
    }
}

public class Worker //class worker
{
    public String id, name, gender, address, salary, position, hall, phonenos;
    public Worker(String id, String name, String gender, String address, String salary, String position, String hall, String phonenos)
    {
        this.id = id;
        this.name = name;
        if (gender.ToUpper().Equals("M"))
            this.gender = "Male";
        else if(gender.ToUpper().Equals("F"))
            this.gender = "Female";
        this.address = address;
        this.salary = salary;
        this.position = position;
        this.hall = hall;
        this.phonenos = phonenos;
    }
}