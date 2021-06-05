<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Blogs.aspx.cs" Inherits="Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    
    .lab
    {
        font-family:Times New Roman;
        font-size:x-large;
        font-weight:700;
        margin-left:250px;
    }
    
    .txtbx
    {
        font-family:Times New Roman;
        font-size:larger;
        font-weight:200;
        margin-left:60px;
        
    }
    
    .button
    {
        margin-left:350px;
        border-style:groove;
        border-radius:20px;
    }
        

    .style1
    {
        font-family: Times New Roman;
        font-size: x-large;
        margin-left: 250px;
    }
        

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>

    <fieldset style="margin-left:200px;border-style:outset;margin-right:200px;padding:30px;margin-top: 20px;">
        
        <asp:Image ID="Image1" runat="server" Height="199px" Width="1032px" 
            ImageUrl="~/Images/ideas.jpg" />

        <br /><br /><br /><br />
        <asp:Label ID="Label3" runat="server" Text="Enter your Email id :" CssClass="lab"></asp:Label>

        <asp:TextBox ID="TextBox3" runat="server" CssClass="txtbx"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please enter email !" ControlToValidate="TextBox3" 
            ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
        <br /><br />
        <strong>

        <asp:Label ID="Label4" runat="server" Text="Post your ideas :" 
            CssClass="style1"></asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="txtbx" 
            Height="98px" Width="251px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Please enter idea" ControlToValidate="TextBox4" ForeColor="Red" 
            style="font-weight: 700"></asp:RequiredFieldValidator>
        <br /><br /><br />
        <asp:Button ID="Button2" runat="server" Text="Post" Height="40px" Width="106px" CssClass="button" onclick="Button2_Click" />
    </fieldset>

</div>
</asp:Content>


