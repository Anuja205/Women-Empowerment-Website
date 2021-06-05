<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="omni">
        <div class="audi">
            <form id="form1">
                <p class="style1"><strong>Feedback Form</strong></p>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Full Name *" CssClass="textbox"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid Name !" ControlToValidate="TextBox1" CssClass="validator" ValidationExpression="[a-zA-Z ]{3,}$"></asp:RegularExpressionValidator>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Email *" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" CssClass="textbox">To : empower20182019@gmail.com</asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Feedback *" TextMode="MultiLine" Rows="6" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="validator" 
                    style="font-size: x-large"></asp:Label>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Send Email" CssClass="button" 
                    onclick="Button1_Click" />
                <br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" 
                    style="font-weight: 700; font-size: x-large"></asp:Label>
            </form>
        </div>
    </div>
</asp:Content>
