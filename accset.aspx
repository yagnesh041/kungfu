<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="accset.aspx.cs" Inherits="accset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            text-align: center;
        }
        .auto-style2
        {
            width: 355px;
        }
        .auto-style3
        {
            color: #000000;
            font-size: small;
            font-weight: bold;
            text-align: center;
        }
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 148px;
            color: #000000;
            font-size: small;
            font-weight: bold;
            text-align: center;
            height: 72px;
        }
        .style3
        {
            height: 72px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p class="text-left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" style="font-size: medium; font-weight: 700; color: #66FF66; text-align: center;" Text="Admin Detail "></asp:Label>
        &nbsp;</p>
    <table align="left" class="table-products">
    <tr>
            <td class="style2">
                &nbsp;Email_id</td>
            <td class="style3">
                
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    <tr>
            <td class="auto-style3">
                Enter<br />
&nbsp;new email_id</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
    <tr>
            <td class="auto-style3" colspan="2">
                <asp:Button ID="Button2" runat="server" class="btn-flat" Text="Update Email_id" OnClick="Button2_Click" />
            &nbsp;<asp:Label ID="Label3" runat="server" Text="update email id" Visible="False"></asp:Label>
            </td>
        </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <table align="left" class="table-products">
        <tr><td class="auto-style3">&nbsp;User name </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;</td>
        </tr>
        
        
        <tr>
            <td class="auto-style3">&nbsp;Old<br />
                password</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">New<br />
                password</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Button ID="Button1" runat="server" class="btn-flat" Text="Update Password" OnClick="Button1_Click"  />
            &nbsp;<asp:Label ID="Label2" runat="server" Text="UPDATE SUCESSFULLY" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="style1">
        
    </table>
</asp:Content>

