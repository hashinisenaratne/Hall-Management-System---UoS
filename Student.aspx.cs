using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Student2 : System.Web.UI.Page
{    
    DataBase dbHandler = new DataBase();
    Cookie cookieHandler = new Cookie();
    String id;    

    protected void Page_Load(object sender, EventArgs e)
    {
        
        id  = Request.QueryString["id"];
               
        String[] cookieId = cookieHandler.getCookie(this.Request);
        if ((String.IsNullOrWhiteSpace(cookieId[0])) || (cookieId[1] != "student")) //if no cookie or the cookie is not student type
        {
            Response.Redirect("Login.aspx");
        }
        
        setDetails(id);    
    
        if(String.IsNullOrWhiteSpace(numLabel.Text))    //if id is not valid
            Response.Redirect("Login.aspx");

        if (id == cookieId[0])
        {
            LoadButtons();
        }

        multiView.ActiveViewIndex = -1;       
        
    }

    private void LoadButtons()
    {
        Button1.Visible = true;
        Button2.Visible = true;
        Button3.Visible = true;
        Button4.Visible = true;
    }
    
    private void setDetails(String id)
    {
        String[] values = dbHandler.getDetails(id);
        numLabel.Text = values[0];
        nameLabel.Text = values[2] + " " + values[3];
        addrLabel.Text = values[5] + ", " + values[6] ;
        depLable.Text = values[8];
        admLabel.Text = values[7];
        phnLabel.Text = values[10];
        balanceLabel.Text = values[9];
        if (values[4] == "M")
            genLabel.Text = "Male";
        else
            genLabel.Text = "Female";

        profImage.ImageUrl = "data:image/jpeg;base64," + values[1];        
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {        
        multiView.ActiveViewIndex = 0;
        setRoomDetails(id);        
    }

    private void setRoomDetails(String id)
    {
        String[] ret = dbHandler.getRoom(id);
        if (String.IsNullOrWhiteSpace(ret[0]))
        {
            multiView.ActiveViewIndex = 2;
            return;
        }

        Label4.Text = ret[1];        
        Label6.Text = ret[0];
        Label8.Text = "Rs. "+ret[4];
        Label10.Text = ret[2].Split(' ')[0];        

        if (ret[3] == "S")
            Label5.Text = "Single";
        else
            Label5.Text = "Double";

        if(ret[6] != null)
            Label12.Text = ret[5] + " (" + ret[6] + ")";
        else
        {
            Label12.Text = "---";            
            Label12.Enabled = false;
        }            
    }

    private void setHallDetails(String id)
    {         
        String[] ret = dbHandler.getHall(id);

        if (String.IsNullOrWhiteSpace(ret[0]))
        {
            multiView.ActiveViewIndex = 2;
            return;
        }

        Label14.Text = ret[0];        
        Label18.Text = ret[1];        

        if (ret[2] == "M")
            Label16.Text = "Male";
        else
            Label5.Text = "Female";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        multiView.ActiveViewIndex = 1;
        setHallDetails(id);
    }

    protected void Label12_Click(object sender, EventArgs e)
    {
        String[] ret = dbHandler.getRoom(id);
        Response.Redirect("Student.aspx?id="+ret[6]);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PaymentHistory.aspx?id=" + id);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AccommodationHistory.aspx?id=" + id);
    }
}