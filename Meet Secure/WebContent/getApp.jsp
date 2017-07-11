<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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


.panel {
  border-radius: 5px;
}
label {
  font-weight: 300;
}
.panel-login {
   border: none;
  -webkit-box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  -moz-box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  box-shadow: 0px 0px 49px 14px rgba(188,190,194,0.39);
  padding: 10px
  }
.panel-login .checkbox input[type=checkbox]{
  margin-left: 0px;
}
.panel-login .checkbox label {
  padding-left: 25px;
  font-weight: 300;
  display: inline-block;
  position: relative;
}
.panel-login .checkbox {
 padding-left: 20px;
}
.panel-login .checkbox label::before {
  content: "";
  display: inline-block;
  position: absolute;
  width: 17px;
  height: 17px;
  left: 0;
  margin-left: 0px;
  border: 1px solid #cccccc;
  border-radius: 3px;
  background-color: #fff;
  -webkit-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
  -o-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
  transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
}
.panel-login .checkbox label::after {
  display: inline-block;
  position: absolute;
  width: 16px;
  height: 16px;
  left: 0;
  top: 0;
  margin-left: 0px;
  padding-left: 3px;
  padding-top: 1px;
  font-size: 11px;
  color: #555555;
}
.panel-login .checkbox input[type="checkbox"] {
  opacity: 0;
}
.panel-login .checkbox input[type="checkbox"]:focus + label::before {
  outline: thin dotted;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.panel-login .checkbox input[type="checkbox"]:checked + label::after {
  font-family: 'FontAwesome';
  content: "\f00c";
}
.panel-login>.panel-heading .tabs{
  padding: 0;
}
.panel-login h2{
  font-size: 20px;
  font-weight: 300;
  margin: 30px;
}
.panel-login>.panel-heading {
  color: #848c9d;
  background-color: #e8e9ec;
  border-color: #fff;
  text-align:center;
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px;
  border-top-left-radius: 0px;
  border-top-right-radius: 0px;
  border-bottom: 0px;
  padding: 0px 15px;
}
.panel-login .form-group {
  padding: 0 30px;
}
.panel-login>.panel-heading .login {
  padding: 20px 30px;
  border-bottom-leftt-radius: 5px;
}
.panel-login>.panel-heading .register {
  padding: 20px 30px;
  background: #2d3b55;
  border-bottom-right-radius: 5px;
}
.panel-login>.panel-heading a{
  text-decoration: none;
  color: #666;
  font-weight: 300;
  font-size: 16px;
  -webkit-transition: all 0.1s linear;
  -moz-transition: all 0.1s linear;
  transition: all 0.1s linear;
}
.panel-login>.panel-heading a#register-form-link {
  color: #fff;
  width: 100%;
  text-align: right;
}
.panel-login>.panel-heading a#login-form-link {
  width: 100%;
  text-align: left;
}

.panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] {
  height: 45px;
  border: 0;
  font-size: 16px;
  -webkit-transition: all 0.1s linear;
  -moz-transition: all 0.1s linear;
  transition: all 0.1s linear;
  -webkit-box-shadow: none;
  box-shadow: none;
  border-bottom: 1px solid #e7e7e7;
  border-radius: 0px;
  padding: 6px 0px;
}
.panel-login input:hover,
.panel-login input:focus {
  outline:none;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
  border-color: #ccc;
}
.btn-request {
  background-color: blue;
  outline: none;
  color:blue;
  font-size: 14px;
  height: auto;
  font-weight: normal;
  padding: 14px 0;
  text-transform: uppercase;
  border: none;
  border-radius: 0px;
  box-shadow: none;
}
.btn-request:hover,
.btn-request:focus {
  color: blue;
  background: -webkit-linear-gradient(left, #22d686, #24d3d3);
  background: linear-gradient(to right, #22d686, #24d3d3);
.forgot-password {
  text-decoration: underline;
  color:blue;
}

</style>

<link rel="stylesheet" href="btstrap/css/bootstrap.min.css">
<script src="js/jquery.min.js"> </script>

<script src="js/bootstrap.min.js"> </script> 

<body>

<div class="container">


   <div class="row">
   <div class="  col-xs-2 col-xs-offset-1 " >
<a href="#">
 <img src="images/logo.png" style="size: 100px;height: 100px">  </a>
</div>


</div>
<br>
<br>

<div class="row">
<br>

<div class="col-md-6 col-md-offset-3">
   <div class="panel panel-login"><button style="padding-right:20px;padding-top: 20px; " class="close"><a href="index.jsp">&times;</a></button>
			
        <div class="panel-body">    
          <div class="row">
          
            <div class="col-lg-12">
        
<h1> <center><span class="glyphicon glyphicon-edit "></span>   Want an    Appointment??</h1></center>

<form id="login-form" method="post">
<div class="form-group"  >
<span class="glyphicon glyphicon-user"></span> <br>
<input type="text" name="name" placeholder="Name"    class="form-control" value="">

</div>
<div class="form-group">
<span class="glyphicon glyphicon-phone"></span> <br>
<input type="text" name="phone" value=""  class="form-control" placeholder="Contact No." >
</div>
<div class="form-group">
<span class="glyphicon glyphicon-home"></span><br>
<input type="text" name="address" value=""  class="form-control" placeholder="Address" >
</div>
<div class="form-group">
<span class="glyphicon glyphicon-envelope"></span> <br>
<input type="email" name="email" value=""  class="form-control" placeholder="E-mail Id" >
</div>
<div class="form-group">
<span class="glyphicon glyphicon-list-alt"></span> <br>
<input type="text" name="purpose" value=""  class="form-control" placeholder="Purpose" >
</div>
<div class="form-group"> <span class="glyphicon glyphicon-user"></span><span class="glyphicon glyphicon-user"></span><span class="glyphicon glyphicon-user"></span><br><br>
<select class="form-control" id="category1" name="category1" required="">
                                                    <option value="category1"> WHOM DO YOU WANT TO MEET??</option>
													<option value="category1">Manager1</option>
													<option value="category1">Manager2</option>
													<option value="category1">3</option>
													<option value="category1">4</option>
													<option value="category1">5</option>
													<option value="category1">6</option>
													<option value="category1">7</option>
												</select>
</div>
<br>
  <div class="col-s-5 form-group pull-right">     
                        <input type="submit" name="request" id="login-request"  class="form-control btn btn-success btn btn-request" value="SUBMIT REQUEST">
                  </div>
</form>

</div>
</div>
</div>

</div>



</div>
</div>



</div>
<br>
<br>
<br>
</body>
</html>