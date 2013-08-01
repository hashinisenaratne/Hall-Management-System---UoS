<%@ Page Title="Add Student" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master"
    AutoEventWireup="true" CodeFile="Add-Student.aspx.cs" Inherits="master_pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 0px;
        }
        .style2
        {
            width: 604px;
        }
        .style4
        {
            width: 213px;
        }
        .style5
        {
            width: 147px;
            color: #FF0000;
        }
        .style6
        {
            width: 167px;
        }
        .style15
        {
            width: 213px;
            height: 30px;
        }
        .style16
        {
            width: 147px;
        }
        .style17
        {
            width: 147px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <script language="javascript" type="text/javascript">
            function JSValidate(source, args) {

                var element = document.getElementById('<%=StudentNoTB.ClientID %>');

                if (element.value.length == 7) {
                    args.IsValid = true;
                }
                else {
                    args.IsValid = false;
                }
            }

            function YearValidate(source, args) {
                var element = document.getElementById('<%=YearTB.ClientID %>');
                if (element.value > 999 && element.value < 9999) {
                    args.IsValid = true;
                }
                else {
                    args.IsValid = false;
                }
            }
        </script>
        <table style="width: 98%;">
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style2" colspan="2">
                    <h1>
                        Add Student Details</h1>
                </td>
                <td rowspan="19">
                    <asp:Image ID="Image1" runat="server" Height="458px" ImageUrl="~/images/fourstudents.jpg"
                        Style="margin-top: 0px" Width="433px" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    &nbsp;
                </td>
                <td class="style4" colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    Student Number :
                </td>
                <td class="style4" colspan="2">
                    <asp:TextBox ID="StudentNoTB" runat="server" Width="167px"></asp:TextBox>
                    &nbsp;
                    <asp:Label ID="Label2" runat="server" BorderColor="Red" ForeColor="Red" Text="*"
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    Name :
                </td>
                <td class="style4" align="left" style="font-size: xx-small" valign="top" colspan="2">
                    (Student Id - 7 Characters)
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name :
                </td>
                <td class="style4" colspan="2">
                    <asp:TextBox ID="FirstNameTB" runat="server" Width="167px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name"
                        Text="*" ValidationGroup="grp1" ControlToValidate="FirstNameTB" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name :
                </td>
                <td class="style4" colspan="2">
                    <asp:TextBox ID="LastNameTB" runat="server" Width="167px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name"
                        Text="*" ValidationGroup="grp1" ControlToValidate="LastNameTB" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    Address :
                </td>
                <td class="style4" colspan="2">
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Street :
                </td>
                <td class="style4" colspan="2">
                    <asp:TextBox ID="StreetTB" runat="server" Width="167px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Street"
                        Text="*" ValidationGroup="grp1" ControlToValidate="StreetTB" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td class="style17">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Town :
                </td>
                <td class="style15" colspan="2">
                    <asp:TextBox ID="TownTB" runat="server" Width="167px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Town"
                        Text="*" ValidationGroup="grp1" ControlToValidate="TownTB" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td class="style16">
                    Gender :
                </td>
                <td class="style4">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="92px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    &nbsp;
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Gender"
                        Text="*" ValidationGroup="grp1" ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    Phone No :
                </td>
                <td class="style4" colspan="2">
                    <asp:TextBox ID="PhoneNOTB" runat="server" Width="167px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone Number"
                        Text="*" ValidationGroup="grp1" ControlToValidate="PhoneNOTB" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    &nbsp;
                </td>
                <td class="style4" colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    Year of Admission :
                </td>
                <td class="style4" colspan="2">
                    <asp:TextBox ID="YearTB" runat="server" Width="167px"></asp:TextBox>
                    &nbsp;
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    &nbsp;
                </td>
                <td class="style4" colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    Department :
                </td>
                <td class="style4" colspan="2">
                    <asp:DropDownList ID="DepartmentDL" runat="server" Height="22px" Width="167px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Chemical &amp; Process Eng</asp:ListItem>
                        <asp:ListItem>Civil Eng</asp:ListItem>
                        <asp:ListItem>Computer Science &amp; Eng</asp:ListItem>
                        <asp:ListItem>Electrical Eng</asp:ListItem>
                        <asp:ListItem>Electronic &amp; Tele Eng</asp:ListItem>
                        <asp:ListItem>Material Science &amp; Eng</asp:ListItem>
                        <asp:ListItem>Mechanical Eng</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Department"
                        Text="*" ValidationGroup="grp1" ControlToValidate="DepartmentDL" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    &nbsp;
                </td>
                <td class="style4" colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    Student Image :
                </td>
                <td class="style4" colspan="2">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="215px" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style16">
                    &nbsp;
                </td>
                <td class="style4" colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td class="style5">
                    <asp:Label ID="Label1" runat="server" Style="font-size: x-small" Text="* - Invalid Fields"
                        Visible="False"></asp:Label>
                </td>
                <td class="style4" colspan="2">
                    <asp:Button ID="SubmitB" runat="server" Height="31px" OnClick="SubmitB_Click" Text="Submit Details"
                        Width="174px" ValidationGroup="grp1" CausesValidation="false" />
                    <br />
                </td>
            </tr>
            <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="false" ShowSummary="false"
                HeaderText="You must enter a value in the following fields:" EnableClientScript="true"
                runat="server" />
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server" class="panel2">
    &nbsp;&nbsp;
        <asp:Label ID="successLbl" runat="server" 
            Text="Student added successfully with the ID : " Font-Bold="True" 
            Font-Size="Large" ForeColor="#003300"></asp:Label> <br />&nbsp;&nbsp;
                  
        <asp:Button ID="assignBtn" runat="server" Text="Assign Room" 
            onclick="assignBtn_Click"/> &nbsp;
                  
        <asp:Button ID="newBtn" runat="server" Text="Add New Student" 
            onclick="newBtn_Click"/>
    </asp:Panel>
</asp:Content>
