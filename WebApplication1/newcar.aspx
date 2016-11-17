<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newcar.aspx.cs" Inherits="WebApplication1.newcar" %>

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
#login-wrap{
top:8em; left:8%; right:8%;
bottom:1em;
}

}


@media only screen and (min-width : 540px) {
#login-wrap{
top:10em; left:25%; right:25%;
margin-bottom:1em;
}


}

@media only screen and (min-width : 992px) {
#login-wrap{
top:10em; left:30%; right:30%;
margin-bottom:1em;
}

}
</style>
 
 </head>
<body style="background-color:rgb(131, 179, 252);">
  <nav id="navigation" class=" white z-depth-3"  role="navigation">
    <div id="nav_wrap" class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo">Logo</a>
      <ul class="right hide-on-med-and-down" >
        
		<li ><a href="#" ><i style="display:inline;" class="material-icons">home</i>Home</a></li>
		<li><a href="#" ><i style="display:inline;" class="material-icons">directions_car</i>Book</a></li>

		<li><a runat="server" href="#" ><i style="display:inline;" class="material-icons">account_circle</i></a></li>
		
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><p class="nav-logo">Logo</p></li>
		<li><a href="#" style="float:left; width:100%;"><i class="material-icons">home</i>Home</a></li>
		<li><a href="#" style="float:left; width:100%;"><i class="material-icons">directions_car</i>Book</a></li>
		<li><a href="#" style="float:left; "><i class="material-icons">account_circle</i>Login</a></li>
		
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
 
	
      <div id="login-wrap" align="center" class="row z-depth-4" style="border-style: hidden; border-color: inherit; border-width: medium; position:absolute;  z-index:0; background-color:white; border-radius:20px; top: 18px; left: 249px;">
        <div class="col s1"></div>
          <div class="col s10 center">
          <h3><i class="mdi-content-send brown-text"></i></h3>
          <h4>Add new Car</h4>
		   <form id="form1" runat="server" class="col s12">
		<div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <label for="regno">Enter Registration No:</label>
          <asp:TextBox ID="regno" type="text" runat="server" ClientIDMode="Static" class="validate" name="regno"></asp:TextBox>
          <div class="error"></div>
             
        </div>
        </div>
		 
      <div class="row">
		<div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="make" runat="server" type="tel" class="validate"></asp:TextBox>
          <label for="make">Make</label>
        </div>
	</div>
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="mdl" type="text" runat="server" class="validate" name="mdl" ClientIDMode="Static"></asp:TextBox>
          <label for="mdl">Model</label>
        </div>
        </div>
               <div class="row">
          <div class="col s12 input-field" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem text="Select Type of Car" value="null"></asp:ListItem>
                        <asp:ListItem text="SUV(4x4)" Value="0" ></asp:ListItem>
                        <asp:ListItem Text="Sedan" Value="1"></asp:ListItem>
                        <asp:ListItem Text="HatchBack" Value="2"></asp:ListItem>
                        <asp:ListItem Text="LUV" Value="3"></asp:ListItem>                        
               </asp:DropDownList>
                </div>
                   </div>
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="city"  runat="server" class="validate" name="city" ClientIDMode="Static"></asp:TextBox>
          <label for="pwd">City</label>
        </div>
        </div>
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i><label for="rkm">Rate/km</label><br />
          <asp:TextBox ID="rkm" type="text" runat="server" class="validate"></asp:TextBox>
           
          
        </div>
        </div>
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="rhr" type="text" runat="server" class="validate"></asp:TextBox>
          <label for="rhr">Rate/hr</label>
        </div>
        </div>
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="rday" type="text" runat="server" class="validate"></asp:TextBox>
          <label for="rday">Rate/day</label>
        </div>
        </div>
          
               <div class="row">
          <div class="input-field col s12" align="left">
           Upload an image
          <asp:FileUpload id="FileUploadControl" runat="server" />
          
        </div>
        </div>

           
        <button class="btn waves-effect waves-light red" ID="submit"  style="padding:0% 13%; font-weight:300; font-size:1.3em;" runat="server">Update</button>
		<asp:Button  ID="regbtn" style="display:none;"   runat="server" OnClick="regbtn_Click"  OnClientClick="this.disabled=true;" UseSubmitBehavior="false" Text="Register"/>
                 </form>	  
			
		</div>
		
      </div>
    
  <!--  Scripts-->
  <script src="js/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
    <script src="materialize.clockpicker.js"></script>
    <script src=js/jquery.validate.min.js type="text/javascript"></script>
    <script>
        $(document).ready(function (){
            $('select').material_select();
        });

        $(document).ready(function () {
            $("#form1").validate({
                rules: {
                    regno: {
                        required: true,
                        minlength: 10
                    },
                    make: {
                        required: true,

                    },
                    mdl: {
                        required: true,

                    },
                    city: {
                        required: true,

                    },

                },
                errorElement: 'div',
                errorPlacement: function (error, element) {
                    var placement = $(element).data('error');
                    if (placement) {
                        $(placement).append(error)
                    } else {
                        error.insertAfter(element);
                    }
                }
            });
                
            $("#submit").click(function () {
                $("#form1").valid(); 
                $("#regbtn").click();
            });
        });
        
    </script>
    <style type ="text/css" >  
            div.error {             
                color: red;   
                display:inline-flex ;                 
            }
    </style> 
    <script>
        var t = '<%=msg%>';

      if(t!="")
      {
          Materialize.toast(t,2000,'rounded');
      }
      
      
      </script> 
  
</body>

</html>