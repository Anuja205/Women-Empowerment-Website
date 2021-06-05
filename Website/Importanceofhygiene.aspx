<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Importanceofhygiene.aspx.cs" Inherits="Importanceofhygiene" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="background-image:linear-gradient(to left,#928DAB,#2BC0E4);">
   <%-- <video controls style="height:350px; width:500px; margin-left:50px;">
    <source src="1.webm" type="video/webm" />
    </video>

    <video controls style="height:350px; width:500px; margin-left:50px;">
    <source src="2.webm" type="video/webm" /> 
    </video>
    <video controls style="height:350px; width:500px; margin-left:50px;">
    <source src="3.webm" type="video/webm" />
    </video>
    <video controls style="height:350px; width:500px; margin-left:50px;">
    <source src="4.webm" type="video/webm" />
    </video>
    <video controls style="height:350px; width:500px; margin-left:50px;">
    <source src="5.webm" type="video/webm" />
    </video>--%>
         <asp:Label ID="Label1" runat="server" Text="Choose Language" style="font-family:Times New Roman; font-size:xx-large; font-weight:500"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" style="font-family:Times New Roman; font-size:larger; font-weight:300">
        <asp:ListItem>Hindi</asp:ListItem>
        <asp:ListItem>English</asp:ListItem>
        <asp:ListItem>Marathi</asp:ListItem>
    </asp:DropDownList><br /><br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
    
    </asp:PlaceHolder>
    
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    </div>

</asp:Content>

