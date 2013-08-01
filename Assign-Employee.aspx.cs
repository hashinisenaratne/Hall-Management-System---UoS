using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class master_pages_Default : System.Web.UI.Page
{
    DataBase db = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Visible = false;
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Button1.Visible = true;
        int a=GridView1.SelectedIndex;
        LabelEmployeeId.Text = GridView1.Rows[a].Cells[0].Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        db.assignEmployeeHall(LabelEmployeeId.Text, DropDownListHall.SelectedItem.Text);
        GridView1.DataBind();// UpdateRow(GridView1.SelectedIndex, false);
    }
}