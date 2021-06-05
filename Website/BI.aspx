<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BI.aspx.cs" Inherits="BI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form">
        <div class="form2">
        <asp:Label ID="Label1" runat="server" Text="Business Information" 
                style="    display: block; font-size:x-large; font-weight: bold; text-align: center; padding: 20px;"></asp:Label>
         <br />  
    
    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
    <table style="border: 1px solid black; width: 100%; margin: 10px">
    <tr style="border: 1px solid black;">
    <td style="text-align: center; padding: 10px; border: 1px solid black;">
    Image : 
    </td>
      <td style="text-align: center; padding: 10px; border: 1px solid black;">
    Name : 
    </td>
      <td style="text-align: center; padding: 10px; border: 1px solid black;">
    Contact : 
    </td>
      <td style="text-align: center; padding: 10px; border: 1px solid black;">
    Email ID : 
    </td>
      <td style="text-align: center; padding: 10px; border: 1px solid black;">
    Description : 
    </td>
    <td style="text-align: center; padding: 10px; border: 1px solid black;">
    Jobs :
    </td>
    </tr>
    <tr style="border: 1px solid black;">
    <td>
        <asp:Image ID="Image1" runat="server" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("Logo")) %>' Height="200px" Width="200px" />
    </td>
                                <td style="text-align: center; padding: 10px; border: 1px solid black;">

                                    <%#Eval("Name") %>
                                </td>
                                <td style="text-align: center; padding: 10px; border: 1px solid black;">
                                    <%#Eval("Contact") %></td>
           
                                <td style="text-align: center; padding: 10px; border: 1px solid black;">
                                    <%#Eval("Email-id") %>
                                </td>
                                <td style="text-align: center; padding: 10px; border: 1px solid black;">
                                    <%#Eval("Description") %>
                                </td>
  
                                <td style="text-align: center; padding: 10px; border: 1px solid black;">
                                    <%#Eval("JOBS") %>
                                </td>
                            </tr>
        </table>
        </ItemTemplate>
        </asp:DataList>
      </div>
   
   </div>
       


</asp:Content>

