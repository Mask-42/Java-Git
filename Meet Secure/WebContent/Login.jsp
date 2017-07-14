<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>

<script src="https://www.gstatic.com/firebasejs/4.1.3/firebase.js"></script>
<script>
		// Initialize Firebase
		var config = {
			apiKey : "AIzaSyBuCXPVLdO8nuI3AzIlrPSrynR_uwaeVYk",
			authDomain : "meet-secure.firebaseapp.com",
			databaseURL : "https://meet-secure.firebaseio.com",
			projectId : "meet-secure",
			storageBucket : "meet-secure.appspot.com",
			messagingSenderId : "856844766175"
		};
		firebase.initializeApp(config);
	</script>
<sb:head />
</head>


<style>


body {
  padding-top: 90px;
  background:#F7F7F7;
  color:#666666;
  font-family: 'Roboto', sans-serif;
  font-weight:100;
}

body{
  width: 100%;
  
  background: -webkit-linear-gradient(left,white, #22d686,#24d3d3,white, #22d686,#24d3d3);
  background: linear-gradient(to right,white, #22d686, #24d3d3,white, #22d686,#24d3d3);
  background-size: 600% 100%;
  -webkit-animation: HeroBG 20s ease infinite;
          animation: HeroBG 20s ease infinite;
}

@-webkit-keyframes HeroBG {
  0% {
    background-position: 0 0;
  }
  50% {
    background-position: 100% 0;
  }
  100% {
    background-position: 0 0;
  }
}

@keyframes HeroBG {
  0% {
    background-position: 0 0;
  }
  50% {
    background-position: 100% 0;
  }
  100% {
    background-position: 0 0;
  }
}
.container-sub {
background-color:white;
height:10px;
   border: none;
  -webkit-box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  -moz-box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  padding: 10px;
  }
  .container-subb {background-color:white;
height:400px;
   border: none;
  -webkit-box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  -moz-box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  
	
}


.navbar-default {

    background-color: transparent;
	border: 0px;
    padding: 20px 0;
    transition: all 0.3s;
    
}
}
.navbar-brand {
    font-size: 50px;
    font-family: 'Satisfy', cursive;
}
.navbar-default .navbar-brand, .navbar-default .navbar-brand:hover, .navbar-default .navbar-brand:focus {
    color: #fff;
    outline: none;
}
.navbar-default .navbar-nav > li > a{
	font-size: 50px;
	font-weight: 400;
	color: #fff;
    outline: none;
}
.navbar-default .navbar-nav > li > a:focus, .navbar-default .navbar-nav > li > a:hover {
    color: #fffde0;
    background-color: transparent;
}
.navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:focus, .navbar-default .navbar-nav > .active > a:hover {
    color: #fffde0;
    background-color: transparent;
}

.top-nav-collapse {
    padding: 0; 
    background: rgba(50,60,70, 0.9);
    }
.navbar-toggle {
    position: relative;
    background-color: #fff;
    border-radius: 4px;
}
.navbar-nav > li > a {
    padding-top: 24px;
    padding-bottom: 24px;}
    
.navbar-brand{
	margin-top: 9px;
}
.sub{ size:30px;
height:30px ;}

</style>
<link rel="stylesheet" href="btstrap/css/bootstrap.min.css">
<script src="js/jquery.min.js">
	
</script>

<script src="js/bootstrap.min.js">
	
</script>

<body>
<div class="container">
	<div style="padding-top: 100px;" class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-login">
				<div class="panel-header">
					<button style="padding-right: 30px; padding-top: 30px;"
						class="close">
						<a href="index.jsp"> &times; </a>
					</button>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<s:form action="home" theme="bootstrap"  cssClass="form-search">
								<h2>
									<center>
										<b> <span class="glyphicon glyphicon-log-in"></span> LOGIN
										</b>
									</center>
									<br>
								</h2>
								<center>
								<div class="form-group form-inline">
									<span class=" glyphicon glyphicon-user">  </span> 
									<s:textfield
										name="username" id="username" tabindex="1" placeholder="Username" value=""/>
								</div>	
								<div class="form-group form-inline">
									<span class="glyphicon glyphicon-lock">  </span> <s:textfield
										type="password" name="password" id="password" tabindex="2"
										class="form-control" placeholder="Password"/>
								</div>
								<div class="col-xs-6 form-group pull-left checkbox">
									<s:checkbox theme="simple" id="checkbox1" type="checkbox" name="remember" />
									<label for="checkbox1">Remember Me</label>
								</div>
								</center>
								
								<br>
								<div class="col-s-5 form-group pull-right">
									<s:submit  name="login-submit" id="login-submit"
										tabindex="4" class="form-control btn btn-success"
										value="LogIn"/>
								</div>
							</s:form>
							

						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
</div>

 <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
        <script type="text/javascript"> 
        $('#login-submit').on("click",function(e){
        var rootRef = firebase.database().ref().child("Users/");
        var userName=$('#username').val();
        var passWord=$('#password').val();
        alert(userName);
    rootRef.orderByChild('Username').equalTo(userName).on('child_added',function(snapshot){
    	 
     var password=snapshot.child("Password").val();
     var role=snapshot.child("Role").val();
     if(password.equals(passWord) && role.equals("Manager"))
     alert(password)
      });
    return true;
        });
        </script>

</body>
</html>
			