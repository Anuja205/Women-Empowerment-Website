<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactep.aspx.cs" Inherits="Contactep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="height: 600px;text-align:center;background-image: url('Images/contact%20us.jpg');background-size: cover;">

 <asp:Label ID="Label3" runat="server" Text="Contact Us:" 
            style=" text-align:center; font-family:Times New Roman; font-weight:bolder; font-size:xx-large; color: #FFFFFF;"></asp:Label>


<br /><br /><br /><br />

<asp:Label ID="Label1" runat="server" Text="Helpline No: 9757015538"

            style=" text-align:center; font-family:Times New Roman; font-weight:bolder; font-size:x-large; color:White;"></asp:Label>
    <br /><br /><br />
    <asp:Label ID="Label2" runat="server" 
            Text="Mail us at : empower20182019@gmail.com " 
            style=" text-align:center; font-family:Times New Roman; font-weight:bolder; font-size:x-large; color:White;"></asp:Label>
    <br /><br /><br />

    <asp:Label ID="Label5" runat="server" 
             Text="Contact us on our Facebook page : empowerment20182019"
              style=" text-align:center; font-family:Times New Roman; font-weight:bolder; font-size:x-large; color:White;"></asp:Label>
    <br />
    <br />
    <br />

    <br /><br />
    <asp:ImageButton ID="ImageButton1" runat="server" Height="64px" Width="94px" style="border-radius:10px" ImageUrl="~/Images/g.png"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/fb.png" OnClick="fbgoto" Width="94px" Height="64px" style="border-radius:10px" />

</div>
            
  </asp:Content>
