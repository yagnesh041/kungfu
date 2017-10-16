<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_parents.aspx.cs" Inherits="admin_parents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br/>
    <br/>
    <div style="margin-left:13%">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="parents_Id" Width="666px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
                            BorderWidth="1px" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="parents_Id" HeaderText="parents_Id" ReadOnly="True" SortExpression="parents_Id" />
            <asp:BoundField DataField="parent_email" HeaderText="parent_email" SortExpression="parent_email" />
            <asp:BoundField DataField="parents_mobile" HeaderText="parents_mobile" SortExpression="parents_mobile" />
            <asp:BoundField DataField="stu_fname" HeaderText="stu_fname" SortExpression="stu_fname" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("parents_id") %>' Text="Delete" CssClass="btn-flat" OnClick="Button1_Click1" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        

        
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT * FROM [parents_detail]"></asp:SqlDataSource>
</div>
</asp:Content>

