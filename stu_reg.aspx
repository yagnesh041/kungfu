<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_reg.aspx.cs" Inherits="stu_reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>student Registor</title>
    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- libraries -->
    <link href="css/lib/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
    <link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <link rel="stylesheet" type="text/css" href="css/elements.css">
    <link rel="stylesheet" type="text/css" href="css/icons.css">
    <script type="text/javascript" language="javascript">

        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
</script>
     <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/index.css" type="text/css" media="screen" />    

    <!-- open sans font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- lato font -->
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui-1.10.2.custom.min.js"></script>
    <!-- knob -->
    <script src="js/jquery.knob.js"></script>
    <!-- flot charts -->
    <script src="js/jquery.flot.js"></script>
    <script src="js/jquery.flot.stack.js"></script>
    <script src="js/jquery.flot.resize.js"></script>
    <script src="js/theme.js"></script>
      <script src="js/wysihtml5-0.3.0.min.js"></script>
	<script src="js/bootstrap-wysihtml5.js"></script>
     <style type="text/css">
        .auto-style2
        {
            width: 251px;
            font-size:medium;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif
        }
        .auto-style3
        {
            width: 244px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <button type="button" class="btn btn-navbar visible-phone" id="menu-toggler">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <a class="brand" href="home.php">kungfu class register</a>

            <ul class="nav pull-right">                
                
                
                
               <%-- <li class="dropdown">
                    <a href="#" class="dropdown-toggle hidden-phone" data-toggle="dropdown">
                        My Account
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="personal-info.html">Personal info</a></li>
                        <li><a href="accset.aspx">Account settings</a></li>
                        <li><a href="logout.aspx">Logout</a></li>                        
                    </ul>
                </li>--%>
                
               <%-- <li class="settings hidden-phone">
                    <a href="signin.html" role="button">
                        <i class="icon-share-alt"></i>
                    </a>
                </li>--%>
            </ul>            

           <%-- <ul class="dropdown-menu pull-right">                
                
                
                
                <li >
                    <a href="logo">
                        <i class="icon-user">ccc</i>
                    </a>
                     <a href="logout.aspx" role="button">
                        <i class="icon-off"></i>
                    </a>
                     <a href="logout.aspx" role="button">
                        <i class="icon-off"></i>
                    </a>
                   
                </li>
                
               
            </ul>      --%>    
             
        </div>
    </div>
    <!-- end navbar -->

    <!-- sidebar -->
    
    <!-- end sidebar -->


	<!-- main container -->
    <div class="container-fluid">
        <br/>
        <asp:Label ID="Label3" runat="server" Text="Student Registration" class="auto-style2" style="margin-left:40%"></asp:Label>
<br/>
       <table style="margin-left:30%" >
         <br/>
          <tr class="auto-style2"  >
      <td class="auto-style2" >
              first_name</td>
              <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </td>
          </tr>
           <tr>
            <td class="auto-style2">last_name</td>
             
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
           <tr>
            <td class="auto-style2">stu_initial</td>
             
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
           <tr>
            <td class="auto-style2">Birthdate</td>
             
            <td class="auto-style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"> 
                
                </asp:ToolkitScriptManager>  

<asp:CalendarExtender  ID="CalendarExtender1" TargetControlID="Textbox4"  runat="server"  />  
      </div>               <td>  
                   <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
                   </td>
        </tr>
           <tr>
            <td class="auto-style2">join_date</td>
             
            <td class="auto-style3">
             <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>   
               

<asp:CalendarExtender  ID="CalendarExtender2" TargetControlID="Textbox5"  runat="server"  />  
      </div>
           <td>     <%--<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>--%>
            </td>
        </tr>
           <tr>
            <td class="auto-style2">stu_instructer</td>
             
            <td class="auto-style3">
                <asp:RadioButtonList id="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="131px">
        <asp:ListItem Selected="True">Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
     </asp:RadioButtonList>&nbsp;</td>
        </tr>
           <tr>
            <td class="auto-style2">Email_id</td>
             
            <td class="auto-style3">
                <br />
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter Valid Email Address</asp:RegularExpressionValidator>
            </td>
        </tr>
           <tr>
            <td class="auto-style2">Mobile_no</td>
             
            <td class="auto-style3">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
           <tr>
            <td class="auto-style2">address</td>
             
            <td class="auto-style3">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">password</td>
             
            <td class="auto-style3">
                <asp:TextBox ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
           <tr>
              <td style="width:10%"> &nbsp;<asp:Button ID="Button1" runat="server" Text="SUBMIT" class="btn-flat" OnClick="Button1_Click" /></td>
               <td>
                   <asp:Label ID="Label1" runat="server" Text="Register sucessfully" style="font-weight: 700; font-size: large"></asp:Label></td>
               </tr>
           
           </table>
       

    </div>
    <div>
    
    </div>
    
    </form>
</body>
</html>
