<%@ Page Title="Administrator" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #Button2
        {
        }
        #Button3
        {
            width: 163px;
        }
        #Button4
        {
            width: 160px;
        }
        #Button5
        {
            width: 160px;
        }
        #Button3
        {
        }
        #Button4
        {
        }
        #Button5
        {
            width: 160px;
        }
        #Button5
        {
        }
        .style7
    {
        width: 19px;
        height: 7px;
    }
    .style8
    {
        width: 121px;
        height: 7px;
            text-align: left;
        }
        .style10
        {
            width: 19px;
            height: 76px;
        }
        .style11
        {
            width: 60px;
            height: 76px;
            text-align: left;
        }
        .style12
        {
            width: 60px;
            height: 7px;
            text-align: center;
        }
        .style15
        {
            width: 121px;
            height: 98px;
        }
        .style16
        {
            width: 121px;
        }
        .style20
        {
            width: 26px;
            height: 76px;
        }
        .style21
        {
            width: 26px;
            height: 7px;
        }
        .style24
        {
            height: 98px;
            width: 26px;
        }
        .style25
        {
            width: 26px;
        }
        .style26
        {
            height: 98px;
            width: 19px;
        }
        .style27
        {
            width: 19px;
        }
        .style28
        {
            height: 98px;
            width: 60px;
        }
        .style29
        {
            width: 60px;
            text-align: center;
        }
        .style30
        {
            width: 155px;
            height: 76px;
            text-align: left;
        }
        .style31
        {
            width: 155px;
            height: 7px;
            text-align: center;
        }
        .style32
        {
            width: 155px;
            height: 98px;
        }
        .style33
        {
            width: 155px;
            text-align: center;
        }
        .style39
    {
        width: 121px;
        height: 76px;
        text-align: left;
    }
    .style42
    {
        width: 161px;
        text-align: right;
    }
    .style44
    {
        width: 208px;
    }
    .style45
    {
        width: 208px;
        height: 57px;
    }
    .style46
    {
        width: 161px;
        text-align: right;
        height: 57px;
    }
    .style47
    {
        width: 294px;
        text-align: right;
        height: 57px;
    }
    .style48
    {
        height: 57px;
    }
        .style49
        {
            width: 398px;
        height: 357px;
    }
        .style51
        {
        }
        .style53
        {
            width: 126px;
        }
        .style55
        {
            width: 30px;
        }
        .style57
        {
            width: 61px;
        }
        .style61
        {
            width: 348px;
        }
        .style62
        {
            width: 152px;
            text-align: right;
        }
    .style63
    {
        height: 357px;
    }
        .style65
        {
            width: 60px;
            text-align: center;
            height: 76px;
        }
        .style68
        {
            width: 155px;
            text-align: center;
            height: 76px;
        }
        .style70
        {
            width: 121px;
            height: 76px;
        }
        .style78
        {
            width: 109px;
            font-size: x-large;
            height: 37px;
        }
        .style79
        {
            width: 159px;
            text-align: center;
        }
        .style80
        {
            width: 159px;
            text-align: left;
            font-size: x-large;
            height: 37px;
        }
        .style82
        {
            font-size: large;
        }
        .style84
        {
        }
        .style86
        {
            width: 21px;
        }
        .style87
        {
            width: 109px;
            text-align: center;
        }
        .style88
        {
            width: 118px;
            text-align: center;
            font-size: x-large;
            height: 37px;
        }
        .style89
        {
            width: 118px;
            text-align: center;
        }
        .style91
        {
            width: 137px;
        }
        .style92
        {
            width: 208px;
            height: 76px;
        }
        .style93
        {
            width: 161px;
            text-align: right;
            height: 76px;
        }
        .style94
        {
            width: 294px;
            text-align: right;
            height: 76px;
        }
        .style95
        {
            height: 76px;
        }
        .style96
        {
            width: 168px;
        }
        .style97
        {
            width: 23px;
        }
        .style98
        {
            width: 21px;
            height: 357px;
        }
        .style99
        {
            width: 52px;
            text-align: center;
            font-size: x-large;
            height: 37px;
        }
        .style100
        {
            width: 52px;
            text-align: center;
        }
        .style101
        {
            width: 52px;
            font-size: x-large;
            height: 37px;
        }
        .style113
        {
            width: 46px;
        }
        .style115
        {
            width: 82px;
            height: 11px;
        }
        .style121
        {
            width: 87px;
            height: 11px;
        }
        .style123
        {
            width: 131px;
            height: 11px;
        }
        .style127
        {
            width: 192px;
            height: 11px;
        }
        .style130
        {
            width: 128px;
            height: 11px;
        }
        .style134
        {
            width: 151px;
            height: 11px;
        }
        .style135
        {
            width: 201px;
            height: 11px;
        }
        .style145
        {
            width: 152px;
            text-align: right;
            height: 11px;
        }
        .style147
        {
            height: 11px;
        }
        .style148
        {
            height: 7px;
        }
        .style149
        {
            width: 128px;
            height: 7px;
        }
        .style150
        {
            width: 151px;
            height: 7px;
        }
        .style151
        {
            width: 152px;
            text-align: right;
            height: 7px;
        }
        .style152
        {
            width: 137px;
            height: 37px;
        }
        .style153
        {
            width: 21px;
            height: 37px;
        }
        .style154
        {
            height: 37px;
        }
        .style155
        {
            width: 294px;
            text-align: right;
        }
        .style156
        {
            width: 208px;
            height: 24px;
        }
        .style157
        {
            width: 161px;
            text-align: right;
            height: 24px;
        }
        .style158
        {
            width: 294px;
            text-align: right;
            height: 24px;
        }
        .style159
        {
            height: 24px;
        }
                .style23
                {
                    width: 185px;
                    }
                .Grid
        {}
        .style164
        {
            width: 218px;
            height: 26px;
        }
        .style165
        {
            width: 218px;
        }
        .style167
        {
            width: 671px;
        }
        .style168
        {
            width: 678px;
        }
        .style169
        {
            width: 234px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Button2_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <table style="width:100%;">
                <tr>
                    <td align="center" class="style39">
                        </td>
                    <td align="center" class="style11">
                    </td>
                    <td class="style20">
                        </td>
                    <td class="style10">
                    </td>
                    <td align="center" class="style30">
                    </td>
                    <td align="center" class="style39">
                        </td>
                </tr>
                <tr>
                    <td align="center" class="style8">
                        &nbsp;</td>
                    <td align="center" class="style12">
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            Height="69px" onclick="Student_Clicked" Text="Student Details" Width="255px" />
                    </td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style7">
                        &nbsp;</td>
                    <td align="center" class="style31">
                        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            Height="69px" onclick="Employee_Clicked" Text="Employee Details" 
                            Width="255px" />
                    </td>
                    <td align="center" class="style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;</td>
                    <td class="style28">
                    </td>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style26">
                    </td>
                    <td class="style32">
                        </td>
                    <td class="style15">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style16">
                        &nbsp;</td>
                    <td class="style29">
                        <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            Height="69px" onclick="Hall_Clicked" Text="Hall Details" Width="255px" />
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td class="style27">
                        &nbsp;</td>
                    <td class="style33">
                        <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            Height="69px" onclick="Add_Clicked" Text="Add New User" Width="255px" />
                    </td>
                    <td class="style16">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style70">
                    </td>
                    <td class="style65">
                    </td>
                    <td class="style20">
                    </td>
                    <td class="style10">
                    </td>
                    <td class="style68">
                    </td>
                    <td class="style70">
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Panel ID="Panel1" runat="server" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
                    Text="Student Details" Font-Bold="True"></asp:Label>
            </asp:Panel>
            <table style="width:100%; height: 60px;">
                <tr>
                    <td class="style147">
                        </td>
                    <td class="style121">
                        ID :</td>
                    <td class="style115">
                        <asp:TextBox ID="TextBoxSid" runat="server"
                            style="margin-right: 0px" AutoPostBack="False" Width="78px"></asp:TextBox>
                    </td>
                    <td class="style147">
                        </td>
                    <td class="style127">
                        First Name :</td>
                    <td class="style123">
                        <asp:TextBox ID="TextBoxSFirstName" runat="server" Width="128px"></asp:TextBox>
                    </td>
                    <td class="style147">
                        </td>
                    <td class="style135">
                        Last Name :</td>
                    <td class="style130">
                        <asp:TextBox ID="TextBoxSLastName" runat="server" Width="128px"></asp:TextBox>
                    </td>
                    <td class="style134">
                        Department :</td>
                    <td class="style145">
                        <asp:TextBox ID="TextBoxSdepartment" runat="server" Width="151px"></asp:TextBox>
                    </td>
                    <td class="style147">
                        </td>
                </tr>
                <tr>
                    <td class="style148">
                        </td>
                    <td class="style148" colspan="7" valign="top">
                        <asp:Label ID="Label5" runat="server" Font-Size="Small" ForeColor="Red" 
                            Text="* Note that when you enter an ID, other filters are disabled."></asp:Label>
                    </td>
                    <td class="style149">
                        </td>
                    <td class="style150">
                        </td>
                    <td class="style151">
                        <asp:Button ID="ButtonSearchStudent" runat="server" Text="Search" 
                            onclick="ButtonSearchStudent_Click" />
                    </td>
                    <td class="style148">
                        </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="style98" style="text-align: left">
                        </td>
                    <td class="style49" style="text-align: left">
                        <asp:ListBox ID="ListBoxStudents" runat="server" AutoPostBack="True" 
                            Height="362px" onselectedindexchanged="ListBoxStudents_SelectedIndexChanged" 
                            style="margin-left: 0px" Width="369px"></asp:ListBox>
                    </td>
                    <td class="style63">
                        <table style="width:100%;">
                            <tr>
                                <td class="style96">
                                    <asp:Image ID="ImageStudent" runat="server" Height="100px" Width="100px" />
                                </td>
                                <td class="style97">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Name</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelStudentName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Student No.</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelStudentNo" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Address</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelStudentAddress" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Telephone</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelStudentTelephone" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Year of Admission</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelStudentYearOfAdmission" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Department</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelStudentDepartment" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Hall</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelStudentHall" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Room</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelStudentRoom" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Balance Payment</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelStudentBalance" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    &nbsp;</td>
                                <td class="style97">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:Panel ID="Panel4" runat="server" style="text-align: center">
                <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" 
                    Text="Employee Details" Font-Bold="True"></asp:Label>
            </asp:Panel>
            <table style="width:100%; height: 60px;">
                <tr>
                    <td class="style51">
                        &nbsp;</td>
                    <td class="style51">
                        ID :</td>
                    <td class="style53">
                        <asp:TextBox ID="TextBoxEid" runat="server" AutoPostBack="False" 
                            style="margin-right: 0px"></asp:TextBox>
                    </td>
                    <td class="style55">
                        &nbsp;</td>
                    <td class="style57">
                        Name :</td>
                    <td class="style61">
                        <asp:TextBox ID="TextBoxEname" runat="server" Width="346px"></asp:TextBox>
                    </td>
                    <td class="style55">
                        &nbsp;</td>
                    <td class="style113">
                        Hall :</td>
                    <td class="style62">
                        <asp:TextBox ID="TextBoxEhall" runat="server" Width="151px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style51">
                        &nbsp;</td>
                    <td class="style51" colspan="5" valign="top">
                        <asp:Label ID="Label6" runat="server" Font-Size="Small" ForeColor="Red" 
                            Text="* Note that when you enter an ID, other filters are disabled."></asp:Label>
                    </td>
                    <td class="style55">
                        &nbsp;</td>
                    <td class="style113">
                        &nbsp;</td>
                    <td class="style62">
                        <asp:Button ID="ButtonSearchEmployee" runat="server" 
                            onclick="ButtonSearchEmployee_Click" Text="Search" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="style98" style="text-align: left">
                    </td>
                    <td class="style49" style="text-align: left">
                        <asp:ListBox ID="ListBoxEmployees" runat="server" AutoPostBack="True" 
                            Height="362px" onselectedindexchanged="ListBoxEmployees_SelectedIndexChanged" 
                            style="margin-left: 0px" Width="369px"></asp:ListBox>
                    </td>
                    <td class="style63">
                        <table style="width:100%;">
                            <tr>
                                <td class="style96">
                                    <asp:Image ID="ImageEmployee" runat="server" Height="100px" Width="100px" />
                                </td>
                                <td class="style97">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Name</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelEmployeeName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Employee ID</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelEmployeeID" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Address</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelEmployeeAddress" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Telephone</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelEmployeeTelephone" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Position</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelEmployeePosition" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Assigned Hall</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelEmployeeHall" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    Salary</td>
                                <td class="style97">
                                    :</td>
                                <td>
                                    <asp:Label ID="LabelEmployeeSalary" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    &nbsp;</td>
                                <td class="style97">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style96">
                                    <asp:Button ID="ButtonEHistory" runat="server" onclick="Button6_Click" 
                                        Text="Employee History" Visible="False" Width="115px" />
                                </td>
                                <td class="style97">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View4" runat="server" onactivate="View4_Activate">
            <asp:Panel ID="Panel7" runat="server" style="text-align: center">
                <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Text="Hall Details" 
                    Font-Bold="True"></asp:Label>
            </asp:Panel>
            <table style="width:100%;">
                <tr>
                    <td class="style88">
                        </td>
                    <td class="style80">
                        <strong>Hall</strong></td>
                    <td class="style99">
                        </td>
                    <td class="style78">
                        <strong style="text-align: left">Room</strong></td>
                    <td class="style101">
                        </td>
                    <td class="style152">
                        </td>
                    <td class="style153">
                        </td>
                    <td class="style154">
                        </td>
                    <td class="style154">
                        </td>
                </tr>
                <tr>
                    <td class="style89" rowspan="13">
                        &nbsp;</td>
                    <td class="style79" rowspan="13">
                        <asp:ListBox ID="ListBoxHalls" runat="server" AutoPostBack="True" 
                            Height="380px" onselectedindexchanged="ListBoxHalls_SelectedIndexChanged" 
                            Width="161px"></asp:ListBox>
                    </td>
                    <td class="style100" rowspan="13">
                        &nbsp;</td>
                    <td class="style87" rowspan="13">
                        <asp:ListBox ID="ListBoxRooms" runat="server" AutoPostBack="True" 
                            Height="380px" onselectedindexchanged="ListBoxRooms_SelectedIndexChanged" 
                            Width="108px"></asp:ListBox>
                    </td>
                    <td class="style100" rowspan="13">
                        &nbsp;</td>
                    <td class="style91" style="text-align: left">
                        <strong style="font-size: large">Hall Details</strong></td>
                    <td class="style86">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style91">
                        Name</td>
                    <td class="style86">
                        :</td>
                    <td>
                        <asp:Label ID="LabelHallName" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style91">
                        Capacity</td>
                    <td class="style86">
                        :</td>
                    <td>
                        <asp:Label ID="LabelCapacity" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style91">
                        Type</td>
                    <td class="style86">
                        :</td>
                    <td>
                        <asp:Label ID="LabelHallType" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style91">
                        Total Students</td>
                    <td class="style86">
                        :</td>
                    <td>
                        <asp:Label ID="LabelHallStudents" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style91">
                        Vacant Beds</td>
                    <td class="style86">
                        :</td>
                    <td>
                        <asp:Label ID="LabelHallVacant" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style84" colspan="3">
                        <hr />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style91">
                        <span class="style82"><strong>Room</strong></span><strong 
                            style="font-size: large"> Details</strong></td>
                    <td class="style86">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style91">
                        Room no.</td>
                    <td class="style86">
                        :</td>
                    <td>
                        <asp:Label ID="LabelRoomNo" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style91">
                        Type</td>
                    <td class="style86">
                        :</td>
                    <td>
                        <asp:Label ID="LabelRoomType" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style91">
                        Cost</td>
                    <td class="style86">
                        :</td>
                    <td>
                        <asp:Label ID="LabelCost" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style91">
                        Vacant Beds</td>
                    <td class="style86">
                        :</td>
                    <td>
                        <asp:Label ID="LabelRoomVacant" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style91">
                        &nbsp;</td>
                    <td class="style86">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View5" runat="server" onactivate="View5_Activate">
            <asp:Panel ID="Panel10" runat="server" style="text-align: center" 
                Font-Bold="True">
                <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Text="Add New User"></asp:Label>
                <table style="width: 100%;">
                    <tr>
                        <td class="style45">
                        </td>
                        <td class="style46">
                        </td>
                        <td class="style47">
                        </td>
                        <td class="style48">
                        </td>
                    </tr>
                    <tr>
                        <td class="style44">
                            &nbsp;</td>
                        <td class="style42">
                            Account Type:
                        </td>
                        <td class="style155" style="text-align: left">
                            <asp:RadioButton ID="RadioButtonAdmin" runat="server" GroupName="grp1" 
                                Text="Administrator" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="grp1" 
                                Text="Data Entry" Checked="True"  />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style44">
                            &nbsp;</td>
                        <td class="style42">
                            &nbsp;</td>
                        <td class="style155" style="text-align: left">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style44">
                            &nbsp;</td>
                        <td class="style42">
                            Username :
                        </td>
                        <td class="style155" style="text-align: right">
                            <asp:TextBox ID="TextBoxUserName" runat="server" Width="276px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style44">
                            &nbsp;</td>
                        <td class="style42">
                            &nbsp;</td>
                        <td class="style155">
                            <asp:Label ID="LabelUsernameError" runat="server" Font-Size="Small" 
                                ForeColor="Red" Text="Username should be your id" Visible="False"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style44">
                            &nbsp;</td>
                        <td class="style42">
                            Password:
                        </td>
                        <td class="style155">
                            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" 
                                Width="277px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style44">
                            &nbsp;</td>
                        <td class="style42">
                            &nbsp;</td>
                        <td class="style155">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style44">
                            &nbsp;</td>
                        <td class="style42">
                            Retype Password:
                        </td>
                        <td class="style155">
                            <asp:TextBox ID="TextBoxRetypePassword" runat="server" TextMode="Password" 
                                Width="278px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style44">
                            &nbsp;</td>
                        <td class="style42">
                            &nbsp;</td>
                        <td class="style155">
                            <asp:Label ID="LabelPasswordError" runat="server" Font-Size="Small" 
                                ForeColor="Red" Text="Two passwords did not match" Visible="False"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style156">
                            </td>
                        <td class="style157">
                            </td>
                        <td class="style158">
                            <asp:Label ID="LabelExistError" runat="server" Font-Size="Small" 
                                ForeColor="Red" style="text-align: left" Text="User already exists     " 
                                Visible="False" Width="160px"></asp:Label>
                            <asp:Button ID="ButtonAddUser" runat="server" Text="Add User" 
                                onclick="ButtonAddUser_Click" />
                        </td>
                        <td class="style159">
                            </td>
                    </tr>
                    <tr>
                        <td class="style92">
                        </td>
                        <td class="style93">
                        </td>
                        <td class="style94">
                        </td>
                        <td class="style95">
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </asp:View>
        <asp:View ID="View6" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="style169" align="left" rowspan="2" 
                        style="font-size: large; font-weight: bold">
                        &nbsp;</td>
                    <td align="center" class="style168" rowspan="2" 
                        style="font-size: large; font-weight: bold">
                        Work History</td>
                </tr>
                <tr>
                    <td class="style164">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style169">
                        &nbsp;</td>
                    <td class="style168" rowspan="2" align="center">
                        <div>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" CssClass="Grid" 
                                DataSourceID="SqlDataSource1" Width="674px">
                                <Columns>
                                    <asp:BoundField DataField="hall_name" HeaderText="Hall" 
                                        ItemStyle-HorizontalAlign="Center" ReadOnly="True" SortExpression="hall_name" />
                                    <asp:BoundField DataField="assign_date" dataformatstring="{0:MM/dd/yyyy}" 
                                        HeaderText="Assigned Date" ItemStyle-HorizontalAlign="Center" ReadOnly="True" 
                                        SortExpression="assign_date" />
                                    <asp:BoundField DataField="left_date" dataformatstring="{0:MM/dd/yyyy}" 
                                        HeaderText="Left Date" ItemStyle-HorizontalAlign="Center" ReadOnly="True" 
                                        SortExpression="left_date" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>" 
                                ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>" 
                                SelectCommand="SELECT hall_name, assign_date, left_date FROM work_history WHERE employee_id = @eid">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="LabelEmployeeID" Name="eid" PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        &nbsp;</td>
                    <td class="style23" rowspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style169">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

