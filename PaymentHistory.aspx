<%@ Page Title="Payment History" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master" AutoEventWireup="true" CodeFile="PaymentHistory.aspx.cs" Inherits="PaymentHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/PayHisStyle.css" rel="stylesheet" type="text/css" />    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <h1>Payment History</h1>
    <asp:GridView ID="grid" runat="server" DataSourceID="SDS1" 
        AutoGenerateColumns="False" DataKeyNames="payment_id" AllowPaging="True" 
        AllowSorting="True" CellPadding="10" CellSpacing="3" CssClass="grid" 
        EmptyDataText="Sorry! No Payment History Found." onload="grid_Load">
        <Columns>
            <asp:BoundField DataField="payment_id" HeaderText="Payment ID" 
                InsertVisible="False" ReadOnly="True" SortExpression="payment_id" />
            <asp:BoundField DataField="payment_date" HeaderText="Date of Payment" dataformatstring="{0:MM/dd/yyyy}"
                SortExpression="payment_date" />
            <asp:BoundField DataField="amount" HeaderText="Amount (Rs.)" 
                SortExpression="amount" />
        </Columns>        
        <EmptyDataRowStyle Font-Bold="True" ForeColor="#CC0000" />
        <HeaderStyle BackColor="#7EB31A" CssClass="gridHeader" ForeColor="White" />
        <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle BorderStyle="None" CssClass="gridPager" HorizontalAlign="Center" />
        <RowStyle BackColor="#D3FF7A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SDS1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>" SelectCommand="" 
        >
</asp:SqlDataSource>
    </asp:Content>

