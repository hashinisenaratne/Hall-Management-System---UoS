<%@ Page Title="Accommodation History" Language="C#" MasterPageFile="~/master pages/MasterPage_no_sidebar.master" AutoEventWireup="true" CodeFile="AccommodationHistory.aspx.cs" Inherits="AccommodationHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/PayHisStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <h1>Accommodation History</h1>
    <asp:GridView ID="grid2" runat="server" DataSourceID="SDS2"
        AutoGenerateColumns="False" DataKeyNames="room_number,assign_date" AllowPaging="True" 
        AllowSorting="True" CellPadding="10" CellSpacing="3" CssClass="grid" 
        EmptyDataText="Sorry! No Accommodation History Found." onload="grid2_Load">
        <Columns>
            <asp:BoundField DataField="hall_name" HeaderText="Hall Name" 
                InsertVisible="False" ReadOnly="True" SortExpression="hall_name" />
            <asp:BoundField DataField="room_number" HeaderText="Room Number" 
                InsertVisible="False" ReadOnly="True" SortExpression="room_number" />
            <asp:BoundField DataField="assign_date" HeaderText="Date of Assignment" dataformatstring="{0:MM/dd/yyyy}"
                SortExpression="assign_date" />
            <asp:BoundField DataField="left_date" HeaderText="Date of Leave" dataformatstring="{0:MM/dd/yyyy}"
                SortExpression="left_date" />
        </Columns>        
        <EmptyDataRowStyle Font-Bold="True" ForeColor="#CC0000" />
        <HeaderStyle BackColor="#7EB31A" CssClass="gridHeader" ForeColor="White" />
        <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle BorderStyle="None" CssClass="gridPager" HorizontalAlign="Center" />
        <RowStyle BackColor="#D3FF7A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SDS2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hmsusConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:hmsusConnectionString.ProviderName %>" 
        SelectCommand=""></asp:SqlDataSource>
</asp:Content>

