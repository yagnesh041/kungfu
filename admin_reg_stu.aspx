<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_reg_stu.aspx.cs" Inherits="admin_reg_stu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
    <br/>
    <div style="margin-left:13%">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="stu_num" Width="666px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
                            BorderWidth="1px" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="stu_num" HeaderText="stu_num" InsertVisible="False" ReadOnly="True" SortExpression="stu_num" />
            <asp:BoundField DataField="stu_fname" HeaderText="stu_fname" SortExpression="stu_fname" />
            <asp:BoundField DataField="stu_lname" HeaderText="stu_lname" SortExpression="stu_lname" />
            <asp:BoundField DataField="stu_initial" HeaderText="stu_initial" SortExpression="stu_initial" />
            <asp:BoundField DataField="stu_dob" HeaderText="stu_dob" SortExpression="stu_dob" />
            <asp:BoundField DataField="stu_join_date" HeaderText="stu_join_date" SortExpression="stu_join_date" />
            <asp:BoundField DataField="stu_instructor" HeaderText="stu_instructor" SortExpression="stu_instructor" />
            <asp:BoundField DataField="stu_email" HeaderText="stu_email" SortExpression="stu_email" />
            <asp:BoundField DataField="stu_mobile" HeaderText="stu_mobile" SortExpression="stu_mobile" />
            <asp:BoundField DataField="stu_address" HeaderText="stu_address" SortExpression="stu_address" />
            <asp:BoundField DataField="stu_status" HeaderText="stu_status" SortExpression="stu_status" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("stu_num") %>' Text="Delete" CssClass="btn-flat" OnClick="Button1_Click1" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [stu_num], [stu_fname], [stu_lname], [stu_initial], [stu_dob], [stu_join_date], [stu_instructor], [stu_email], [stu_mobile], [stu_address], [stu_status] FROM [student]"></asp:SqlDataSource>
</div>
</asp:Content>

