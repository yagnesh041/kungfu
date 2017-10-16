<%@ Page Title="" Language="C#" MasterPageFile="~/User_MasterPage.master" AutoEventWireup="true" CodeFile="user_payment.aspx.cs" Inherits="user_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row-fluid" style="margin-left:14%">
        <br/>
        <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="payment_Id" DataSourceID="SqlDataSource1" Width="666px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
                            BorderWidth="1px" font-style="Font-Bold">
        <Columns>
            <asp:BoundField DataField="payment_Id" HeaderText="payment_Id" ReadOnly="True" SortExpression="payment_Id" ControlStyle-Font-Size="Medium">
<ControlStyle Font-Size="Medium"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="paymeny_type" HeaderText="paymeny_type" SortExpression="paymeny_type" ControlStyle-Font-Size="Medium" >
<ControlStyle Font-Size="Medium"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="payment_date" HeaderText="payment_date" SortExpression="payment_date" ControlStyle-Font-Size="Medium" >
<ControlStyle Font-Size="Medium"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="payment_status" HeaderText="payment_status" SortExpression="payment_status" ControlStyle-Font-Size="Medium" >
<ControlStyle Font-Size="Medium"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="stu_num" HeaderText="stu_num" SortExpression="stu_num" ControlStyle-Font-Size="Medium" >
<ControlStyle Font-Size="Medium"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="stu_fname" HeaderText="stu_fname" SortExpression="stu_fname" ControlStyle-Font-Size="Medium" >
<ControlStyle Font-Size="Medium"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="class_level" HeaderText="class_level" SortExpression="class_level" ControlStyle-Font-Size="Medium" >
<ControlStyle Font-Size="Medium"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="rank_num" HeaderText="rank_num" SortExpression="rank_num" ControlStyle-Font-Size="Medium" >
<ControlStyle Font-Size="Medium"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="rank_b_color" HeaderText="rank_b_color" SortExpression="rank_b_color"  ControlStyle-Font-Size="Medium">
<ControlStyle Font-Size="Medium"></ControlStyle>
            </asp:BoundField>
            
            <asp:TemplateField AccessibleHeaderText="make payment">
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("payment_id") %>'   class="btn-primary"  OnClick="Button1_Click" Text="Payment" />
                                   
                                     
                                        &nbsp;
                                   
                                     
                                    </ItemTemplate>
                                </asp:TemplateField>
        </Columns>
        
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [payment_Id], [paymeny_type], [payment_date], [payment_status], [stu_num], [stu_fname], [class_level], [rank_num], [rank_b_color] FROM [payment]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;</div>
</asp:Content>

