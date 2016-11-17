<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpwd.aspx.cs" Inherits="WebApplication1.forgotpwd" %>

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
 height:80vh;
 
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
#loginwrap{
top:8em; left:8%; right:8%;
bottom:1em;
}

}


@media only screen and (min-width : 540px) {
#loginwrap{
top:10em; left:25%; right:25%;
height:40vh;
margin-bottom:1em;
}


}

    @media only screen and (min-width : 992px) {
        #loginwrap {
            top: 10em;
            left: 30%;
            right: 30%;
            margin-bottom: 1em;
        }
    }

        @media only screen and (max-width : 540px) {
            #pass {
                top: 8em;
                left: 8%;
                right: 8%;
                bottom: 1em;
            }
        }



        @media only screen and (min-width : 540px) {
            #pass {
                top: 10em;
                left: 25%;
                right: 25%;
                height: 40vh;
                margin-bottom: 1em;
            }
        }

        @media only screen and (min-width : 992px) {
            #pass {
                top: 10em;
                left: 30%;
                right: 30%;
                margin-bottom: 1em;
            }
        }

@media only screen and (max-width : 540px) {
            #respass {
                top: 8em;
                left: 8%;
                right: 8%;
                bottom: 1em;
            }
        }



        @media only screen and (min-width : 540px) {
            #respass {
                top: 10em;
                left: 25%;
                right: 25%;
                height: 40vh;
                margin-bottom: 1em;
            }
        }

        @media only screen and (min-width : 992px) {
            #respass {
                top: 10em;
                left: 30%;
                right: 30%;
                margin-bottom: 1em;
            }
        }
    
    
</style>
 
 </head>
<body style="background-color:rgb(131, 179, 252);">
  <nav id="navigation" class=" white z-depth-3"  role="navigation">
    <div id="nav_wrap" class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo">Logo</a>
      <ul class="right hide-on-med-and-down" >
        
		<li ><a href="Index.aspx" ><i style="display:inline;" class="material-icons">home</i>Home</a></li>
		<li><a href="Book.aspx" ><i style="display:inline;" class="material-icons">directions_car</i>Book</a></li>





		<li><a runat="server" href="login.aspx" ><i style="display:inline;" class="material-icons">account_circle</i><%if (Session["user"] == null) { Response.Write("Login"); } else { Response.Write(Session["user"]); } %></a></li>
		
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><p class="nav-logo">Logo</li>
		<li><a href="Index.aspx" style="float:left; width:100%;"><i class="material-icons">home</i>Home</a></li>
		<li><a href="Book.aspx" style="float:left; width:100%;"><i class="material-icons">directions_car</i>Book</a></li>
		<li><a href="login.aspx" style="float:left; "><i class="material-icons">account_circle</i>Login</a></li>
		
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
     <form id="form1" runat="server">
     
  <div id="loginwrap" runat="server" align="center" class="row z-depth-4" style="position:absolute;  z-index:0; background-color:white; border:hidden; border-radius:20px;">
      <span style="font-size:1.7em; padding-top:10px;"><b>Forgot Password</b></span><br /><br />      
      <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="txtusername" type="text" runat="server" class="validate"></asp:TextBox>
          <label for="txtusername">Enter Username:</label>
              <div class="error"></div>
        </div>    
          <button class="btn waves-effect waves-light red" ID="submit"  style="padding:0% 13%; font-weight:300; font-size:1.3em;" runat="server">NEXT</button>
          <asp:Button class="waves-effect waves-light btn red" style="padding:0% 13%;   font-weight:300; font-size:1.3em; display:none;" ID="loginbtn" runat="server" Text="Next"  OnClientClick="this.disabled=true;" UseSubmitBehavior="false" OnClick="loginbtn_Click"/>
          <br />
      </div>
            
  </div>

  
    <div id="pass" runat="server" align="center" class="row z-depth-4" style="position:absolute;  z-index:0; background-color:white; border:hidden; border-radius:20px;">
      <span style="font-size:1.7em; padding-top:10px;"><b>Reset Password</b></span><br /><br />      
      <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="TextBox1" type="text" runat="server" class="validate"></asp:TextBox>
          <label for="TextBox1">Enter Code Sent Via Mail</label>
              <div class="error"></div>
            
                </div>
            
          
          <asp:Button class="waves-effect waves-light btn red" style="padding:0% 13%;   font-weight:300; font-size:1.3em;" ID="Button2" runat="server" Text="Verify"  OnClientClick="this.disabled=true;" UseSubmitBehavior="false" OnClick="Button2_Click"/>
          <br />
      </div>
        
      </div>
         
         
         <div id="respass" runat="server" align="center" class="row z-depth-4" style="position:absolute;  z-index:0; background-color:white; border:hidden; border-radius:20px;">
      <span style="font-size:1.7em; padding-top:10px;"><b>Reset Password</b></span><br /><br />      
      <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="TextBox2" type="text" runat="server" class="validate"></asp:TextBox>
          <label for="TextBox2">Set New Password</label>
              <div class="error"></div>            
                </div>
          <asp:Button class="waves-effect waves-light btn red" style="padding:0% 13%; font-weight:300; font-size:1.3em;" ID="Button4" runat="server" Text="Confrim Password"  OnClientClick="this.disabled=true;" UseSubmitBehavior="false" OnClick="Button4_Click" ></asp:Button>
          <br />
      </div>
        
      </div>
         
             </form>
    
    <!--  Scripts-->
  <script src="js/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
    <script src="materialize.clockpicker.js"></script>
    <script src=js/jquery.validate.min.js type="text/javascript"></script>
    <script>
        $('.datepicker').pickadate({
            selectMonths:true,
        selectYears:70,
        });

        $(document).ready(function () {
            $("#form1").validate({
                rules: {
                    txtusername: {
                        required: true,

                    },

                },
                //For custom messages

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
            });
            $("#loginbtn").click();
        });
    </script>
  
</body>

</html>