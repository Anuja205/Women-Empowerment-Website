<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    *
    {
        margin:0px;
        padding:0px;
     }
      .button5
        {
            border-style: groove;
            border-color:inherit;
            border-width: medium;
            background:none ;
            border-radius:10px;
            font-size:x-large;
            color:White;
            font-weight:900;
            font-family:Times New Roman;
            }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="text-align:center; background-image: url('Images/maxresdefault.jpg'); background-size: cover; height:600px;text-align:center;">
<br /><br /><br style="background-image: none" />
    <asp:Label ID="Label1" runat="server" Text="Forgot Password?" style=" font-family:Times New Roman; font-size:xx-large; font-weight:bolder; text-align:center; color:White"></asp:Label>
     
    <br />

    <br /><br /><br /><br />
    <asp:Label ID="Label2" runat="server" 
        style=" font-family:Times New Roman; font-size:x-large; font-weight:700; text-align:center; color:White;" 
        Text="Email-ID:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" 
        style=" font-family:Times New Roman; font-size:larger;text-align:center; "></asp:TextBox>

    <br /><br /><br /><br />
    <asp:Button ID="Button1" runat="server" Text="Submit" 
        style="text-align:center; margin-left: 0px; margin-top: 0px;" Height="57px" 
        Width="97px" onclick="Button1_Click" CssClass="button5" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <input id="Reset1" type="reset" value="Reset" class="button5";
        
        
        style="text-align:center; width: 97px; height: 57px; margin-right: 0px; margin-top: 0px;" /></div>

</asp:Content>

