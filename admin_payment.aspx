<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_payment.aspx.cs" Inherits="admin_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
    <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pay_Id" DataSourceID="SqlDataSource1" Width="666px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
                            BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="pay_Id" HeaderText="pay_Id" ReadOnly="True" SortExpression="pay_Id" />
            <asp:BoundField DataField="payment_type" HeaderText="payment_type" SortExpression="payment_type" />
            <asp:BoundField DataField="payment_status" HeaderText="payment_status" SortExpression="payment_status" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="rank_num" HeaderText="rank_num" SortExpression="rank_num" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("pay_Id") %>' Text="Delete" CssClass="btn-flat" OnClick="Button1_Click1" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT * FROM [payment_d]"></asp:SqlDataSource>
</asp:Content>

