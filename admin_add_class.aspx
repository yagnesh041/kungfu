<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin_add_class.aspx.cs" Inherits="admin_add_class" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(document).ready(function () {
        $("#<%=TextBox3.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d %H:%M",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>
   

   
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    


	<!-- main container -->
    <div class="container-fluid">
        <br/>
        <asp:Label ID="Label3" runat="server" Text="Add class details" class="auto-style2" style="margin-left:40%;font-size:medium"></asp:Label>
<br/>
       <table style="margin-left:30%" >
         <br/>
          <tr class="auto-style2"  >
      <td class="auto-style2" >
              Class Level</td>
              <td>
                  <asp:DropDownList ID="DropDownList1" runat="server">
                      <asp:ListItem>Beginner</asp:ListItem>
                      <asp:ListItem>Intermediate</asp:ListItem>
                      <asp:ListItem>Advance_level</asp:ListItem>
                  </asp:DropDownList>
          </tr>
           <tr>
            <td class="auto-style2">Class Location</td>
             
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
          
           <tr>
            <td class="auto-style2">Class Date,Day And Time</td>
             
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox> 
                <img alt src="calender.png" />
      </div>               <td>  
                   <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
                   </td>
        </tr>
          
           <tr>
              <td> 
                  
                  <asp:Button ID="Button1" runat="server" Text="Save" class="btn-flat" OnClick="btnSave_Click" /></td>
               <td>
               <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Update" class="btn-flat"  />&nbsp;

                   <asp:Button ID="Button5" runat="server" Text="Cancel" class="btn-flat" OnClick="Button5_Click1" />

               </td>
               <td>
                   &nbsp;</td>
                  <td> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
           
               
               </tr>
           <tr> 
               
               <td>
                  <br/>
                   <asp:Label ID="Label1" runat="server" Text="add sucessfully" style="font-weight: 700; font-size: large"></asp:Label>
                  
           </tr>
    
           </table>
       

    </div>
    <br/>

    <br/>
    <div style="margin-left:30%">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="class_Id" Width="666px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
                            BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <Columns>
                <asp:BoundField DataField="class_Id" HeaderText="class_Id" InsertVisible="False" ReadOnly="True" SortExpression="class_Id" />
                <asp:BoundField DataField="class_level" HeaderText="class_level" SortExpression="class_level" />
                <asp:BoundField DataField="class_location" HeaderText="class_location" SortExpression="class_location" />
                <asp:BoundField DataField="class_ddt" HeaderText="class_ddt" SortExpression="class_ddt" />
                <asp:TemplateField AccessibleHeaderText="delete and Edit">
                                    <ItemTemplate>
                                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("class_id") %>' class="btn-primary" OnClick="Button2_Click" Text="Delete" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("class_id") %>' Text="Edit" class="btn btn-primary" OnClick="Button3_Click" />
                                    </ItemTemplate>
                                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT * FROM [class]"></asp:SqlDataSource>
    </div>
    
    


</asp:Content>

