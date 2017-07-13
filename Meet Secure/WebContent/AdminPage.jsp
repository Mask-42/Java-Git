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
<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<link rel="stylesheet" href="btstrap/css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="  col-xs-2 col-xs-offset-1 ">
				<a href="#"> <img src="images/logo.png"
					style="size: 70px; height: 70px">
				</a>
			</div>


			<div class="col-xs-5 col-xs-offset-4">
				<div class="collapse navbar-collapse " style="font-size: 18px;">

					<ul class="nav navbar-nav navbar-center  navbar-border">

						<li><a href=""><p>Databases</p></a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> Manage <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">

								<li><a data-target="#d" data-toggle="collapse"><p>Add</p></a></li>


								<li><a href="#"><p>Edit</p></a></li>
								<li><a href="#"><p>View</p></a></li>
							</ul></li>
						<li><a href="">Logout</a></li>

					</ul>
				</div>

			</div>


		</div>


		<br> <br>
		<div class="row">
			<div class="col-md-offset-1 col-md-10">
				<div class="container-subb">
					<br>
					<h2>
						<center>Welcome Admin!!!</center>
					</h2>
				</div>
			</div>


		</div>

		<div class="container collapse" id="d">


			<div class="row">
				<br>

				<div class="col-md-6 col-md-offset-3">
					<div class=" panel panel-login">
						<button style="padding-right: 20px; padding-top: 20px;"
							class="close" data-dismiss="panel">
							<a href="AdminPage.jsp">&times;</a>
						</button>

						<div class="panel-body">
							<div class="row">

								<div class="col-lg-12">

									<h1>
										<center>
											<span class="glyphicon glyphicon-edit "></span> Add a User
									</h1>
									</center>
									<s:form action="adduser" id="login-form" method="post"
										theme="bootstrap" cssClass="form-search">
										<center>
											<div class="form-group form-inline">
												<span class="glyphicon glyphicon-user"></span>
												<s:textfield type="text" name="name" placeholder="Name"
													class="form-control" id="name" value="">
												</s:textfield>
											</div>
											<div class="form-group form-inline">
												<span class="glyphicon glyphicon-phone"></span>
												<s:textfield type="text" name="phone" value=""
													class="form-control" id="phone" placeholder="Contact No.">
												</s:textfield>
											</div>
											<div class="form-group form-inline">
												<span class="glyphicon glyphicon-home"></span>
												<s:textfield type="text" name="address" value=""
													class="form-control" id="address" placeholder="Address">
												</s:textfield>
											</div>
											<div class="form-group form-inline">
												<span class="glyphicon glyphicon-envelope"></span>
												<s:textfield type="email" name="email" id="email" value=""
													class="form-control" placeholder="E-mail Id">
												</s:textfield>
											</div>
											<div class="form-group form-inline">
												<span class="glyphicon glyphicon-list-alt"></span>
												<s:textfield type="text" name="username" value=""
													class="form-control" placeholder="Username" id="username">
												</s:textfield>
											</div>
											<div class="form-group form-inline">
												<span class="glyphicon glyphicon-lock"></span>
												<s:password type="password" name="password" value=""
													class="form-control" placeholder="Password" id="password">
												</s:password>
											</div>
											<div class="form-group form-inline">
												<span class="glyphicon glyphicon-user"></span><span
													class="glyphicon glyphicon-user"></span><span
													class="glyphicon glyphicon-user"></span>
											<s:select theme="bootstrap" class="form-control"
													id="category1" headerValue="Select Type of users" headerKey="-1" name="category1"
													list="#{'Manager':'Manager','Security Guard':'Security Guard', 'Admin':'Admin' }" >
												</s:select>
												
											</div>
										</center>
										<br>
										<div class="col-s-5 form-group pull-right">
											<s:submit type="submit" name="add" id="add-request"
												class="form-control btn btn-success btn btn-request"
												value="Add User">
											</s:submit>
										</div>
									</s:form>

								</div>
							</div>
						</div>

					</div>



				</div>
			</div>



		</div>

		<br> <br> <br>
	</div>

	<script>
	var userRef = firebase.database().ref().child("Users/");
	$(document).ready(function(){
	 $('#add-request').on("click",function(e){
		var name=$('#name').val();
		 var email=$('#email').val();
		  var password=$('#password').val();
		 var address=$('#address').val();
		var username=$('#username').val();
		 var phone=$('#phone').val();
		 var role=$('#category1').val();
		userRef.push({
			"Name":name,
			"Email":email,
			"Password":password,
			"Address": address,
			"Username": username,
			"Contact":phone,
			"Role": role
			});
		return true;
	 });
	});
	</script>
</body>
</html>