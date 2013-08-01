<%@ Page Title="Add Payment" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master" AutoEventWireup="true" CodeFile="Add-Payment.aspx.cs" Inherits="AddPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 161px;
        }
        .style2
        {
            width: 146px;
        }      
        .panel2
        {
            margin: 10px;  
        } 
        .panel3
        {
            float: right;
            margin-top: 20px; 
            width: 300px; 
            text-align: left;
        } 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <asp:Panel ID="Panel3" runat="server" class="panel3" >
        <asp:Image ID="Image1" runat="server" Height="250px" 
            ImageUrl="~/images/cash.png" Width="250px" />
       
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Width="600px">
        <h1>Add Payment</h1>
        <table style="width:100%;" cellpadding="10px">            
            <tr>
                <td>                    
                </td>
                <td class="style1">
                    Payment ID</td>
                <td class="style2">
                    <asp:TextBox ID="pidBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="wrnLbl1" runat="server" Font-Size="Small" ForeColor="#CC0000" 
                        Text="ID already exists"></asp:Label>
                    <asp:Button ID="genBtn" runat="server" Text="Generate ID" 
                        onclick="genBtn_Click" />
                </td>
            </tr>
            <tr>
                <td>                    
                </td>
                <td class="style1">
                    Student Number</td>
                <td class="style2">
                    <asp:TextBox ID="stnBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="wrnLbl2" runat="server" Font-Size="Small" ForeColor="#CC0000">Invalid Student Number</asp:Label>
                </td>
            </tr>
            <tr>
                <td>                    
                </td>
                <td class="style1">
                    Amount (Rs.)</td>
                <td class="style2">
                    <asp:TextBox ID="amountBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="wrnLbl3" runat="server" Font-Size="Small" ForeColor="#CC0000" 
                        Text="Invalid amount"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>                    
                </td>
                <td class="style1">
                    Date</td>
                <td class="style2">
                    <asp:TextBox ID="dateBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="wrnLbl4" runat="server" Font-Size="Small" ForeColor="#CC0000" 
                        Text="Invalid date"></asp:Label>
                    <asp:Button ID="dateButton" runat="server" Text="Today" onclick="dateButton_Click" 
                        />
                </td>
            </tr>
            <tr>  
                <td>                    
                </td>          
                <td>
                
                    <asp:Button ID="submitBtn" runat="server" onclick="submitBtn_Click" 
                        Text="Submit" Height="50px" Width="100px" />
                
                </td>                
            </tr>            
        </table>        
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" class="panel2">
        <asp:Label ID="successLbl" runat="server" 
            Text="Payment added successfully with the ID : " Font-Bold="True" 
            Font-Size="Large" ForeColor="#003300"></asp:Label>  <br />
                  
        <asp:Button ID="okBtn" runat="server" Text="OK" onclick="okBtn_Click" />
    </asp:Panel>
</asp:Content>

