
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Firebase Try</title>
    </head>
    
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
</style>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<link rel="stylesheet" href="btstrap/css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
    
    <body> 
    <div class="row">
			<div class="  col-xs-2 col-xs-offset-1 ">
				<a href="index.jsp"> <img src="images/logo.png"
					style="size: 80px; height: 80px">
				</a>
			</div>


		</div>
		<br> <br>
<div class="container" style="background-color: white ; height: 1500px;width: 1500px ">
<button style="padding-right: 20px; padding-top: 20px;"
						class="close">
						<a href="index.jsp">&times;</a>
					</button>
<div style="padding-top: 30px;" class="row">	
		<div class="col-md-8 col-xs-offset-1">
		<h2> <center> Logs of meetings </center></h2>
		<br>
		<div class="table-responsive">
        <table class="table table-striped ">
        
       
            <thead>
                <tr>
                    <th>Name</th>
                    <th>E-mail Id</th>
                    <th>Contact</th>
                       <th>Address</th>
                          <th>Purpose</th>
                               <th>Date</th>
                                    <th>Manager-Name</th>
                                         <th>Meeting Time</th>
                                              <th>Meeting Over</th>
                                                   <th>Status</th>
                       
                         
                    
                </tr>
            </thead>   
               
            <tbody id="My_Table">
                 
            </tbody>
        </table> </div>
</div>
</div>
</div>


        <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
        <script type="text/javascript"> 
        
        var rootRef = firebase.database().ref().child("Log/");
        rootRef.orderByChild('ManagerName').on('child_added', function (snapshot) {

        		
            var name=snapshot.child("Name").val();
            var email=snapshot.child("Email").val();
            var contacts=snapshot.child("Contact").val();
            var address=snapshot.child("Address").val();
        	var date=snapshot.child("Date").val();
        	var managerName=snapshot.child("ManagerName").val();
        	var meetingover=snapshot.child("Meeting Over At").val();
        	var Purpose =snapshot.child("Purpose").val();
        	var stts=snapshot.child("Status").val();
        	var time=snapshot.child("Time").val();
            $("#My_Table").append("<tr> <td>"+ name + " </td> <td> "+ email +"  </td> <td> "+ contacts +"  </td> <td> "+address+" </td> <td> "+Purpose+" </td> <td> "+date+" </td> <td> "+managerName+" </td> <td> "+time+" </td> <td> "+meetingover +" </td> <td> "+stts + "</td> </tr>");
        });
        </script>
    </body>
</html>
