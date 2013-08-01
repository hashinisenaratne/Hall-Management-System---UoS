<%@ Page Title="Student Info" Language="C#" MasterPageFile="~/master pages/MasterPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student2" %>
<%@ MasterType VirtualPath="~/master pages/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/StudentStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="sidebar" Runat="Server">
    <div class="nav">
        <br />
        <asp:Button ID="Button1" runat="server" Text="Payment History" Height="50px" Width="190px"
            Font-Bold="False" Font-Size="Medium" Visible="False" 
            ToolTip="View Payment History" onclick="Button1_Click" /><br />
        <asp:Button ID="Button2" runat="server" Text="Accomadation History" Height="50px"
            Width="190px" Font-Bold="False" Font-Size="Medium" Visible="False" 
            ToolTip="View Accomadation History" onclick="Button2_Click" /><br />
        <asp:Button ID="Button3" runat="server" Text="Room Details" Height="50px" Width="190px"
            Font-Bold="False" Font-Size="Medium" Visible="False" 
            onclick="Button3_Click" ToolTip="View Room Details" />
        <asp:Button ID="Button4" runat="server" Font-Size="Medium" Height="50px" Text="Hall Details"
            Width="190px" Visible="False" ToolTip="View Hall Details" 
            onclick="Button4_Click" />
        <br />
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">
    <h1>
        Student Information
    </h1>
    <asp:Image ID="profImage" runat="server" AlternateText="Student Image" BorderStyle="None"
        Height="200px" Style="margin-left: 231px" Width="150px" 
    CssClass="image" />
    <br />    
    <p>
        <table style="width: 100%; margin-left: 40px;">
            <tr>
                <td class="style1" height="30px">
                    <asp:Label ID="numText" runat="server" Font-Bold="True" Text="Student Number" 
                        CssClass="boldLabels"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="numLabel" runat="server" CssClass="labels" ForeColor="#333399"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" height="30px">
                    <asp:Label ID="nameText" runat="server" Font-Bold="True" Text="Name in Full" 
                        CssClass="boldLabels"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="nameLabel" runat="server" CssClass="labels" ForeColor="#333399"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" height="30px">
                    <asp:Label ID="genText" runat="server" Font-Bold="True" 
                        Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="genLabel" runat="server" CssClass="labels" ForeColor="#333399"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" height="30px">
                    <asp:Label ID="addrText" runat="server" Font-Bold="True" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="addrLabel" runat="server" CssClass="labels" ForeColor="#333399"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" height="30px">
                    <asp:Label ID="phnText" runat="server" Font-Bold="True" Text="Phone Number(s)"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="phnLabel" runat="server" CssClass="labels" ForeColor="#333399"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" height="30px">
                    <asp:Label ID="deptText" runat="server" Font-Bold="True" Text="Department"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="depLable" runat="server" CssClass="labels" ForeColor="#333399"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" height="30px">
                    <asp:Label ID="admText" runat="server" Font-Bold="True" 
                        Text="Year of Admission"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="admLabel" runat="server" CssClass="labels" ForeColor="#333399"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" height="30px">
                    <asp:Label ID="balanceText" runat="server" Font-Bold="True" 
                        Text="Payment Due"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="balanceLabel" runat="server" CssClass="labels" ForeColor="#333399"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <br />
    <asp:MultiView ID="multiView" runat="server"  >        
        <asp:View ID="view1" runat="server" >
            <asp:Panel ID="panel1" runat="server" CssClass="viewPanel" 
                HorizontalAlign="Left">
                 <h3>Room Details</h3>
                
                <table style="width:100%;">
                    <tr>
                        <td class="style2" height="25px">
                            <asp:Label ID="Label1" runat="server" Text="Room Number"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" height="25px">
                            <asp:Label ID="Label2" runat="server" Text="Room Type"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" height="25px">
                            <asp:Label ID="Label3" runat="server" Text="Hall Name"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label6" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" height="25px">
                            <asp:Label ID="Label7" runat="server" Text="Room Cost"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label8" runat="server"></asp:Label>
                        </td>
                    </tr>                    
                    <tr>
                        <td class="style2" height="25px">
                            <asp:Label ID="Label9" runat="server" Text="Assignment Date"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label10" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" height="25px">
                            <asp:Label ID="Label11" runat="server" Text="Roommate"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:LinkButton ID="Label12" runat="server" onclick="Label12_Click">LinkButton</asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <br /> 
            </asp:Panel>   
            <script> 
               window.scrollTo(0, document.body.clientHeight + 300);
            </script>         
        </asp:View>
        
        <asp:View ID="View2" runat="server">
        <asp:Panel ID="panel2" runat="server" CssClass="viewPanel" 
                HorizontalAlign="Left">
                 <h3>Hall Details
                     </h3>                 
                
                <table style="width:100%;">
                    <tr>
                        <td class="style4" height="25px">
                            <asp:Label ID="Label13" runat="server" Text="Hall Name"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label14" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" height="25px">
                            <asp:Label ID="Label15" runat="server" Text="Hall Type"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label16" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" height="25px">
                            <asp:Label ID="Label17" runat="server" Text="Accommodation Capacity"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label18" runat="server"></asp:Label>
                        </td>
                    </tr>                    
                </table>
                <br />
            </asp:Panel>
            <script>
                window.scrollTo(0, document.body.clientHeight + 200);
            </script> 
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:Panel ID="panel3" runat="server" CssClass="viewPanel">
                <asp:Label ID="Label19" runat="server" 
                    Text="Sorry! you haven't been assigned to a room/hall yet." Font-Bold="True" 
                    ForeColor="#CC0000"></asp:Label>
            </asp:Panel>
        </asp:View>        
    </asp:MultiView>
    <br />
</asp:Content>

