using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MasterPage : System.Web.UI.MasterPage
{
    DataBase dbHandler = new DataBase();
    Cookie cookieHandler = new Cookie();
    bool checkCookie = true;
    public bool overrideBack = false;
    public String[] id;
    static String prevPage = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if(checkCookie)
        {
            id = cookieHandler.getCookie(this.Request);
            if (String.IsNullOrWhiteSpace(id[0]))       //if a cookie is not found
            {
                Response.Redirect("Login.aspx");            
            }

            if (id[1] == "student")
            {
                String[] st = dbHandler.getDetails(id[0]);
                logName.Text = st[2] + " " + st[3] + " (" + id[0] + ")";
            }
            else if (id[1] == "employee")
            {
                String[] st = dbHandler.getEmployeeDetails(id[0]);
                logName.Text = st[1] + " (" + id[0] + ")";
            }
            else if (id[1] == "admin")
            {                
                logName.Text = "Administrator " + id[0];
            }
            else if (id[1] == "data")
            {
                String[] st = dbHandler.getDetails(id[0]);
                logName.Text = "Data Entry " + id[0];
            } 
        }

        if ((!IsPostBack) && (Request.UrlReferrer != null))
        {
            prevPage = Request.UrlReferrer.ToString();
        }
    }

    protected void logOutBtn_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["hmsusUser"] != null)
        {
            Response.Cookies["hmsusUser"].Expires = DateTime.Now.AddDays(-1);
        }
        Response.Redirect("Login.aspx");
    }

    protected void backBtn_Click(object sender, EventArgs e)
    {
        if (!overrideBack)
        {
            if (prevPage != null)
            {
                Response.Redirect(prevPage);
            }
        } 
    }

    protected void logName_Click(object sender, EventArgs e)
    {        
        Response.Redirect("Login.aspx");        
    }

    protected void homeBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx"); 
    }
}
