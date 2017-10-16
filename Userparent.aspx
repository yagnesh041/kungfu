<%@ Page Title="" Language="C#" MasterPageFile="~/User_MasterPage.master" AutoEventWireup="true" CodeFile="Userparent.aspx.cs" Inherits="Userparent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <br/>
        <asp:Label ID="Label3" runat="server" Text="Parents details" class="auto-style2" style="margin-left:40%;font-size:medium"></asp:Label>
<br/>
       <table style="margin-left:30%" >
         <br/>
          <tr class="auto-style2"  >
      <td class="auto-style2">Parents email_id</td>
               <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter valid Email_id</asp:RegularExpressionValidator>
            </td>    
          </tr>
           <tr>
            <td class="auto-style2">Parents Mobile no.</td>
             
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="10"></asp:TextBox>
            </td>
        </tr>
          
           
          
           <tr>
              <td> 
                  
                  <asp:Button ID="Button1" runat="server" Text="Save" class="btn-flat" OnClick="btnSave_Click" /></td>
               <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
               </tr>
           
           </table>
    
        
    
    </div>
</asp:Content>

