using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class master_pages_Assign_Student : System.Web.UI.Page
{
    DataBase db = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Visible = false;
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Button1.Visible = true;
        int a = GridView1.SelectedIndex;
        LabelStudentNo.Text = GridView1.Rows[a].Cells[0].Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownListRoom.SelectedIndex!=-1)
        {
            db.assignStudentRoom(LabelStudentNo.Text, DropDownListHall.SelectedItem.Text, DropDownListRoom.SelectedItem.Text);
        }
        GridView1.DataBind();
    }
    protected void DropDownListHall_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownListRoom.DataBind();
        Button1.Visible = true;
    }
}