<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carstats.aspx.cs" Inherits="WebApplication1.carstats" %>

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

body{
 width:100vw;
 height:80wh;
 
}
@media only screen and (min-width : 992px) {
#nav_wrap{
margin-left:0px; overflow:hidden; width:100%; hight:5em;
}

#logo-container{
padding:0% 20%; line-height:2.5em;
}
}
@media only screen and (max-width : 540px) {
#loginwrap{
top:8em; left:8%; right:8%;
bottom:1em;
}

}


@media only screen and (min-width : 540px) {
#loginwrap{
top:10em; left:25%; right:25%;
margin-bottom:1em;
}


}

@media only screen and (min-width : 992px) {
#loginwrap{
top:10em; left:14%; right:14%;

margin-bottom:1em;
}

}
hr.style13 {
	height: 10px;
	border: 0;
	box-shadow: 0 10px 10px -10px teal inset;
    
}
</style>
 
 </head>
<body class="teal lighten-2">
  <nav id="navigation" class=" white z-depth-3"  role="navigation">
    <div id="nav_wrap" class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo">Car Statistics</a>
      <ul class="right hide-on-med-and-down" >
        
		<li ><a href="#" ><i style="display:inline;" class="material-icons">home</i>Home</a></li>
		

		<li><a runat="server" href="#" ><i style="display:inline;" class="material-icons">account_circle</i><%if (Session["user"] == null) { Response.Write("Logout"); } else { Response.Write(Session["user"]); } %></a></li>
		
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><p class="nav-logo">Logo</li>
		<li><a href="#" style="float:left; width:100%;"><i class="material-icons">home</i>Home</a></li>
		<li><a href="#" style="float:left; "><i class="material-icons">account_circle</i>Login</a></li>
		
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
 
	
      <div id="loginwrap" runat="server" align="center" class="row z-depth-4" style="position:absolute;  z-index:0; background-color:white; border:hidden; border-radius:20px">    

</div>


  <!--  Scripts-->
  <script src="js/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
    <script src="materialize.clockpicker.js"></script>
    <script>
        $('.datepicker').pickadate({
            selectMonths:true,
        selectYears:70,
        });

    </script>
  
</body>

</html>