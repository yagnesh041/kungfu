<%@ Page Title="" Language="C#" MasterPageFile="~/User_MasterPage.master" AutoEventWireup="true" CodeFile="user_rank.aspx.cs" Inherits="user_rank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row-fluid" style="margin-left:12%">
        <br/>
        <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="666px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
                            BorderWidth="1px" font-style="Font-Bold">
        <Columns>
            <asp:BoundField DataField="rank_num" HeaderText="Rank_num" SortExpression="rank_num" ControlStyle-Font-Size="Medium" />
            <asp:BoundField DataField="rank_b_color" HeaderText="Rank_b_color" SortExpression="rank_b_color" ControlStyle-Font-Size="Medium"/>
            <asp:BoundField DataField="rank_description_" HeaderText="Rank_description" SortExpression="rank_description" ControlStyle-Font-Size="Medium" />
           
        </Columns>
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [rank_num], [rank_b_color], [rank_description ] AS rank_description_, [rank_status] FROM [rank] ORDER BY [rank_num]"></asp:SqlDataSource>
</asp:Content>

