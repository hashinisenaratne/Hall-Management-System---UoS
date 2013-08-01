<%@ Page Title="Assign Employee" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master"
    AutoEventWireup="true" CodeFile="Assign-Employee.aspx.cs" Inherits="master_pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 16px;
        }
        .style2
        {
            width: 680px;
        }
        .style3
        {
            width: 17px;
        }
        .style4
        {
            width: 216px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource4"
        AutoGenerateColumns="False" AllowSorting="True" Height="216px" 
        Width="678px" HorizontalAlign="Center" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged1">
        <Columns>
            <asp:BoundField DataField="employee_id" HeaderText="Employee ID" ReadOnly="True"
                SortExpression="employee_id" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="True" SortExpression="name" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="hall_name" HeaderText="Hall" ReadOnly="True" SortExpression="hall_name" ItemStyle-HorizontalAlign="Center"/>
            
            <asp:CommandField ButtonType="Button" ShowSelectButton="True"  ItemStyle-HorizontalAlign="Center"/>
        </Columns>
    </asp:GridView>

            </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4" valign="top">
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Employee id:"></asp:Label>
                <asp:Label ID="LabelEmployeeId" runat="server"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="DropDownListHall" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" 
                    Height="23px" Width="182px">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Assign Hall" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>" 
                    SelectCommand="Select name from hall;"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>" 
        SelectCommand="SELECT employee.employee_id,name,hall_name FROM employee left outer join works on employee.employee_id= works.employee_id">

    
        
            </asp:SqlDataSource>

</asp:Content>
