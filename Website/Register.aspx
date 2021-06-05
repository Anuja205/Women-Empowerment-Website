<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
              
        .label
        {
            color:black;
            font-family:Times New Roman;
            font-size:x-large;
            
        }
        .txtbx
         {
            height:20px;
               
         }
        #Reset1
        {
            width: 65px;
            height: 33px;
            margin-left: 11px;
            margin-right: 0px;
            margin-top: 0px;
            margin-bottom: 8px;
        }
        
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            text-align: center;
            height: 77px;
        }
        .style3
        {
            height: 61px;
            width: 224px;
        }
        .style4
        {
            height: 62px;
            width: 224px;
        }
        
    #Reset2
    {
        height: 48px;
        width: 161px;
        margin-left: 0px;
    }
    .style5
    {
            width: 224px;
        }
        
        .button2
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
    <div style="padding-left:200px;padding-top:10px;"> 
    <div style="background-image: url('Images/2.jpg'); width:1060px; height:557px; margin-top:50px;"class="style1">
       
        <div class="style2">
            <strong style="text-align:center"><span class="style1">Registration Page</span></strong><strong><br 
                class="style1" /></strong><br /><br /><br />
        
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label" style="margin-left:450px"></asp:Label>
        
        <table style="margin-left:360px;">
        
        <tr>
        <td class="style3"><label class="label"><strong>First Name:</strong></label></td>
        <td><asp:TextBox class="txtbx" ID="TextBox1" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" Display="Dynamic" 
            ErrorMessage="First Name is required." ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="TextBox1" Display="Dynamic" 
            ErrorMessage="Only letters are allowed." ForeColor="#000066" 
            ValidationExpression="[a-zA-Z ]*$" >*</asp:RegularExpressionValidator><br /></td>
        </tr>
        
        <tr>
        <td class="style3"><label class="label"><strong>Last Name:</strong></label></td>
        <td><asp:TextBox ID="TextBox2" class="txtbx" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" Display="Dynamic" 
            ErrorMessage="Last Name is required." ForeColor="Red" >*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="TextBox2" Display="Dynamic" 
            ErrorMessage="Only letters are allowed." ValidationExpression="[a-zA-Z ]*$" 
                ForeColor="#000066" >*</asp:RegularExpressionValidator><br /></td>
        </tr>

        <tr>
        <td class="style4"><label class="label"><strong>Email-id:</strong> </label></td>
        <td><asp:TextBox class="txtbx" ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox3" Display="Dynamic" 
            ErrorMessage="Email-ID format is incorrect" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" >*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" Display="Dynamic" 
            ErrorMessage="Email-ID is required." ForeColor="#000066">*</asp:RequiredFieldValidator><br /></td>
        </tr>
        
        <tr>
        <td class="style3"><label class="label"><strong>Contact:</strong></label></td>
        <td><asp:TextBox class="txtbx" ID="TextBox4" runat="server" ></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
            runat="server" ControlToValidate="TextBox4" Display="Dynamic" 
            ErrorMessage="Contact Number must be of 10 digit." ForeColor="Red" 
            ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" Display="Dynamic" 
            ErrorMessage="Contact is Needed." ForeColor="#000066">*</asp:RequiredFieldValidator>
            <br /></td>
        </tr>

        <tr>
        <td class="style3"><label class="label"><strong> Password: </strong></label></td>
        <td><asp:TextBox class="txtbx" ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
            runat="server" ControlToValidate="TextBox5" Display="Dynamic" 
            ErrorMessage="Password must be 4-8 char long with atleast 1 digit." 
            ForeColor="Red" ValidationExpression="^(?=.*\d).{4,8}$" 
                >*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox5" Display="Dynamic" 
            ErrorMessage="Password is required" ForeColor="#000066">*</asp:RequiredFieldValidator>
            <br /></td>
        </tr>

        <tr>
        <td class="style4"><label class="label"><strong>Confirm Password: </strong></label></td>
        <td><asp:TextBox class="txtbx" ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Re-enter password" 
            ForeColor="Red" >*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox5" ControlToValidate="TextBox6" Display="Dynamic" 
            ErrorMessage="Password must match." ForeColor="#000066" >*</asp:CompareValidator><br /></td>
        </tr>
        
       <tr>
       <td class="style5">
           <asp:Button ID="Button2" runat="server" Height="46px" style="margin-top: 0px; color:Black" 
               CssClass="button2" Text="Submit" Width="198px" onclick="Button1_Click" />
          </td>
          
          <td>  
        <input id="Reset2" type="reset" value="Reset" class="button2" style="color:Black; text-align:center" /></td>
       </tr>
        
        <tr>
        <td class="style5">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                BackColor="Cornsilk" ForeColor="DarkRed"/>
        </td>
        </tr>

        </table>
    </div>
        </div>
</asp:Content>

