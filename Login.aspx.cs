using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DataBase dbHandler = new DataBase();
    Cookie cookieHandler = new Cookie();

    protected void Page_Load(object sender, EventArgs e)
    {
        ((MasterPage_no_sidebar)Master).checkCookie = false;

        String[] id = cookieHandler.getCookie(this.Request);
        if (!String.IsNullOrWhiteSpace(id[0]))
        {
            redirect(id[0], id[1]);
        }
        
        warnlbl.Text = null;
        LinkButton logName = this.Master.FindControl("logName") as LinkButton;
        Label logText = this.Master.FindControl("logText") as Label;
        logText.Visible = false;
        Button logout = this.Master.FindControl("logOutBtn") as Button;
        logout.Visible = false;
        Button back = this.Master.FindControl("backBtn") as Button;
        back.Visible = false;
    }

    private void redirect(String id, String type)      //redirect to the home page according to the type
    {
        if (type == "student")
        {
            Response.Redirect("Student.aspx?id=" + id);
        }
        else if (type == "employee")
        {
            Response.Redirect("Employee.aspx");
        }
        else if (type == "admin")
        {
            Response.Redirect("Admin.aspx");
        }
        else if (type == "data")
        {
            Response.Redirect("DataEntry.aspx");
        }
        //add links to other interfaces here
    }

    protected void logBtn_Click(object sender, EventArgs e)
    {
        String name = nameBox.Text;
        String password = passBox.Text;

        if (String.IsNullOrWhiteSpace(name))
        {
            warnlbl.Text = "Please enter an ID";
            nameBox.Style["border-color"] = "#f55a5a";
            nameBox.Style["box-shadow"] = "0px 0px 10px #f55a5a";
            passBox.Style["border-color"] = "#93ca24";
            passBox.Style["box-shadow"] = "0px 0px 0px #fff";
        }
        else if (String.IsNullOrWhiteSpace(password))
        {
            warnlbl.Text = "Please enter a password";

            nameBox.Style["border-color"] = "#93ca24";
            nameBox.Style["box-shadow"] = "0px 0px 10px #93ca24";
            passBox.Style["border-color"] = "#f55a5a";
            passBox.Style["box-shadow"] = "0px 0px 10px #f55a5a";
        }
        else
        {
            String[] pass = dbHandler.getPw(name);
            if (String.IsNullOrEmpty(pass[0]))
            {
                warnlbl.Text = "Incorrect ID";
                nameBox.Style["border-color"] = "#f55a5a";
                nameBox.Style["box-shadow"] = "0px 0px 10px #f55a5a";
                passBox.Style["border-color"] = "#93ca24";
                passBox.Style["box-shadow"] = "0px 0px 0px #fff";                
            }           
            else if (pass[0] == password)
            {
                if (remCBox.Checked)
                {
                    cookieHandler.storeCookie(name, pass[1], true, this.Response);
                }
                else
                {
                    cookieHandler.storeCookie(name, pass[1], false, this.Response);
                }

                redirect(name, pass[1]);
            }
            else
            {
                warnlbl.Text = "Incorrect password";
                nameBox.Style["border-color"] = "#93ca24";
                nameBox.Style["box-shadow"] = "0px 0px 10px #93ca24";
                passBox.Style["border-color"] = "#f55a5a";
                passBox.Style["box-shadow"] = "0px 0px 10px #f55a5a";
            }
        }
    }
    
}