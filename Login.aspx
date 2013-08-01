<%@ Page Title="Login" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/LoginStyle.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <div>    
        <asp:Panel ID="imagePanel" runat="server" CssClass="imagePanel">
                     
        </asp:Panel>
    </div>
    <div>    
        <asp:Panel ID="logPanel" runat="server" CssClass="logPanel">
            <h1>Login</h1>
            <table style="width:100%;" cellpadding="5px">
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label1" runat="server" Text="Login ID" CssClass="logText"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="nameBox" runat="server" CssClass="logBoxes" 
                            Font-Size="22px" Height="40px" Width="250px" placeholder="Enter your ID"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="logText"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="passBox" runat="server" CssClass="logBoxes" 
                            EnableViewState="False" Font-Size="22px" Height="40px" Width="250px" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                    </td>
                </tr>               
                
                
            </table>
            <table style="width:100%;" cellpadding="5px">
                <tr>
                    <td align="right">
                        
                        <asp:CheckBox ID="remCBox" runat="server" CssClass="logText" 
                            Font-Size="Small" Text="Remember Me" TextAlign="Left" />
                        
                    </td>                        
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="logBtn" runat="server" Height="37px" onclick="logBtn_Click" 
                            Text="Login" Width="76px" CssClass="logText" />
                        &nbsp;&nbsp;
                        <asp:Label ID="warnlbl" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>                
            </table>           
        </asp:Panel>
    </div>    
</asp:Content>

