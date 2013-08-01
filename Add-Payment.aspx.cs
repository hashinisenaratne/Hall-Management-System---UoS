using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddPayment : System.Web.UI.Page
{
    DataBase dbHandler = new DataBase();
    String date;

    protected void Page_Load(object sender, EventArgs e)
    {
        date = DateTime.Today.Year + "-" + DateTime.Today.Month + "-" + DateTime.Today.Day;

        wrnLbl1.Visible = false;
        wrnLbl2.Visible = false;
        wrnLbl3.Visible = false;
        wrnLbl4.Visible = false;
        //dateBox.Text = date;
        successLbl.Visible = false;
        okBtn.Visible = false;
    }

    protected void submitBtn_Click(object sender, EventArgs e)
    {        
        String payId = pidBox.Text;
        String stdId = stnBox.Text;
        String amount = amountBox.Text;
        String date = dateBox.Text;

        if(String.IsNullOrWhiteSpace(payId))
        {
            wrnLbl1.Text = "Invalid ID";
            wrnLbl1.Visible = true;
            return;
        }
        else if(dbHandler.hasPayment(payId))
        {
            wrnLbl1.Text = "ID already exists";
            wrnLbl1.Visible = true;
            return;
        }

        if ((String.IsNullOrWhiteSpace(stdId)) || (dbHandler.getDetails(stdId)[0] == null))
        {
            wrnLbl2.Visible = true;
            return;
        }

        if ((String.IsNullOrWhiteSpace(amount)) || (double.Parse(amount) <= 0))
        {
            wrnLbl3.Visible = true;
            return;
        }

        try
        {
            dbHandler.addPayment(payId, stdId, date, amount);
            Panel1.Enabled = false;

            successLbl.Text += " " + payId;
            successLbl.Visible = true;
            okBtn.Visible = true;
        }
        catch(Exception ex)
        {
            successLbl.Text = ex.Message;
            successLbl.Visible = true;            
        }
        
    }
    protected void genBtn_Click(object sender, EventArgs e)
    {
        Random rnd = new Random();
        String genSt = rnd.Next(0, 100000).ToString().PadLeft(5,'0') + rnd.Next(0, 100000).ToString().PadLeft(5,'0');        
        pidBox.Text = genSt;
    }
    protected void okBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }

    protected void dateButton_Click(object sender, EventArgs e)
    {
        dateBox.Text = date;
    }
}