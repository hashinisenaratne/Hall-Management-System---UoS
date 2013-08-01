<%@ Page Title="Data Entry Mode" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master" AutoEventWireup="true" CodeFile="DataEntry.aspx.cs" Inherits="master_pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style36
        {
            width: 118px;
        }
        .style41
        {
            width: 167px;
        }
        .style92
        {
        }
        .style102
        {
            width: 118px;
            height: 5px;
        }
        .style142
        {
            height: 5px;
        }
        .style144
        {
            width: 47px;
            height: 5px;
        }
        .style145
        {
            width: 205px;
            height: 6px;
        }
        .style146
        {
            width: 205px;
            height: 5px;
        }
        .style147
        {
            width: 167px;
        }
        .style148
        {
            width: 167px;
            height: 44px;
        }
        .style149
        {
            width: 118px;
            height: 44px;
        }
        .style150
        {
            width: 47px;
            height: 44px;
        }
        .style151
        {
            width: 205px;
            height: 44px;
            text-align: center;
        }
        .style152
        {
            height: 44px;
        }
        .style171
        {
            width: 47px;
        }
        .style183
        {
            width: 205px;
            height: 21px;
            text-align: center;
        }
        .style184
        {
            width: 205px;
            height: 24px;
            text-align: center;
        }
        .style190
        {
            width: 205px;
        }
        .style195
        {
            width: 111px;
            height: 47px;
        }
        .style196
        {
            width: 24px;
            height: 47px;
        }
        .style204
        {
            width: 111px;
        }
        .style205
        {
            width: 24px;
        }
        .style207
        {
            width: 89px;
        }
        .style208
        {
            width: 89px;
            height: 47px;
        }
        .style210
        {
            width: 111px;
            height: 22px;
        }
        .style211
        {
            width: 24px;
            height: 22px;
        }
        .style212
        {
            width: 89px;
            height: 22px;
        }
        .style213
        {
            width: 111px;
            height: 5px;
        }
        .style214
        {
            width: 24px;
            height: 5px;
        }
        .style215
        {
            width: 89px;
            height: 5px;
        }
        .style216
        {
            width: 118px;
            height: 6px;
        }
        .style217
        {
            width: 167px;
            height: 6px;
        }
        .style218
        {
            width: 47px;
            height: 6px;
        }
        .style219
        {
            height: 6px;
        }
        .style220
        {
            width: 111px;
            height: 16px;
        }
        .style221
        {
            width: 24px;
            height: 16px;
        }
        .style222
        {
            width: 89px;
            height: 16px;
        }
        .style223
        {
            width: 111px;
            height: 49px;
        }
        .style224
        {
            width: 24px;
            height: 49px;
        }
        .style225
        {
            width: 89px;
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style216">
                </td>
            <td class="style217">
                </td>
            <td class="style218">
                </td>
            <td class="style145" colspan="3">
                </td>
            <td class="style219">
                </td>
        </tr>
        <tr>
            <td class="style36" rowspan="8">
                &nbsp;</td>
            <td class="style41" rowspan="7">
                <asp:Image ID="Image1" runat="server" Height="200px" 
                    ImageUrl="~/images/students.jpg" Width="200px" />
            </td>
            <td class="style171" rowspan="8">
                &nbsp;</td>
            <td class="style210">
                &nbsp;</td>
            <td class="style211">
                </td>
            <td class="style212">
                &nbsp;</td>
            <td class="style92" rowspan="8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style204">
                </td>
            <td class="style205">
                </td>
            <td class="style207">
                </td>
        </tr>
        <tr>
            <td class="style204">
                <asp:Button ID="Button1" runat="server" Height="45px" Text="Add Student" 
                    Width="180px" onclick="Button1_Click" />
                </td>
            <td class="style205">
                </td>
            <td class="style207">
                <asp:Button ID="Button2" runat="server" Height="45px" Text="Edit Student" 
                    Width="180px" onclick="Button2_Click" />
                </td>
        </tr>
        <tr>
            <td class="style213">
                </td>
            <td class="style214">
                </td>
            <td class="style215">
                </td>
        </tr>
        <tr>
            <td class="style223">
                <asp:Button ID="Button3" runat="server" Height="45px" Text="Assign Student" 
                    Width="180px" onclick="Button3_Click" />
                </td>
            <td class="style224">
                </td>
            <td class="style225">
                <asp:Button ID="Button7" runat="server" Height="45px" Text="Payment Data" 
                    Width="180px" onclick="Button7_Click" />
            </td>
        </tr>
        <tr>
            <td class="style204">
                </td>
            <td class="style205">
                </td>
            <td class="style207">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style195">
                &nbsp;</td>
            <td class="style196">
                </td>
            <td class="style208">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style41" rowspan="2">
                &nbsp;</td>
            <td class="style220">
                </td>
            <td class="style221">
                </td>
            <td class="style222">
                </td>
        </tr>
        <tr>
            <td class="style36">
                </td>
            <td class="style171">
                </td>
            <td class="style190" colspan="3">
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style149" rowspan="6">
                </td>
            <td class="style148" rowspan="6">
                <asp:Image ID="Image2" runat="server" Height="200px" 
                    ImageUrl="~/images/employees.png" Width="200px" 
                    style="margin-bottom: 0px" />
                </td>
            <td class="style150" rowspan="6">
                </td>
            <td class="style151" colspan="3">
                <asp:Button ID="Button4" runat="server" Height="45px" Text="Add Employee" 
                    Width="180px" onclick="Button4_Click" />
            </td>
            <td class="style152" rowspan="6">
                </td>
        </tr>
        <tr>
            <td class="style183" colspan="3">
                </td>
        </tr>
        <tr>
            <td class="style151" colspan="3">
                <asp:Button ID="Button5" runat="server" Height="45px" Text="Edit Employee" 
                    Width="180px" onclick="Button5_Click" />
            </td>
        </tr>
        <tr>
            <td class="style184" colspan="3">
                </td>
        </tr>
        <tr>
            <td class="style151" colspan="3">
                <asp:Button ID="Button6" runat="server" Height="45px" Text="Assign Employee" 
                    Width="180px" onclick="Button6_Click" />
                </td>
        </tr>
        <tr>
            <td class="style151" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style102">
                &nbsp;</td>
            <td class="style147">
                &nbsp;</td>
            <td class="style144">
                &nbsp;</td>
            <td class="style146" colspan="3">
                &nbsp;</td>
            <td class="style142">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

