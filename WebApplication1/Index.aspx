
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>

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
@media only screen and (min-width : 992px) {
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
}
#logo-container{
padding:0% 20%; background-color:white;
}
#nav-wrapper{
	margin-left:0px; overflow:hidden; width:90%;
}
}

@media only screen and (max-width : 992px) {
#logo-container{
padding:0% 70%;
background-color:white;
}
}

</style>
 
 </head>
<body>
  <nav class="white z-depth-3"  role="navigation">
    <div id="nav-wrapper" class="nav-wrapper container" style="">
      <a id="logo-container" href="Index.aspx" class="brand-logo" >Logo</a>
      <ul class="right hide-on-med-and-down" style="display:inline-block;  height:100%; font-size:2em;">
        
		<li  ><a href="Index.aspx"><i style="display:inline;" class="icon ion-android-home"></i><span style="vertical-align:super; font-size:1.4em;"> Home</span></a></li>
		<li><a href="Book.aspx" ><i style="display:inline;" class="icon ion-android-car"></i><span style="vertical-align:super; font-size:1.4em;"> Book</span></a></li>
		<li><a href="login.aspx" ><i style="display:inline;" class="icon ion-android-person"></i><span style="vertical-align:super; font-size:1.4em;"> <%if (Session["user"] == null) { Response.Write("Login"); } else { Response.Write(Session["user"]); } %></span></a></li>
		
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><p class="nav-logo">Logo</li>
		<li><a href="Index.aspx" style="float:left; width:100%;"><i class="icon ion-android-home"></i> Home</a></li>
		<li><a href="Books.aspx" style="float:left; width:100%;"><i class="icon ion-android-car"></i>Book</a></li>
		<li><a href="login.aspx" style="float:left; width:100%;"><i class="icon ion-android-person"></i>Login</a></li>
		
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>

  
    <div class="img"><img src="toyo.jpg" alt="Unsplashed background img 1"></div>
  
  <div class="container">
    <div class="section">

      <div class="row">
        <div class="col s12 center">
          <h3><i class="mdi-content-send brown-text"></i></h3>
          <h4>What is RentIt?</h4>
          <p class="left-align light">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam pellentesque tristique arcu, non consequat magna fermentum ac. Cras ut ultricies eros. Maecenas eros justo, ullamcorper a sapien id, viverra ultrices eros. Morbi sem neque, posuere et pretium eget, bibendum sollicitudin lacus. Aliquam eleifend sollicitudin diam, eu mattis nisl maximus sed. Nulla imperdiet semper molestie. Morbi massa odio, condimentum sed ipsum ac, gravida ultrices erat. Nullam eget dignissim mauris, non tristique erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>
			<a class="waves-effect waves-light btn-large" style="padding:0% 13%; background-color:rgb(6, 169, 182); font-weight:400; font-size:1.3em;"> Book a car</a>
		</div>
		
      </div>

    </div>
  </div>


  <div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
      <div class="container">
        <div class="row center">
          <h5 id="highlight" class="header col s12 light">A modern responsive front-end framework based on Material Design</h5>
        </div>
      </div>
    </div>
    <div class="parallax"><img src="back2.jpg" alt="Unsplashed background img 2"></div>
  </div>

  
  <div class="container" style="margin-bottom:-7em;">
    <div class="section">
	<h4 align="center">Why RentIt?</h4>
      <!--  Icon Section  -->
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text" ><i class="icon ion-android-alert" style="color:rgb(6, 169, 182);"></i></h2>
            <h5 class="center">Speeds up development</h5>

            <p class="light">We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="icon ion-android-alert" style="color:rgb(6, 169, 182);"></i></h2>
            <h5 class="center">User Experience Focused</h5>

            <p class="light">By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. Additionally, a single underlying responsive system across all platforms allow for a more unified user experience.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="icon ion-android-alert" style="color:rgb(6, 169, 182);"></i></h2>
            <h5 class="center">Easy to work with</h5>

            <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.</p>
          </div>
        </div>
      </div>

    </div>
  </div>


  
  


  
  <img src="minimal-car-index.png" alt="Unsplashed background img 3">
  
  <footer class="page-footer" style="background-color:rgb(6, 169, 182); margin-top:-20px;">
    <div class="container ">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">Company Bio</h5>
          <p class="grey-text text-lighten-4">We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.</p>


        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Settings</h5>
          <ul>
            <li><a class="white-text" href="#!">Link 1</a></li>
            <li><a class="white-text" href="#!">Link 2</a></li>
            <li><a class="white-text" href="#!">Link 3</a></li>
            <li><a class="white-text" href="#!">Link 4</a></li>
          </ul>
        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Connect</h5>
          <ul>+
            <li><a class="white-text" href="#!">Link 1</a></li>
            <li><a class="white-text" href="#!">Link 2</a></li>
            <li><a class="white-text" href="#!">Link 3</a></li>
            <li><a class="white-text" href="#!">Link 4</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      Made by <a class="brown-text text-lighten-3" href="http://materializecss.com">Materialize</a>
      </div>
    </div>
  </footer>


  <!--  Scripts-->
  <script src="js/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>

  </body>
</html>
