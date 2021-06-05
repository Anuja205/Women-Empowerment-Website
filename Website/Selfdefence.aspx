<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Selfdefence.aspx.cs" Inherits="Defence" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-image:linear-gradient(to right,#a17fe0,#FFFDE4)">
     <asp:Label ID="Label1" runat="server" Text="Choose Language" Height="25px" style="font-family:Times New Roman; font-size:xx-large; font-weight:500; margin-left:250px;"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
         Height="32px" 
         style="font-family:Times New Roman; font-size:larger; font-weight:300">
        <asp:ListItem>English</asp:ListItem>
        <asp:ListItem>Hindi</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" Text="Choose Techniques" Height="25px" 
         style="font-family:Times New Roman; font-size:xx-large; font-weight:500; margin-left:250px;"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server"  AutoPostBack="True" 
         Height="32px" 
         style="font-family:Times New Roman; font-size:larger; font-weight:300">
        <asp:ListItem>Krav Maga</asp:ListItem>
        <asp:ListItem>Karate</asp:ListItem>
        <asp:ListItem>Jiu-Jitsu</asp:ListItem>
        <asp:ListItem>Taekwondo</asp:ListItem>
    </asp:DropDownList>


    <asp:PlaceHolder ID="PlaceHolder1" runat="server" >
    
    </asp:PlaceHolder>
    <br /><br /><br /><br /><br /><br /><br><br /><br />
    </div>
</asp:Content>


