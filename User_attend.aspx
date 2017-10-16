<%@ Page Title="" Language="C#" MasterPageFile="~/User_MasterPage.master" AutoEventWireup="true" CodeFile="User_attend.aspx.cs" Inherits="User_attend" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row-fluid" style="margin-left:12%">
        <br/>
        <br/>
        <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="class_Id" DataSourceID="SqlDataSource1" Width="666px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
                            BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="class_Id" HeaderText="class_Id" InsertVisible="False" ReadOnly="True" SortExpression="class_Id" />
            <asp:BoundField DataField="class_level" HeaderText="class_level" SortExpression="class_level" />
            <asp:BoundField DataField="class_location" HeaderText="class_location" SortExpression="class_location" />
            <asp:BoundField DataField="class_ddt" HeaderText="class_ddt" SortExpression="class_ddt" />
        
       <asp:TemplateField AccessibleHeaderText="Class Register">
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("class_id") %>' class="btn-primary" OnClick="Button1_Click" Text="Register" />
                                   
                                     
                                    </ItemTemplate>
                                </asp:TemplateField>
            </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT * FROM [class]"></asp:SqlDataSource>
           
    </div>
    <br/>
    <div style="margin-left:12%"><asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label></div> 
</asp:Content>

