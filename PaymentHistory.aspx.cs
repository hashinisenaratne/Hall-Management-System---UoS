using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaymentHistory : System.Web.UI.Page
{
    String id;
    Cookie cookieHandler = new Cookie();

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];

        String[] cookieId = cookieHandler.getCookie(this.Request);
        if ((String.IsNullOrWhiteSpace(cookieId[0])) || (cookieId[1] != "student") || (id != cookieId[0]))
        {
            Response.Redirect("Login.aspx");
        }
        
        SDS1.SelectCommand = "SELECT payment_id, payment_date, amount FROM payments WHERE student_number='" + id + "'";        
    }

    protected void grid_Load(object sender, EventArgs e)
    {
        grid.Sort("payment_date", SortDirection.Descending);  
    }
}