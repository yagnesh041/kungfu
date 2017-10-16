<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html class="login-bg">

<head runat="server">
	<title> Sign in</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet">
    <link href="css/compiled/signin.css" rel="stylesheet" />
    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <link rel="stylesheet" type="text/css" href="css/elements.css">
    <link rel="stylesheet" type="text/css" href="css/icons.css">

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="css/lib/font-awesome.css">
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/signin.css" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
<script type="text/javascript" language="javascript">
    function DisableBackButton() {
        window.history.forward()
    }
    DisableBackButton();
    window.onload = DisableBackButton;
    window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
    window.onunload = function () { void (0) }
</script>
</head>
<body>
<form runat="server">
	<div class="row-fluid login-wrapper">
        <a href="login.aspx">
           <h1>  </h1>
        </a>

        <div class="span4 box">
            <div class="content-wrap">
            	<%--<form method="post">--%>
                <h6>User login</h6>
                
               
             <%--  <?php /*?> <div class="alert alert-error"><?php echo $valid; ?> </div><?php */?>--%>
               
                    <asp:TextBox ID="TextBox1" runat="server" class="span12" type="text" name="uname" placeholder="Your username"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" class="span12" type="password" name="pass" placeholder="Your password"></asp:TextBox>
                <br>
                    <asp:Button ID="Button1" runat="server" Text="Login" type="submit"  class="btn-glow primary login pull-Center" OnClick="Button1_Click" />            
                <div class="clearfix"></div>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/stu_reg.aspx">New Registration</asp:HyperLink>
                   
               </form>
            </div>
        </div>

        <div class="span4 no-account">
            <p></p>             
        </div>
    </div>

    
 <%--</form>  --%> 
	<!-- scripts -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>

    <!-- pre load bg imgs -->
    
</body>


</html>