<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminAccess.aspx.cs" Inherits="AdminAccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-image:linear-gradient(to left,#43C6AC,#F8FFAE)">
<div id="ad" style="padding:120px; height: 746px;">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
            ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="content" HeaderText="content" 
            SortExpression="content" />
    </Columns>
</asp:GridView>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=.\sqlexpress;Initial Catalog=blogs;Integrated Security=True" 
        DeleteCommand="DELETE FROM [bl2] WHERE [id] = @id" 
        SelectCommand="Select * From [bl2]"
        ProviderName="System.Data.SqlClient">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
       
    </asp:SqlDataSource>
    <br />
    </div>

    </div>
</asp:Content>


