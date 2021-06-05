<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .style2
        {
            font-size: x-large;
            font-weight: 700;
            padding-top: 20px;
        }
        #Reset1
        {
            width: 99px;
            height: 55px;
        }
           
        .button4
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
    <div>
<div style="text-align:center; background-image: url('Images/admin.png'); background-size: cover; height:600px;text-align:center;" 
        class="style1">

    <asp:Label ID="Label3" runat="server" 
        style="font-size: x-large; font-weight: 700" Text="Admin Login" CssClass="style2"
        ForeColor="Black"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" 
        style="font-size: x-large; font-weight: 700" Text="Email id:" 
        ForeColor="Black"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Email id required" 
        ForeColor="#FF3300" style="font-size: x-large"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" 
        style="font-size: x-large; font-weight: 700" Text="Password:" 
        ForeColor="Black"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" 
        TextMode="Password"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Password required" 
        ForeColor="#FF3300" style="font-size: x-large"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="55px" Text="Submit" 
        onclick="Button1_Click" style="margin-left: 0px" Width="95px" 
        CssClass="button4" ForeColor="Black"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input id="Reset1" type="reset" value="Reset" class="button4" style="color:Black" />
</div></div>
</asp:Content>

