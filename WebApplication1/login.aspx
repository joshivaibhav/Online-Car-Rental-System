 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
  <title>Parallax Template - Materialize</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.min.css" type="text/css" rel="stylesheet" />
  <link href="ionicons/css/ionicons.min.css" type="text/css" rel="stylesheet" />
  <link href="css/style - Copy.css"	 type="text/css" rel="stylesheet" />
  <link href="ionicons/css/ionicons.css" rel="stylesheet" type="text/css" />
<style>
.nav-wrapper ul a:hover{
border-top:solid;
border-top-color:blue;
border-top-width:5px;
transition: border-top-color .7s;
background-color:white;
}
.nav-wrapper ul a{
border-top:solid;
border-top-color:#fff;
border-top-width:5px;
padding-top:0px;
}

.btn{
margin-bottom:2em;
}

nav{
	max-width:100%;
	height:5em;
	position:absolute;
	left:0px;
	right:0px;
	top:0px;
	margin-left:0px;
	
	
	
	}	

body {
 width:100vw;
 height:80wh;
 overflow:hidden; 
 
}
@media only screen and (min-width : 992px) {
#nav_wrap{
margin-left:0px; overflow:hidden; width:100%; hight:5em;
}

#logo-container{
padding:0% 20%; position:fixed; left:0px; line-height:2.5em;
}
}
@media only screen and (max-width : 540px) {
#login-wrap{
top:30vh; left:8%; right:8%;
}

}


@media only screen and (min-width : 540px) {
#login-wrap{
top:30vh; left:25%; right:25%;
}


}

@media only screen and (min-width : 992px) {
#login-wrap{
top:20vh; left:60%; right:10%;
}

}
</style>
 
 </head>
<body  style="background-image:url('login-background.jpg'); background-size:100%;">
 
  <nav class="white z-depth-3"  role="navigation">
    <div id="nav-wrapper" class="nav-wrapper container" style="">
      <a id="logo-container" href="Index.aspx" class="brand-logo" >Logo</a>
      <ul class="right hide-on-med-and-down" style="display:inline-block;  height:100%; font-size:2em;">
        
		<li  ><a href="Index.aspx"><i style="display:inline;" class="icon ion-android-home"></i><span style="vertical-align:super; font-size:1.4em;"> Home</span></a></li>
		<li><a href="Book.aspx" ><i style="display:inline;" class="icon ion-android-car"></i><span style="vertical-align:super; font-size:1.4em;"> Book</span></a></li>
		<li><a href="login.aspx" ><i style="display:inline;" class="icon ion-ios-contact-outline"></i><span style="vertical-align:super; font-size:1.4em;"><%if (Session["user"] == null) { Response.Write("Login"); } else { Response.Write(Session["user"]); } %></span></a></li>
		
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><p class="nav-logo">Logo</li>
		<li><a href="Index.aspx" style="float:left; width:100%;"><i class="icon ion-android-home"></i> Home</a></li>
		<li><a href="Books.aspx" style="float:left; width:100%;"><i class="icon ion-android-car"></i>Book</a></li>
		<li><a href="login.aspx" style="float:left; width:100%;"><i class="icon ion-android-contact-outline"></i>Login</a></li>
		
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
	
	<div class="container">
    <div class="section">

      <div id="login-wrap" class="row z-depth-4" style="position:fixed;  z-index:0; background-color:white; padding:1em 1em 3em 1em;">
        <div class="col s12 center">
          <h3><i class="mdi-content-send brown-text"></i></h3>
          <h4>Login</h4>
            <br>
		   <form id="form1" runat="server" class="col s12">
		<div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="txtusername" type="text" runat="server" class="validate"></asp:TextBox>
          <label for="txtusername">Username</label>
        </div>
        </div>
		 
      <div class="row">
		<div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="txtpassword" runat="server" type="tel" class="validate"></asp:TextBox>
          <label for="txtpassword">Password</label>
        </div>
	</div>
               <div align="center" class="row">
               <asp:Button class="waves-effect waves-light btn " align="center" onClick="login_clicked" style="padding:0% 13%; background-color:#0f44c3; border-radius:0px; font-weight:300; font-size:1.3em;" ID="Button1" runat="server" Text="Login" />
			    </div>
                   <asp:Label runat="server" ID="lb1">Hello</asp:Label>
               <asp:Label runat="server" ID="lb2"></asp:Label>

			</form>
	<div class="row">
		<div class="col s12" align="left">
			Havent register yet.?  <a href=#>register now</a>
		</div>
	</div>	  
			
		</div>
		
      </div>

    </div>
  </div>

  <!--  Scripts-->
  <script src="js/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>

  
</body>

</html>