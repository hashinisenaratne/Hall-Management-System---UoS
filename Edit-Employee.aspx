<%@ Page Title="Edit Employee" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master" AutoEventWireup="true" CodeFile="Edit-Employee.aspx.cs" Inherits="master_pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
            width: 39px;
        }
        .style4
        {
            width: 303px;
        }
        .style5
        {
            width: 182px;
        }
        .style6
        {
            width: 39px;
            height: 26px;
        }
        .style7
        {
            width: 182px;
            height: 26px;
        }
        .style8
        {
            width: 303px;
            height: 26px;
        }
        .style9
        {
            width: 116px;
        }
        .style10
        {
            width: 255px;
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
            <td class="style5" colspan="2">
                <h1>Edit Employee Details</h1></td>            
            <td rowspan="19" class="style9">
                &nbsp;</td>
            <td rowspan="10" class="style10">
                <asp:Image ID="Image3" runat="server"  Height="138px" Width="137px" 
                    Visible="False" ImageUrl="~/images/Default_Photo.PNG" />
            </td>
            <td rowspan="19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: small" 
                    Text="* No Employee Found *" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style7">
                Employee ID :</td>
            <td class="style8">
                <asp:TextBox ID="EmpIdTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;

          

                <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" 
                     />

     

            </td>
            
          

        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                Name :</td>
            <td class="style4">
                <asp:TextBox ID="NameTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;

            

            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                Address :</td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Street :</td>
            <td class="style4">
                <asp:TextBox ID="StreetTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;

            
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Town :</td>
            <td class="style4">
                <asp:TextBox ID="TownTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
            
           

            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
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
            <td class="style5">
                Phone No :</td>
            <td class="style4">
                <asp:TextBox ID="PhoneNOTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
            

            </td>
            <td rowspan="9" class="style10">
                <asp:Image ID="Image1" runat="server" Height="209px" 
                    ImageUrl="~/images/edit-icon.png" Width="209px" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                Salary :</td>
            <td class="style4">
                <asp:TextBox ID="SalaryTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
           
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                Position :</td>
            <td class="style4">
                <asp:TextBox ID="PositionTB" runat="server" Width="167px"></asp:TextBox>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                Employee Image :</td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="215px" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="UpdateB" runat="server" Height="31px" onclick="SubmitB_Click" 
                    Text="Update Details" Width="174px" Visible="False" />
                
                <br />
            </td>
        </tr>
        
    </table>

    
</asp:Content>

