<%@ Page Title="Add Employee" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master" AutoEventWireup="true" CodeFile="Add-Employee.aspx.cs" Inherits="master_pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
            width: 64px;
        }
        .style4
        {
            width: 224px;
        }
        .style6
        {
            width: 152px;
            height: 26px;
        }
        .style8
        {
            width: 466px;
        }
        .style10
        {
            width: 64px;
            height: 9px;
        }
        .style11
        {
            width: 152px;
            height: 9px;
        }
        .style12
        {
            width: 224px;
            height: 9px;
        }
        .style13
        {
            width: 70px;
        }
        .style14
        {
            width: 64px;
            height: 26px;
        }
        .style15
        {
            width: 224px;
            height: 26px;
        }
        .style16
        {
            width: 152px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

    <script language="javascript" type="text/javascript">
    function JSValidate(source, args) {
        var element = document.getElementById('<%=EmpIdTB.ClientID %>');
        if (element.value.length == 7) {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }

    function SalaryValidate(source, args) {
        var element = document.getElementById('<%=SalaryTB.ClientID %>');
        if (element.value > 0) {
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
                &nbsp;</td>
            <td class="style8" colspan="2">
                <h1>Add Employee Details</h1></td>            
            <td rowspan="19">
                <asp:Image ID="Image1" runat="server" Height="334px" 
                    ImageUrl="~/images/construction_worker.png" style="margin-top: 0px; margin-left: 0px;" 
                    Width="400px" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style4" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                Employee ID :</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="EmpIdTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;

   

                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>

   

            </td>
            
          

        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4" colspan="2">
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                Name :</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="NameTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
ErrorMessage="Name"
Text="*" ValidationGroup="grp1"
ControlToValidate="NameTB" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style6">
                Address :</td>
            <td class="style4" colspan="2">
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Street :</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="StreetTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
ErrorMessage="Street"
Text="*" ValidationGroup="grp1"
ControlToValidate="StreetTB" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Town :</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="TownTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
ErrorMessage="Town"
Text="*" ValidationGroup="grp1"
ControlToValidate="TownTB" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td class="style11">
            </td>
            <td class="style12" colspan="2">

            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                Gender :</td>
            <td class="style4">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style13">
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
ErrorMessage="Gender" ValidationGroup="grp1"
Text="*"
ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                Phone No :</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="PhoneNOTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
ErrorMessage="Phone Number"
Text="*" ValidationGroup="grp1"
ControlToValidate="PhoneNOTB" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style4" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                Salary :</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="SalaryTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
            
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
            
            </td>
        </tr>
        <tr>
            <td class="style14">
                </td>
            <td class="style6">
                </td>
            <td class="style15" colspan="2">
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                Position :</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="PositionTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
ErrorMessage="Position" ValidationGroup="grp1"
Text="*"
ControlToValidate="PositionTB" ForeColor="Red"></asp:RequiredFieldValidator>
            
            
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style4" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                Employee Image :</td>
            <td class="style4" colspan="2">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="215px" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style4" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style16">
                <asp:Label ID="Label3" runat="server" ForeColor="Red" 
                    style="font-size: x-small" Text="* - Invalid Fields" Visible="False"></asp:Label>
            </td>
            <td class="style4" colspan="2">
                <asp:Button ID="SubmitB" runat="server" Height="31px" onclick="SubmitB_Click" 
                    Text="Submit Details" Width="174px"  CausesValidation=false/>
                
                <br />
            </td>
        </tr>
        <asp:ValidationSummary ID="ValidationSummary1"
ShowMessageBox="false"
ShowSummary="false" ValidationGroup="grp1"
HeaderText="You must enter a value in the following fields:"
EnableClientScript="true"
runat="server"/>
    </table>

    
</asp:Content>

