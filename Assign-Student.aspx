<%@ Page Title="Assign Student" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master"
    AutoEventWireup="true" CodeFile="Assign-Student.aspx.cs" Inherits="master_pages_Assign_Student" %>

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
    <table style="width: 100%;">
        <tr>
            <td class="style1">
                &nbsp;
            </td>
            <td class="style2">
                &nbsp;
            </td>
            <td class="style3">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;
            </td>
            <td class="style2">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource4" AutoGenerateColumns="False"
                    AllowSorting="True" Height="216px" Width="678px" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <Columns>
                        <asp:BoundField DataField="student_number" HeaderText="Student Number" ReadOnly="True"
                            SortExpression="student_number" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="True" SortExpression="name"
                            ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="hall_name" HeaderText="Hall" ReadOnly="True" SortExpression="hall_name"
                            ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="room_number" HeaderText="Room Number" ReadOnly="True" SortExpression="room_number"
                            ItemStyle-HorizontalAlign="Center" />
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" ItemStyle-HorizontalAlign="Center" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="style3">
                &nbsp;
            </td>
            <td class="style4" valign="top">
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Student Number:"></asp:Label>
                <asp:Label ID="LabelStudentNo" runat="server"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="DropDownListHall" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                    DataTextField="name" DataValueField="name" Height="23px" Width="182px" 
                    style="margin-bottom: 0px" 
                    onselectedindexchanged="DropDownListHall_SelectedIndexChanged">
                </asp:DropDownList>
                <br />
                <br />
                <asp:DropDownList ID="DropDownListRoom" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="room_number" DataValueField="room_number" 
                    Height="23px" Width="182px">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
                    Text="Assign Room" />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>" 
                    SelectCommand="Select room_number from room where hall_name=@hall;">
                         <SelectParameters>
                            <asp:ControlParameter Name="hall" 
                              ControlID="DropDownListHall"
                              PropertyName="SelectedItem.Text"/>
                          </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>" 
                    SelectCommand="Select name from hall;">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>" 
                    SelectCommand="SELECT student.student_number,CONCAT(first_name ,' ' ,last_name) as name,hall_name, room_number FROM student left outer join accommodate on student.student_number= accommodate.student_number">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;
            </td>
            <td class="style2">
                &nbsp;
            </td>
            <td class="style3">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
