<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    #Reset1
    {
        height: 42px;
        width: 148px;
    }
        .style3
        {
            color: #FFFFFF;
            font-size:x-large;
            font-family:Times New Roman;
            
        }
        
        .button1
        {
            border-style: groove;
            border-color: inherit;
            border-width: medium;
            border-radius:10px;
            font-size:x-large;
            color:White;
            font-family:Times New Roman;
            
        }
        
        
        .style4
        {
            width: 50%;
            text-align: center;
            margin-left: 160px;
         
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div style="background-image: url('Images/log.jpeg');  background-size: cover; width: 100%; height:600px"><span class="style3"><strong></strong></span><br />
        <asp:Label ID="Label3" runat="server" Text="Login Page" style="font-family:Times New Roman; color: Black; font-size:xx-large; margin-left:700px; font-weight: 700; text-align:center"></asp:Label>
        <br />
        <br /><br />
        <table style="margin: auto">
        <tr>
        <td class="style4"> 
     
            <asp:Label ID="Label1" runat="server" Text="Email id:" ForeColor="black" 
                
                style="font-weight:700; margin-left: 200px; font-sizel: x-large; font-size: x-large;" ></asp:Label>  &nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="Static" ErrorMessage="Email id required" 
        ForeColor="Red" style="font-size: large; text-align: center;"></asp:RequiredFieldValidator>
    
        <br /><br />
        </td>
        </tr>

        <tr>
        <td class="style4">
           
            <asp:Label ID="Label2" runat="server" Text="Password:"  ForeColor="Black" 
                style="font-weight:700; margin-left: 200px; font-size: x-large;"></asp:Label> &nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" Display="Static" ErrorMessage="Password required" 
            ForeColor="Red" style="font-size: large"></asp:RequiredFieldValidator>
            <br /><br />
        </td>
        </tr>
        
       <tr>
       <td class="style4">
       <br /><br />
       </td>
       </tr>

        <tr>
        <td class="style4">

         <asp:Button ID="Button1" runat="server" Height="38px" style="margin-left:80px; font-weight: 700;"
        Text="Submit" onclick="Button1_Click" CssClass="button1" Width="148px" 
                ForeColor="Black"  />
         &nbsp;&nbsp;&nbsp;&nbsp;

    <input id="Reset1" type="reset" value="Reset" class="button1" 
                style="color:Black; font-weight: 700;"/>
    <br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            style="font-family:Times New Roman; font-size:x-large; font-weight:bolder;margin-left: 100px;" 
            NavigateUrl="~/ForgetPassword.aspx">Forgot Password?</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server"  
                style="font-family:Times New Roman; font-size:x-large;margin-left: 100px; font-weight:bolder;" 
                NavigateUrl="~/Changepassword.aspx" >Change Password?</asp:HyperLink>
        </td>
        </tr>
        </table>
        
        
    </div></div>
</asp:Content>

 