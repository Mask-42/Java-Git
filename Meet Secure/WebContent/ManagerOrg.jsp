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
<script src="js/jquery.min.js"> </script>

<script src="js/bootstrap.min.js"> </script> 
<body>
<div class="container-fluid">
<div class="row">
<div class="  col-xs-2 col-xs-offset-1 " >
<a href="#">
 <img src="images/logo.png" style="size: 70px;height: 70px">  </a>
</div>
 
  
 <div class="col-xs-5 col-xs-offset-4">
    <div class="collapse navbar-collapse "style="font-size: 20px;"> 
  
              <ul class="nav navbar-nav navbar-center  navbar-border"   >
         
                <li ><a href=""><p>Logs</p></a></li>
               <li ><a href=""><p>Appointments</p></a></li>
            
                <li><a href="">Logout</a></li>
               
              </ul>
            </div>
          
          </div>
       

</div>


<br>
<br>

<div class="row">
<div class="col-md-offset-1 col-md-10">
<div class="container-subb">
<br>
<h2><center> Welcome Manager!!! </center></h2>
</div></div>


</div>
<br>
<br>
<br>
</div>
</body>
</html>