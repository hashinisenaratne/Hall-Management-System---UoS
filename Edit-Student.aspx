<%@ Page Title="Edit Student" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master" AutoEventWireup="true" CodeFile="Edit-Student.aspx.cs" Inherits="master_pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
            width: 49px;
        }
        .style2
        {
            width: 172px;
        }
        .style4
        {
            width: 261px;
        }
        .style5
        {
            width: 109px;
        }
        .style6
        {
            width: 268px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

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
                &nbsp;</td>
            <td class="style2" colspan="2">
                <h1>Edit Student Details</h1></td>            
            <td rowspan="19" class="style5">
                &nbsp;</td>
            <td rowspan="10" class="style6">
                <asp:Image ID="Image3" runat="server"  Height="138px" Width="137px" 
                    Visible="False" ImageUrl="~/images/Default_Photo.PNG" />
            </td>
            <td rowspan="19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: small" 
                    Text="* No Student Found *" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                Student Number :</td>
            <td class="style4">
                <asp:TextBox ID="StudentNoTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;

     

                <asp:Button ID="SearchB" runat="server" Text="Search" 
                    onclick="Button1_Click1" />

     

            </td>
            
          

        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                Name :</td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name :</td>
            <td class="style4">
                <asp:TextBox ID="FirstNameTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;

            

            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name :</td>
            <td class="style4">
                <asp:TextBox ID="LastNameTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
            
           
</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                Address :</td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Street :</td>
            <td class="style4">
                <asp:TextBox ID="StreetTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;

            
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Town :</td>
            <td class="style4">
                <asp:TextBox ID="TownTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
            
            
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                Gender :</td>
            <td class="style4">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                Phone No :</td>
            <td class="style4">
                <asp:TextBox ID="PhoneNOTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
            

            </td>
            <td rowspan="9" class="style6">
                <asp:Image ID="Image2" runat="server" Height="209px" 
                    ImageUrl="~/images/edit-icon.png" style="text-align: center" Width="209px" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                Year of Admission :</td>
            <td class="style4">
                <asp:TextBox ID="YearTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
            
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                Department :</td>
            <td class="style4">
                <asp:DropDownList ID="DepartmentDL" runat="server" Height="22px" 
                    Width="167px">
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
            
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                Student Image :</td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="215px" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="UpdateB" runat="server" Height="31px" onclick="SubmitB_Click" 
                    Text="Update Details" Width="174px" Visible="False" />
                
                <br />
            </td>
        </tr>
       
    </table>

    
</asp:Content>

