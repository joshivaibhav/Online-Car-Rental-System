<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booked_enter_car.aspx.cs" Inherits="WebApplication1.booked_enter_car" %>

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
    
#booklistwrap .row{
    transition:.5s;
    border:hidden;
    border-radius:3px;
    line-height:2.5em;
    font-size:1.1em;
    margin-top:0.5em;
}

#booklistwrap .row:hover{
    box-shadow:0px 0px 7px black; 
    transition:.5s;
    cursor:pointer;
}

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
margin-left:0px; overflow:hidden; width:100%; height:5em;
}

#logo-container{
padding:0% 20%; line-height:2.5em;
}
}
@media only screen and (max-width : 540px) {
#login-wrap{
top:6em; left:8%; right:8%; height:80vh;
}

}


@media only screen and (min-width : 540px) {
#login-wrap{
top:7em; left:20%; right:20%; height:80vh;
}


}

@media only screen and (min-width : 992px) {
#login-wrap{
top:8em; left:25%; right:25%; height:70vh;
}

}
</style>
 
 </head>
<body style="background-color:rgb(131, 179, 252)
">
  <nav id="navigation" class=" white z-depth-3"  role="navigation">
    <div id="nav_wrap" class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo">Logo</a>
      <ul class="right hide-on-med-and-down" >
        
		<li ><a href="#" ><i style="display:inline;" class="material-icons">home</i>Home</a></li>
		<li><a href="#" ><i style="display:inline;" class="material-icons">directions_car</i>Book</a></li>

		<li><a runat="server" href="#" ><i style="display:inline;" class="material-icons">account_circle</i><%if (Session["user"] == null) { Response.Write("Login"); } else { Response.Write(Session["user"]); } %></a></li>
		
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><p class="nav-logo">Logo</li>
		<li><a href="#" style="float:left; width:100%;"><i class="material-icons">home</i>Home</a></li>
		<li><a href="#" style="float:left; width:100%;"><i class="material-icons">directions_car</i>Book</a></li>
		<li><a href="#" style="float:left; "><i class="material-icons">account_circle</i>Login</a></li>
		
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
 
	
	
    <div id="login-wrap" class="row z-depth-4" style="position: fixed; z-index: 0; background-color: white; border: hidden; border-radius: 20px;">
        <div class="row" align="center">
                    <h5>car & driver details</h5>
            <form runat="server">
           <div class="row">
               <div class="col s2"></div>
                        <div class="input-field col s8" align="left">
                            <i class="icon ion-ios-contact-outline prefix"></i>
                            
                            <asp:DropDownList ID="DriverList1" runat="server">


                            </asp:DropDownList>
                            
                             
                        </div>
                    </div>
           
             <div class="row">
                 <div class="col s2"></div>
                 
                        <div class="input-field col s8" align="left">
                            <i class="icon ion-android-car  prefix"></i>
                            <asp:DropDownList ID="CarList2" runat="server">


                            </asp:DropDownList>
                            
                             
                        </div>
                    </div>
                 
               <div class="raw" align="center">
                    <asp:Button class="waves-effect waves-light btn red" onClick="button1_click" style="padding:0% 13%; font-weight:300; font-size:1.3em;" ID="Button1" runat="server" Text="submit" />
                </div>
            </form>
                          
            
      </div>
    </div>
    
  <!--  Scripts-->
  <script src="js/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script>
      $(document).ready(function () {
          $("#<%=DriverList1.ClientID%>").material_select();
      });
      $(document).ready(function () {
          $("#<%=CarList2.ClientID%>").material_select();
      });
      </script>
</body>

</html>