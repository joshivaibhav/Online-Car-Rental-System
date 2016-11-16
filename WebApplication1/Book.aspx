<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="WebApplication1.Book" %>

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
    <link href="materialize.clockpicker.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.min.js"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places&key=AIzaSyDnt5-Xf-6L_UYdx9c51bIl48UyJCkT9io"></script>
    <script type="text/javascript" src="jquery.geocomplete.min.js"></script>
    <script>
        $(function () {
            $("#txtlocation1").geocomplete({
                details: ".geo-details",
                detailsAttribute: "data-geo1"
            });
            
        });
    </script>
<style>

.backer {
    
    background-color:darkslategray; 
    height:100%;  
     z-index:-2;
    border: hidden; 
    width:3.7em;
    transition: .4s;
    border-top-left-radius:30px;
    border-bottom-left-radius:30px;
}
.backer:hover {
    border-radius: 5px;
    cursor:pointer;
    width:4.3em;
    transition: .3s;
}
.backer-logo{
    position:absolute;
    top:47%;
   
    color:white;
    font-size:2em;
    
}

#form-container {
    
}

.nav-wrapper ul a:hover{

left:20%;
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
a.collection-item{
    color:black;
    font-weight:600;
}

a.collection-item:hover{
    cursor:pointer;
    
    color:white;
}
#carlist-wrap .row{
    transition:.5s;
    border:hidden;
    border-radius:3px;
    
}

#carlist-wrap .row:hover{
    box-shadow:0px 0px 7px black; 
    transition:.5s;
    cursor:pointer;
}

.collection a.collection-item:hover:not(.active){
    background-color:rgb(6, 169, 182);
}
.btn{
margin-bottom:2em;
}

nav {
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
 overflow:hidden; 
 
}
    #place1 {
        background-color:white;
        border: hidden;
        
        transition: 1s;
    }
    #time1 {
        background-color:white;
        background-image:none;
        border: hidden;
        
        transition: 1s;
    }
.card:hover #place1{
    background-image:url("minimal1.jpg");
    background-size:cover;
    box-shadow:7px 7px 12px black;
    color:white;
   transition: .5s;
   cursor:pointer;
}
.activator:hover{
    cursor:pointer;
}

#time1:hover{
    background-image:url("minimal2.jpg");
    background-size:cover;
    box-shadow:7px 7px 12px black;
    color:white;
   transition: .5s;
   cursor:pointer;
}
@media only screen and (min-width : 992px) {
#nav_wrap{
margin-left:0px; overflow:hidden; width:100%; height:5em;
}

#logo-container{
    position:fixed;
    left:0px;
    top:0px;    
    padding:0% 20%; line-height:2.5em;
}
}
@media only screen and (max-width : 540px) {
#login-wrap{

}
}


@media only screen and (min-width : 540px) {

}

@media only screen and (min-width : 992px) {
#login-wrap{
	
}

}
</style>
 
 </head>
<body style="background-image:url('background1104.jpg'); background-size:100%;">

    <script>
        var rent_type;
        var selected;

    </script>

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
    <div id="form-container" class="section">
        
        <div id="login-wrap1" style=" position: fixed; width: 70%; height: 70%; top: 15em; z-index: 0;">
            <div class="row">
                <div class="col s12 m1"></div>
                
                <div  class="col s12 m4 card" style="background-color:rgba(0,0,0,0); overflow:visible !important; box-shadow:none;" align="center">
                    <div id="place1" class="z-depth-3">
                    <i class="icon ion-android-pin" style="font-size: 10em;"></i>
                    </div>
                        <div class="card-content white activator" style="display:none; box-shadow:7px 7px 12px black;">
                        <span class="card-title activator">Hello</span>
                    </div>
                    <div class="card-reveal" style="display:none; box-shadow:7px 7px 12px black;">
                        <span class="card-title">Hello</span>
                        This is not the end
                    </div>
                
                 </div>
                <div class="col s12 m2"></div>
                <div  class="col s12 m4 card" style="background-color:rgba(0,0,0,0); overflow:visible !important; box-shadow:none;" align="center">
                    <div id="time1" class="z-depth-3">
                    <i class="icon ion-android-time" style="font-size: 10em;"></i>
                    </div>
                        <div class="card-content white activator" style="display:none; box-shadow:7px 7px 12px black;">
                        <span class="card-title activator">Hello</span>
                    </div>
                    <div class="card-reveal" style="display:none; box-shadow:7px 7px 12px black;"> 
                        <span class="card-title">Hello</span>
                        This is not the end
                    </div>
                
                 </div>
            </div>
        </div>
	<form class="col s12" runat="server">
        
         <div id="login-wrap2" class="row" style="display:none; position: fixed; left: 0%; right: 0%; top: 7em; z-index: 0; ">
            
            <div class="col s0 m1 l2 center z-depth-4"></div>
             <div class="col s1 m1 l2" style="margin-right:-30px;" align="right">
             <div class="backer" id="backer1">
                 <div class="backer-logo" id="backer-logo1"><span style="display:inline-block; width:.2em;"></span> <i class="icon ion-chevron-left"></i></div>
             </div>
             </div>
            <div id="detail-wrap" class="col s10 m8  l4 center" style="background-color: white; z-index:2; padding:0em 2em; border: hidden; border-radius: 20px;">
                <h3><i class="mdi-content-send brown-text"></i></h3>
                <h4>Time & Location</h4>    
                <br/>
                    <div class="row">
                        <div class="input-field col s12" align="left">
                            
                            <i class="prefix icon ion-ios-location"></i>
                            <asp:TextBox ID="txtlocation1" name="txtlocation1" placeholder="" runat="server"></asp:TextBox>
                            <label  id="txtlocation1-label"></label>  
                        </div>
                    </div>

                    <div class="row" id="txtlocation2-div">
                        <div class="input-field col s12" align="left">
                            <i class="prefix icon ion-ios-location"></i>
                            
                            <asp:TextBox ID="txtlocation2"  placeholder="" runat="server"></asp:TextBox>
                            <label id="txtlocation2-label">ending location</label>
                        </div>
                    </div>
                    <div class="row" id="time-duration" style="margin-left:-6.5em;">
                        Time Duration:
                            <label>DD</label><asp:TextBox style="display:inline; width:10%;" ID="DD" maxlength="1"  placeholder=""  runat="server"></asp:TextBox>
                            <label>HH</label><asp:TextBox style="display:inline; width:10%;" ID="HH" maxlength="2" placeholder=""  runat="server"></asp:TextBox>
                            

                    </div>
                    <div class="row">
                        <div class="input-field col s12" align="left">
                            
                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="prefix icon ion-android-time"></i>
                                    <asp:TextBox ID="time" type="time" Class="timepicker" runat="server"></asp:TextBox>
                                    <label  for="time">Time</label>
                                </div>
                                <div class="input-field col s6">
                                    
                                    <asp:TextBox ID="date" type="text" class="datepicker" runat="server"></asp:TextBox>
                                    <label  for="date">Date</label>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div id="step2">
                        <a class="waves-effect waves-light btn " style="padding: 0% 13%; background-color:rgb(6, 169, 182); font-weight: 300; font-size: 1.3em;">Next</a>
                    </div>
                                </div>

        </div>
			
			
        <div id="login-wrap3" class="row" style="display:none;  position: fixed; padding: 2em; left: 25%; right: 25%; top: 10em; ">
            <div class="row">
                <div class="col s1 m1 l2" style="margin-right:-30px;" align="right">
             <div class="backer" id="backer2">
                 <div class="backer-logo" style="top:40%;" id="backer-logo2"><span style="display:inline-block; width:.2em;"></span> <i class="icon ion-chevron-left"></i></div>
             </div>
             </div>
                <div id="detail-wrap2" class="col m12 l10 center " style="padding:2em 4em; z-index: 0; background-color: white; border: hidden; border-radius: 20px;"> 
                    <div class="collection" id="car-type-wrap" style="border:none;">
                        <a id="1" class="collection-item">SUV</a>
                        <a id="2" class="collection-item">Small</a>
                        <a id="3" class="collection-item">Medium</a>
                        <a id="4" class="collection-item">Large</a>
                    </div>
                
                </div>   
            
            
            </div>    
        
        </div>

        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate>
                 <div id="login-wrap4" class="row" style="display: none; position: fixed; left: 15%; right: 15%; top: 8em; z-index: 0;">
                     <div class="row">
                         <div class="col s1 m1 l2" style="margin-right: -30px;" align="right">
                             <div class="backer" id="backer3">
                                 <div class="backer-logo" id="backer-logo3"></div>
                             </div>
                         </div>  
                         <div id="detail-wrap3" class="col s11 m11 l10" style="z-index:1;  background-color: white; border: hidden; border-radius: 20px; padding: 2em;">

                     <div class="row">
                         
                         <div id="carlist-wrap" class="col s12 l12 center" style="border-top: solid; border-bottom: solid; max-height:50vh; overflow:auto; border-width: 0.1em;" >
                         </div>
                     </div>

                     <div class="row center">
                         <div id="step4">
                             <asp:Button type="button" class="waves-effect waves-light btn" Style="padding: 0% 13%; background-color:rgb(6, 169, 182); font-weight: 300; font-size: 1.3em;" ID="Button1" runat="server" Text="Finish" OnClick="button1_click"  OnClientClick="this.disabled=true;" UseSubmitBehavior="false"/>

                         </div>
                     </div>
                             </div>
                    </div>
                 </div><!--login-wrap4 ends here-->
	 
                    </ContentTemplate>
       </asp:UpdatePanel>
        
                    <asp:HiddenField runat="server" ID="rent_type" />
                    <asp:HiddenField runat="server" ID="car_model" />
                    <asp:HiddenField runat="server" ID="car_make" />

        <!-- Location -->
        <div class="geo-details" style="display:none;">
            <asp:TextBox ID="location1_x" data-geo1="lat" runat="server"></asp:TextBox>
            <asp:TextBox ID="location1_y" data-geo1="lng" runat="server"></asp:TextBox>
            <asp:TextBox ID="location2_x" data-geo2="lat" runat="server"></asp:TextBox>
            <asp:TextBox ID="location2_y" data-geo2="lng" runat="server"></asp:TextBox>
        </div>

        </form>

		</div><!--section ends here-->
		
      </div><!--container ends here-->

  
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
    <script src="materialize.clockpicker.js"></script>
    <script src="js/jquery.actual.js"></script>
    
<script>
    //javascript function for login-wrap4 when someone selects the option it should be highlighted.

    $("#carlist-wrap").on('click','.row',function() {

        $(selected).css("background-color", "white");

        selected = $(this);
     
        $("#<%=car_make.ClientID%>").val($(selected).find("#list_make").html());
        $("#<%=car_model.ClientID%>").val($(selected).find("#list_model").html());
        
  
              

        $(this).css("background-color", "#1cf5c7");
    });
    
    //backer button script
    function idIsHovered(id) {
        return $("." + id + ":hover").length > 0;
    }
    //For Login-wrap1 when hover
    $(".card").hover(function () {
        $(this).find(".card-content").stop(true, true).slideDown("slow");
        clearInterval(timerId);
    }, function () {
        
        $(this).find('.card-reveal').velocity(
            { translateY: 0 }, {
                duration: 225,
                queue: false,
                easing: 'easeInOutQuad',
                complete: function () { $(this).css({ display: 'none' }); $(this).closest('.card').css('overflow', 'visible'); }
            }
          );
        timerId = setInterval(function () { $(".card-content").slideUp("slow", function () { clearInterval(timerId); }); }, 225);
        

        /*if (idIsHovered("!card-content"))
        {
            timerId = setInterval(function () {
                if (!idIsHovered("card - content"))
                {
                    $(".card-content").slideUp("slow");
                    clearInterval(timerId);
                }
            }, 200);

        }
        else {
            $(".card-content").slideUp("slow");
        }
        */
    });

    //for login-wrap1 when selects the type
    $("#place1,#time1").click(function () {

      var div_id = $(this).attr('id');
        
        if (div_id == "place1")
        {
            $("#txtlocation1-label").html("starting location");
            $("#time-duration").css("display", "none");
            $("#txtlocation2").geocomplete({

                details: ".geo-details",
                detailsAttribute: "data-geo2"
            });
        }
        else {
            $("#txtlocation1-label").html("location");
            $("#txtlocation2-div").css("display", "none");
            
        }
            $("#<%=rent_type.ClientID%>").val(div_id);
    
			$("#login-wrap1").fadeOut();

            //get Height of the login-wrap2 for back button
			
			//var height1 = $("#detail-wrap").height();
			var height1 = $("#detail-wrap").actual('height');

            $("#backer1").height(height1);

            $("#backer1").css('width','0px');

			
			//************************************* ends here
            $("#login-wrap2").slideDown()
    
            setTimeout(function () {
                $("#backer1").css('width', 'boxWidth');
            }, 700);

            
            
            
			

			
	});


    //for backer when click
    $("#backer1").on("click", function () {
        $("#login-wrap2").fadeOut(100, function () { $("#login-wrap1").fadeIn(); });
        $("#time-duration").css("display", "auto");
        $("#txtlocation2-div").css("display", "auto");

    

    });
    $("#backer2").on("click", function () {
        $("#login-wrap3").fadeOut(100, function () { $("#login-wrap2").fadeIn(); });


    });

    $("#backer3").on("click", function () {
        $("#login-wrap4").fadeOut(100, function () { $("#login-wrap3").fadeIn(); });
        $("#carlist-wrap").html('');


    });
    //*************************

    //for login-wrap3 the car_type selection
    $("#car-type-wrap a").click(function () {
        $("#carlist-wrap").html('');
        var div_id_string = $(this).attr('id');
        var div_id = parseInt(div_id_string);
        var user_id1_string=<%if (Session["user"] == null) { Response.Write("Login"); } else { Response.Write(Session["user"]); } %>;
        //var user_id1 = parseInt(user_id1_string);
        
        $("#car_type").html(div_id_string);
        $.ajax({
            url: 'CarService1.asmx/GetCarByType',
            method: 'post',
            contentType: "application/json; charset=utf-8",
            data : JSON.stringify({ CarType: div_id_string, userid: user_id1_string }),
            dataType: "json",
            success: function (data) {
                
                carlist=data.d;
                $.each(carlist, function(index, car)
                {
                    
                       
                 var make = car.make;
                 var model = car.model;
                 
                    if(car.model=="no_cars")
                    {
                        string1='<div class="row" align="center" style="height: 6em; margin-top: 0.5em;">No cars available right now</div>';
                    }
                    else
                        {
                    var string1 = '<div class="row" style="height: 6em; margin-top: 0.5em;" id="'+model+"-"+make+'">' +
                          '<div class="col s3 center">' +
                              '<img src="minimal1.jpg" style="height: 6em;">' +
                          '</div>' +
                          '<div class="col s3 center">' +
                              '<div id="list_model" style="position: relative; margin-top: 2.2em;">'+model+'</div>' +
                          '</div>' +
                          '<div id="list_make" class="col s3 center" style="position: relative; margin-top: 2.2em;">' +
                              make +

                          '</div>' +
                          '<div class="col s3 center" style="position: relative; margin-top: 2.2em">' +
                              'detail' +
                          '</div>' +
                      '</div>';

                    }
                    $("#carlist-wrap").append(string1);
                    
                });

                var height3 = $("#detail-wrap3").actual('outerHeight');

                $("#backer3").outerHeight(height3);
                $("#backer-logo3").css('top', (((height3) / 2) - 20) + 'px');
                setTimeout(function () {
                    $("#backer3").css('width', 'boxWidth');
                }, 700);
                    
                setTimeout(function () {
                    var mystring = '<span style="display: inline-block; width: .2em;"></span><i class=\"icon ion-chevron-left\"></i>';
                    $("#backer-logo3").html(mystring);
                }, 800);
                    
                
            },
             error: function (jqXHR, textStatus, errorThrown)   //what to do if fails
            {
                alert('bad, ' + errorThrown + ", " + jqXHR.responseText + ", " + textStatus);
            }            
        });


        
        $("#login-wrap3").fadeOut();
        
        $("#backer3").css('width', '0px');


        $("#login-wrap4").slideDown();
        

	});
	
	
    //for login-wrap2 when user writes the form  <!--it should be check before login-wrap3-->
	$("#step2").click(function() {
			$("#login-wrap2").fadeOut();
			var height2 = $("#detail-wrap2").actual('outerHeight');

			$("#backer2").outerHeight(height2);

			$("#backer2").css('width', '0px');


			$("#login-wrap3").slideDown();

			setTimeout(function () {
			    $("#backer2").css('width', 'boxWidth');
			}, 700);


			
	});



    //not of your use.
	$('.timepicker').pickatime({
	    default: 'now',
	    twelvehour: true, // change to 12 hour AM/PM clock from 24 hour
	    donetext: 'OK',
	    autoclose: false,
	    vibrate: true // vibrate the device when dragging clock hand
	});
	
	$('.datepicker').pickadate({
	    selectMonths: true, // Creates a dropdown to control month
	    selectYears: 1, // Creates a dropdown of 15 years to control year
	    
	});
</script>
</body>

</html>
    