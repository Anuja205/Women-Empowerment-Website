<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Jobs.aspx.cs" Inherits="Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="background-image:  url('Images/job_opps.jpg'); background-size: cover; height:600px; text-align:center; ">
    <asp:Label ID="Label1" runat="server" Text="Educational Qualification : " style="font-family:Times New Roman; font-size:xx-large; font-weight:500"></asp:Label>
 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" style="font-family:Times New Roman; font-size:larger; font-weight:300">
     <asp:ListItem>10th</asp:ListItem>
     <asp:ListItem>12th</asp:ListItem>
     <asp:ListItem>Graduation</asp:ListItem>
     <asp:ListItem>Post Graduation</asp:ListItem>
    </asp:DropDownList>
    <br /><br /><br /><br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</div>
   
</asp:Content>
