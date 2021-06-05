<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Business.aspx.cs" Inherits="buissness" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
<fieldset style="margin-left:200px;border-style:outset;border-radius:20px;margin-right:200px;padding:100px;margin-top:20px;">
<legend class="style1"><strong style="font-size: xx-large">Business </strong></legend>
    <strong><span class="style1">Name :</span></strong><asp:TextBox ID="TextBox1" runat="server" placeholder="FIRST NAME" style="margin-left:90px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="First name required" ForeColor="Red" 
        SetFocusOnError="True"   >*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Only letters allowed." 
        ForeColor="Blue"    ValidationExpression="[a-zA-Z ]*$">*</asp:RegularExpressionValidator>
    &nbsp;&nbsp;&nbsp;&nbsp <asp:TextBox ID="TextBox4" runat="server" placeholder="LAST NAME"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Last name required." 
        ForeColor="Red"   >*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Only letters allowed." 
        ForeColor="Blue"    ValidationExpression="[a-zA-Z ]*$">*</asp:RegularExpressionValidator>
    <br /><br />
    <strong><span class="style1">Contact No. :</span></strong> <asp:TextBox ID="TextBox2" runat="server" MaxLength="10" style="margin-left:30px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Contact is necessary" 
        ForeColor="Red" SetFocusOnError="True"   >*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ErrorMessage="Only 10 digit" ForeColor="Blue" 
        ValidationExpression="[0-9]{10}" ControlToValidate="TextBox2" 
          >*</asp:RegularExpressionValidator>
    <br /><br />
    <strong><span class="style1">Email id : </span></strong> <asp:TextBox ID="TextBox3" runat="server" style="margin-left:60px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="Email is required" ControlToValidate="TextBox3" 
        ForeColor="Red"   >*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ErrorMessage="Email format incorrect" ControlToValidate="TextBox3" 
        ForeColor="Blue" SetFocusOnError="True" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
          >*</asp:RegularExpressionValidator>
    <br /><br />
    <strong><span class="style1">Business description :</span></strong> <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ErrorMessage="Buissness decription is required" 
        ControlToValidate="TextBox5" ForeColor="Red" SetFocusOnError="True" 
          >*</asp:RequiredFieldValidator>
    <br /><br />
    <strong><span class="style1">Logo :</span></strong><asp:FileUpload ID="FileUpload1" runat="server" style="margin-left:100px" /><br /><br />
    <strong><span class="style1">Do you provide JOB :&nbsp;</span></strong> <asp:DropDownList ID="DropDownList1" runat="server" 
        AutoPostBack="True">
        <asp:ListItem>YES</asp:ListItem>
        <asp:ListItem>NO</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
<asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
        Height="41px" Width="71px" />
    <br />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <br />
    <br />
</fieldset>
</div>
</asp:Content>

