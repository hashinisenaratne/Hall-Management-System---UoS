using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class master_pages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add-Student.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Assign-Student.aspx");  
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add-Employee.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Edit-Student.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Edit-Employee.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add-Payment.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Assign-Employee.aspx");  
    }
}