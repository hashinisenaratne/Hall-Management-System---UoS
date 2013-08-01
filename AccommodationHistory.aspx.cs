using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AccommodationHistory : System.Web.UI.Page
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

        SDS2.SelectCommand = "SELECT hall_name, room_number, assign_date, left_date FROM accommodation_history WHERE student_number='" + id + "'"; 
    }
    protected void grid2_Load(object sender, EventArgs e)
    {
        grid2.Sort("assign_date", SortDirection.Descending);
    }
}