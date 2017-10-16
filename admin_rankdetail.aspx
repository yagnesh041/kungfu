<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_rankdetail.aspx.cs" Inherits="admin_rankdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
    <br/>
    <div style="margin-left:13%">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="r_Id" Width="666px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
                            BorderWidth="1px" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="r_Id" HeaderText="r_Id" ReadOnly="True" SortExpression="r_Id" />
            <asp:BoundField DataField="r_num" HeaderText="r_num" SortExpression="r_num" />
            <asp:BoundField DataField="rank_b_color" HeaderText="rank_b_color" SortExpression="rank_b_color" />
            <asp:BoundField DataField="stu_fname" HeaderText="stu_fname" SortExpression="stu_fname" />
            <asp:BoundField DataField="stu_status" HeaderText="stu_status" SortExpression="stu_status" />
        
        <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("r_Id") %>' Text="Delete" CssClass="btn-flat" OnClick="Button1_Click1" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT * FROM [rank_d]"></asp:SqlDataSource>

</div>
</asp:Content>

