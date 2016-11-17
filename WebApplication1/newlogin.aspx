<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newlogin.aspx.cs" Inherits="WebApplication1.newlogin" %>

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
 width:94vw;
 overflow:auto;
 
}
@media only screen and (min-width : 992px) {
#nav_wrap{
margin-left:0px; overflow:hidden; width:100vw; hight:5em;
}

#logo-container{
    position:absolute;left:0px;
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
top:5em; left:25%; right:25%;
margin-bottom:1em;
}


}

@media only screen and (min-width : 992px) {
#login-wrap{
top:8em; left:30%; right:30%;
margin-bottom:1em;
}

}
</style>
 
 </head>
<body style="background-image:url('stripe_bg.jpg'); background-size:100%; backgound-repeat:repeat-y;">
  
  x <nav class="white z-depth-3"  role="navigation">
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

      <div id="login-wrap" align="center" class="row" style="position:absolute;  z-index:0; background-color:white; padding-bottom:0px;">
        <div class="col s1"></div>
          <div class="col s10 center">
          <h3><i class="mdi-content-send brown-text"></i></h3>
          <h4>Registration</h4>
		   <form id="form1" runat="server" class="col s12">
		<div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <label for="f_name">Enter First Name:</label>
          <asp:TextBox ID="f_name" type="text" runat="server" ClientIDMode="Static" class="validate" name="f_name"></asp:TextBox>
          <div class="error"></div>
             
        </div>
        </div>
		 
      <div class="row">
		<div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="l_name" runat="server" type="tel" class="validate"></asp:TextBox>
          <label for="l_name">Enter Last Name</label>
        </div>
	</div>
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="uname" type="text" runat="server" class="validate" name="uname" ClientIDMode="Static"></asp:TextBox>
          <label for="uname">Enter Username(Your Email):</label>
        </div>
        </div>
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="pwd" TextMode="Password" runat="server" class="validate" name="pwd" ClientIDMode="Static"></asp:TextBox>
          <label for="pwd">Enter Password</label>
        </div>
        </div>
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="cpwd" TextMode="Password" runat="server" class="validate" name="cpwd" ClientIDMode="Static"></asp:TextBox>
          <label for="pwd">Confirm Password</label>
        </div>
        </div>
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i><label for="sex">Sex</label><br />
          <!--<asp:TextBox ID="sex" type="text" runat="server" class="validate"></asp:TextBox>-->
           <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
           </asp:RadioButtonList>
          
        </div>
        </div>
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="dob" type="text" runat="server" class="datepicker"></asp:TextBox>
          <label for="dob">Date Of Birth</label>
        </div>
        </div>
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <textarea id="textarea1" class="materialize-textarea" runat="server"></textarea>
          <label for="textarea1">Address</label>
        </div>
        </div>
          
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="city" type="text" runat="server" class="validate" name="city" ClientIDMode="Static"></asp:TextBox>
          <label for="city">City:</label>
        </div>
        </div>
               
               <div class="row">
          <div class="col s12 input-field" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:DropDownList ID="ddl1" runat="server">
              <asp:ListItem text="Select State" value="null"></asp:ListItem>
                        <asp:ListItem text="Andaman &amp; Nicobar Islands" ></asp:ListItem>
                        <asp:ListItem Text="Andhra Pradesh" ></asp:ListItem>
                        <asp:ListItem Text="Arunachal Pradesh"></asp:ListItem>
                        
               </asp:DropDownList>
     
           </div>
        </div>
               
               <div class="row">
          <div class="input-field col s12" align="left">
          <i class="icon ion-android-alert prefix"></i>
          <asp:TextBox ID="cno" type="text" runat="server" class="validate" name="cno" ClientIDMode="Static"></asp:TextBox>
          <label for="cno">Contact No:</label>
        </div>
        </div>

            <asp:Button  ID="regbtn" style="display:none;"   runat="server" onClick="button1_click" OnClientClick="this.disabled=true;" UseSubmitBehavior="false" Text="Register"/>
        <button class="btn waves-effect waves-light red" ID="submit"  style="padding:0% 13%; font-weight:300; font-size:1.3em;" runat="server" onClick="button1_click" OnClientClick="this.disabled=true;" UseSubmitBehavior="false">register</button>
		   </form>
	<div class="row">
		<div class="col s12" align="center">
			Already Registered?&nbsp;<a href="login.aspx">Sign in</a>&nbsp;now
		</div>
	</div>	  
			<div class="row" style="height:3em;width:140%; margin-left:-5em; background-color:rgb(0,126,122); margin-bottom:0px;"></div>
		</div>
		
          
      </div>
    

  <!--  Scripts-->
  <script src="js/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
    <script src="materialize.clockpicker.js"></script>
    <script src=js/jquery.validate.min.js type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
        $('.datepicker').pickadate({
            selectMonths:true,
        selectYears:70,
        });

        $(document).ready(function () {
            $("#form1").validate({
                rules: {
                    f_name: {
                        required: true,
                        minlength: 1
                    },
                    uname: {
                        required: true,
                        minlength: 5
                    },
                    pwd: {
                        required: true,
                        minlength: 5
                    },
                    cpwd: {
                        required: true,
                        minlength: 5,
                        equalTo: "#pwd"
                    },
                    
                    city: {
                        required: true,
                    },

                    cno: {
                        required: true,
                        minlength: 10
                    },

                },
                //For custom messages
                messages: {
                    uname: {
                        required: "Enter a username",
                        minlength: "Enter at least 5 characters"
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
            });
            $("#regbtn").click();
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