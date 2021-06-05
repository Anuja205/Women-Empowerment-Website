<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Emergencyno.aspx.cs" Inherits="Emergencyno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-image: url('Images/PBX.jpg'); background-size: cover; height:600px; text-align:center;">
<br /><br /><br /><br /><br /><br />
 
<fieldset style=" border-radius:30px; background-color:White; margin-left:500px; padding:30px; margin-right:400px">
<table style="margin-left:75px">
<tr>
<td>


<asp:Label ID="Label3" runat="server" Text="Emergency Helpline Number:" 
        style=" text-align:center; font-family:Times New Roman; font-weight:bolder; font-size:xx-large; color: Black;"></asp:Label>
        <br /><br /><br /><br /> 
</td>
</tr>

<tr>
<td>
<asp:Label ID="Label1" runat="server" Text="Police No: 0250-2322188 OR 100 " style=" text-align:center; font-family:Times New Roman; font-weight:700; font-size:x-large; color:Black;"></asp:Label>
    <br /><br />
<asp:Label ID="Label2" runat="server" Text="Women Safety: 103"  style=" text-align:center; font-family:Times New Roman; font-weight:700; font-size:x-large; color:Black;"></asp:Label>
    <br /><br />
<asp:Label ID="Label4" runat="server" Text="Women Helpline(Domestic Abuse): 181" style=" text-align:center; font-family:Times New Roman; font-weight:700; font-size:x-large; color:Black;"></asp:Label>
    <br /><br /><br />
</td>
</tr>

</table>

</fieldset>
</div>
</asp:Content>

