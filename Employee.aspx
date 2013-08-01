<%@ Page Title="Employee Info" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
            <style type="text/css">
                .style17
                {
                    width: 555px;
                }
                .style14
                {
                    width: 142px;
                }
        .style1
        {
            width: 265px;
        }     
                .style1
        {
            width: 265px;
        }
                .style19
                {
    }
                .style21
                {
                }
                .style23
                {
                    width: 185px;
                    }
                .style24
                {
                    height: 26px;
                }
                .style27
    {
        width: 97px;
    }
                .style28
                {
                    width: 9px;
                }
                .style34
                {
                    width: 20px;
                    height: 26px;
                }
                .style36
                {
                    width: 52px;
                    height: 26px;
                }
                .style37
                {
                    width: 101px;
                }
                .style38
                {
                    width: 101px;
                    height: 26px;
                }
                .style41
                {
                    width: 11px;
                    height: 26px;
                }
                .style43
                {
                    width: 11px;
                }
                .style44
                {
                    width: 55px;
                    height: 12px;
                }
                .style45
                {
                    width: 142px;
                    height: 12px;
                }
                .style46
                {
                    width: 9px;
                    height: 12px;
                }
                .style47
                {
                    height: 12px;
                    width: 364px;
                }
                .style49
                {
                    width: 142px;
                    height: 26px;
                }
                .style50
                {
                    width: 9px;
                    height: 26px;
                }
                .style51
                {
                    width: 364px;
                }
                .style52
                {
                    height: 26px;
                    width: 364px;
                }
                .style53
                {
                    width: 1px;
                }
                .style54
                {
                    width: 20px;
                }
                .style55
                {
                    width: 1px;
                }
                .style58
                {
                    width: 36px;
                }
                .style59
                {
                    width: 864px;
                }
                .Grid
                {}
                .style60
                {
                    width: 863px;
                }
                .style62
                {
                    width: 61px;
                }
                .style63
                {
                    width: 251px;
                }
                .style72
                {
                    width: 164px;
                    height: 26px;
                }
                .style73
                {
                    width: 164px;
                }
                .style74
                {
                    width: 264px;
                }
                .style82
                {
                    width: 669px;
                }
                .style83
                {
                    width: 139px;
                }
                .style84
                {
                    width: 55px;
                }
                .style85
                {
                    width: 55px;
                    height: 26px;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:Panel ID="Panel2" runat="server">
                    <table style="width:100%;">
                        <tr>
                            <td class="style17">
                                <asp:Panel ID="Panel1" runat="server" Width="562px">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="ImageEmployee" runat="server" 
                                        Height="70px" Width="70px" />
                                    <br />
                                    <br />
                                    <table style="width:99%;">
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top" 
                                                style="font-size: medium; font-weight: bold">
                                                ID</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                :</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                <asp:Label ID="LabelID" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style44" nowrap="nowrap" scope="colgroup" valign="top">
                                            </td>
                                            <td align="left" class="style45" nowrap="nowrap" scope="colgroup" valign="top">
                                            </td>
                                            <td align="left" class="style46" nowrap="nowrap" scope="colgroup" valign="top">
                                            </td>
                                            <td class="style47" scope="colgroup" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top" 
                                                style="font-size: medium; font-weight: bold">
                                                Name</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                :</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                <asp:Label ID="LabelName" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top" 
                                                style="font-size: medium; font-weight: bold">
                                                Gender</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                :</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                <asp:Label ID="LabelGender" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style85" nowrap="nowrap" scope="colgroup" valign="top">
                                            </td>
                                            <td align="left" class="style49" nowrap="nowrap" scope="colgroup" valign="top" 
                                                style="font-size: medium; font-weight: bold">
                                                Address</td>
                                            <td align="left" class="style50" nowrap="nowrap" scope="colgroup" valign="top">
                                                :</td>
                                            <td class="style52" rowspan="1" scope="colgroup" valign="top">
                                                <asp:Label ID="LabelAddress" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top" 
                                                style="font-size: medium; font-weight: bold">
                                                Position</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                :</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                <asp:Label ID="LabelPosition" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top" 
                                                style="font-size: medium; font-weight: bold">
                                                Salary</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                :</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                <asp:Label ID="LabelSalary" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top" 
                                                style="font-size: medium; font-weight: bold">
                                                Assigned Hall</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                :</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                <asp:Label ID="LabelHall" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style84" nowrap="nowrap" scope="colgroup" valign="top">
                                                &nbsp;</td>
                                            <td align="left" class="style14" nowrap="nowrap" scope="colgroup" valign="top" 
                                                style="font-size: medium; font-weight: bold">
                                                Telephone No(s)</td>
                                            <td align="left" class="style28" nowrap="nowrap" scope="colgroup" valign="top">
                                                :</td>
                                            <td class="style51" scope="colgroup" valign="top">
                                                <asp:Label ID="LabelTelephone" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt="" src="images/Employee.png" class="style1" /></asp:Panel>
                            </td>
                            <td>
                                <asp:MultiView ID="MultiView2" runat="server" ActiveViewIndex="2">
                                    <asp:View ID="View3" runat="server">
                                        <table style="width:100%;">
                                            <tr>
                                                <td class="style55" bgcolor="#E8E8E8" rowspan="4">
                                                    &nbsp;</td>
                                                <td class="style72">
                                                    &nbsp;</td>
                                                <td class="style74" rowspan="2" align="center" 
                                                    style="font-size: large; font-weight: bold">
                                                    Work History</td>
                                                <td align="center" class="style23" rowspan="2" 
                                                    style="font-size: large; font-weight: bold">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style72">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style73">
                                                    &nbsp;</td>
                                                <td class="style74" rowspan="2">
<div>  
      
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting = "True" CssClass="Grid" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="303px">
        <Columns>
            <asp:BoundField DataField="hall_name" HeaderText="Hall" ReadOnly="True" 
                SortExpression="hall_name" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="assign_date" dataformatstring="{0:MM/dd/yyyy}" HeaderText="Assigned Date" ReadOnly="True" 
                SortExpression="assign_date" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="left_date" dataformatstring="{0:MM/dd/yyyy}" HeaderText="Left Date" ReadOnly="True" 
                SortExpression="left_date" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
</asp:GridView>
      
    
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" 
        ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>"         
        SelectCommand="SELECT hall_name, assign_date, left_date FROM work_history WHERE employee_id = @eid">
              <SelectParameters>
                <asp:ControlParameter Name="eid" 
                  ControlID="LabelID"
                  PropertyName="Text"/>
              </SelectParameters>
    </asp:SqlDataSource>
      
        
      
    </div>  
                                                    &nbsp;</td>
                                                <td class="style23" rowspan="2">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style73">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View2" runat="server">
                                        <table style="width:100%;">
                                            <tr>
                                                <td align="center" class="style53" height="60" bgcolor="#E8E8E8" rowspan="14">
                                                    &nbsp;</td>
                                                <td align="center" class="style54" height="60">
                                                    &nbsp;</td>
                                                <td align="center" class="style19" colspan="4" height="60">
                                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                                                        Text="Assigned Hall Details"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    &nbsp;</td>
                                                <td class="style43">
                                                    &nbsp;</td>
                                                <td colspan="2">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    Hall</td>
                                                <td class="style43">
                                                    :</td>
                                                <td colspan="2">
                                                    <asp:Label ID="Label2hall" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    &nbsp;</td>
                                                <td class="style43">
                                                    &nbsp;</td>
                                                <td colspan="2">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    Type</td>
                                                <td class="style43">
                                                    :</td>
                                                <td colspan="2">
                                                    <asp:Label ID="Label2type" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    &nbsp;</td>
                                                <td class="style43">
                                                    &nbsp;</td>
                                                <td colspan="2">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    No of rooms</td>
                                                <td class="style43">
                                                    :</td>
                                                <td colspan="2">
                                                    <asp:Label ID="Label2rooms" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    &nbsp;</td>
                                                <td class="style43">
                                                    &nbsp;</td>
                                                <td class="style21">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style34">
                                                </td>
                                                <td class="style38">
                                                </td>
                                                <td class="style41">
                                                    &nbsp;</td>
                                                <td class="style36">
                                                    </td>
                                                <td class="style24">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    &nbsp;</td>
                                                <td class="style43">
                                                    &nbsp;</td>
                                                <td class="style21" colspan="2">
                                                    <asp:Button ID="Button2employee" runat="server" Height="40px" 
                                                        onclick="Button2employee_Click" Text="View Employee Details" Width="200px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    &nbsp;</td>
                                                <td class="style43">
                                                    &nbsp;</td>
                                                <td class="style21">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    &nbsp;</td>
                                                <td class="style43">
                                                    &nbsp;</td>
                                                <td class="style21" colspan="2">
                                                    <asp:Button ID="Button2student" runat="server" Height="40px" 
                                                        onclick="Button2student_Click" Text="View Student Details" Width="200px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    &nbsp;</td>
                                                <td class="style43">
                                                    &nbsp;</td>
                                                <td class="style21">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style54">
                                                    &nbsp;</td>
                                                <td class="style37">
                                                    &nbsp;</td>
                                                <td class="style43">
                                                    &nbsp;</td>
                                                <td class="style21" colspan="2">
                                                    <asp:Button ID="Button2room" runat="server" Height="40px" 
                                                        onclick="Button2room_Click" Text="View room details" Width="200px" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View4" runat="server">
                                        <table style="width:100%;">
                                            <tr>
                                                <td class="style27">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style27">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Button ID="ButtonHall" runat="server" Font-Size="X-Large" Height="100px" 
                                                        onclick="ButtonHall_Click" Text="Hall Details" Width="200px" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style27">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style27">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Button ID="ButtonHistory" runat="server" Font-Size="X-Large" 
                                                        Height="100px" onclick="ButtonHistory_Click" Text="Work History" 
                                                        Width="200px" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style27">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style27">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View8" runat="server">
                                        <table style="width:100%;">
                                            <tr>
                                                <td class="style62">
                                                    &nbsp;</td>
                                                <td class="style63">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style62">
                                                    &nbsp;</td>
                                                <td style="font-size: large; font-weight: bold" align="center" class="style63">
                                                    You have not assigned to a hall yet</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style62">
                                                    &nbsp;</td>
                                                <td class="style63">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View9" runat="server">
                                        <table style="width:100%;">
                                            <tr>
                                                <td class="style62">
                                                    &nbsp;</td>
                                                <td class="style63">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style62">
                                                    &nbsp;</td>
                                                <td align="center" class="style63" style="font-size: large; font-weight: bold">
                                                    No Work History found for you</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style62">
                                                    &nbsp;</td>
                                                <td class="style63">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </asp:MultiView>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:View>
            <asp:View ID="View5" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td class="style58">
                            &nbsp;</td>
                        <td class="style59">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style58">
                            &nbsp;</td>
                        <td align="center" class="style59" 
                            style="font-size: large; font-weight: bold; font-style: normal">
                            Employee Details of the Hall that you are assigned to...</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style58">
                            &nbsp;</td>
                        <td class="style59">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style58">
                            &nbsp;</td>
                        <td class="style59">
<div>  
      
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting = "True" CssClass="Grid" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="857px">
        <Columns>
            <%--<asp:BoundField DataField="image" HeaderText="Image" ReadOnly="True" 
                SortExpression="image" />--%>
            <asp:TemplateField ItemStyle-HorizontalAlign="center">
                <HeaderTemplate>Image</HeaderTemplate>
                    <ItemTemplate>
                        <img src='data:image/jpg;base64,<%# Eval("Image") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("Image")) : string.Empty %>' alt="image" height="70" width="70"/>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="employee_id" HeaderText="ID" ReadOnly="True" 
                SortExpression="employee_id" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="True" 
                SortExpression="name" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField DataField="position" HeaderText="Position" ReadOnly="True" 
                SortExpression="position" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
</asp:GridView>
      
     
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>" 
        SelectCommand="SELECT image, employee.employee_id, name, position FROM employee,works where works.hall_name= @ehall AND works.employee_id= employee.employee_id">
              <SelectParameters>
                <asp:ControlParameter Name="ehall" 
                  ControlID="LabelHall"
                  PropertyName="Text"/>
              </SelectParameters>

    </asp:SqlDataSource>
      
        
      
    </div>  
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style58">
                            &nbsp;</td>
                        <td class="style59">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View6" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style60">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="center" class="style60" style="font-size: large; font-weight: bold">
                            Student Details of the Hall that you are assigned to...</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style60">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style60">
  
<div>  
      
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
        AllowSorting = "True" CssClass="Grid" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="857px">
        <Columns>
            <asp:TemplateField ItemStyle-HorizontalAlign="center">
                <HeaderTemplate>Image</HeaderTemplate>
                    <ItemTemplate>
                        <img src='data:image/jpg;base64,<%# Eval("Image") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("Image")) : string.Empty %>' alt="image" height="70" width="70"/>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="student_number" HeaderText="ID" ReadOnly="True" 
                SortExpression="student_number" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="True" 
                SortExpression="name" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="room_number" HeaderText="Room Number" ReadOnly="True" 
                SortExpression="room_number" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="admission_year" HeaderText="Year of Admission" ReadOnly="True" 
                SortExpression="admission_year" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="department" HeaderText="Department" ReadOnly="True" 
                SortExpression="admission_yeardepartment" ItemStyle-HorizontalAlign="Center" />
        </Columns>
</asp:GridView>
      
     
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>" 
        SelectCommand="SELECT image, student.student_number, CONCAT(first_name ,' ' ,last_name) as name, accommodate.room_number,admission_year, department FROM student,accommodate,room where room.hall_name= @ehall AND accommodate.room_number= room.room_number AND student.student_number=accommodate.student_number">
              <SelectParameters>
                <asp:ControlParameter Name="ehall" 
                  ControlID="LabelHall"
                  PropertyName="Text"/>
              </SelectParameters>

    </asp:SqlDataSource>
      
        
      
    </div>
  
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style60">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View7" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td class="style83">
                            &nbsp;</td>
                        <td class="style82">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style83">
                            &nbsp;</td>
                        <td align="center" style="font-size: large; font-weight: bold" class="style82">
                            Room Details of the Hall that you are assigned to...</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style83">
                            &nbsp;</td>
                        <td class="style82">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style83">
                            &nbsp;</td>
                        <td class="style82">
<div>  
      
    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
        AllowSorting = "True" CssClass="Grid" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Width="672px">
        <Columns>
            <asp:BoundField DataField="room_number" HeaderText="Room Number" ReadOnly="True" 
                SortExpression="room_number" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="type" HeaderText="Type" ReadOnly="True" 
                SortExpression="type" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="cost" HeaderText="Cost" ReadOnly="True" 
                SortExpression="cost" ItemStyle-HorizontalAlign="Center" />
        </Columns>
</asp:GridView>
      
     
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>" 
        SelectCommand="SELECT room_number, type, cost FROM room where hall_name= @ehall">
              <SelectParameters>
                <asp:ControlParameter Name="ehall" 
                  ControlID="LabelHall"
                  PropertyName="Text"/>
              </SelectParameters>

    </asp:SqlDataSource>
      
        
      
    </div> 
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style83">
                            &nbsp;</td>
                        <td class="style82">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            
        </asp:MultiView>
        
        <br />

</asp:Content>

