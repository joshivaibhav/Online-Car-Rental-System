<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booked_detail_entry.aspx.cs" Inherits="WebApplication1.WebForm1" %>
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
<body style="background-color:rgb(131, 179, 252)">
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
 
	
	<form runat="server">
    <div id="login-wrap" class="row z-depth-4" style="position: fixed; z-index: 0; background-color: white; border: hidden; border-radius: 20px;">
        <div class="row" align="center">
                    <h5>Booking List</h5>
                         
            <div id="booklistwrap" runat="server" class="col s12 l12 center" style="border-top: solid; border-bottom: solid; border-width: 0.1em;">
            </div>
      </div>
    </div>
    
        <asp:HiddenField ID="selected_booking_detail" runat="server" />
        <asp:HiddenField ID="selected_booking_city" runat="server" />
        <asp:Button ID="Button1" OnClick="Button1_click" runat="server" Text="Button" />
        
    </form>

    
  <!--  Scripts-->
  <script src="js/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
    <script>
        $("#booklistwrap .row").on('click', function () {
            var booking_val = $(this).find("#booking_id").html();
            var booking_city = $(this).find("#booking_city").html();
            $("#<%=selected_booking_detail.ClientID%>").val(booking_val);
            $("#<%=selected_booking_city.ClientID%>").val(booking_city);
            $("#Button1").click();

        });

    </script>
  
</body>

</html>