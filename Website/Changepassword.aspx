<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .lab
    {
        font-family:Times New Roman; 
        font-size:x-large; 
        font-weight:700;
        font-style:italic;
        
        }
        
        .button3
        {
            border-style: groove;
            border-color: inherit;
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

<div style="background-image: url('Images/hexagonal.jpg'); height: 885px; width: 1502px; margin-right: 0px;">
<br /><br />
 <fieldset style="margin-left:200px;border-style:outset;border-radius:20px;margin-right:200px;padding:110px;margin-top:20px;">
 <legend style="font-size:xx-large; text-align:center; font-weight: 700;">Change your 
     password</legend>
<table >
 <%--<asp:Label ID="Label5" runat="server" Text="Change Password" style="font-family:Times New Roman; font-size:xx-large; font-weight:800;  font-style:italic" 
        ForeColor="Black"></asp:Label>
 <tr>
 <td><br /><br /></td></tr>--%>

   
    
   
    <tr>
    <td><asp:Label ID="Label1" runat="server" Text="Email id" CssClass="lab" 
            ForeColor="Black"></asp:Label></td>
    <td><asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="155px"></asp:TextBox><br /><br /></td>
    </tr>
        <tr><td><br /><br /><br /></td></tr>
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="Current Password" CssClass="lab" 
                ForeColor="Black"></asp:Label></td>
        <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="28px" Width="155px"></asp:TextBox> <br /><br /></td>
       
         
        </tr>
        <tr><td><br /><br /><br /></td></tr>
        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="New Password" CssClass="lab" 
                ForeColor="Black"></asp:Label></td>
        <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Height="28px" Width="155px"></asp:TextBox> <br /><br /></td>
      
        </tr>
        <tr><td><br /><br /><br /></td></tr>
        <tr>
        <td><asp:Label ID="Label4" runat="server" Text="Confirm Password" CssClass="lab" 
                ForeColor="Black"></asp:Label></td>
        <td><asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Height="28px" Width="155px"></asp:TextBox> <br /><br /></td>
       
         
        </tr>
        
        <tr>
        <td>
        <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                style="margin-left:200px; margin-top: 0px;" Height="44px" Width="93px" 
                CssClass="button3" ForeColor="Black"  />
        </td>
        </tr>
        </table>

        </fieldset>
</div>

</asp:Content>

