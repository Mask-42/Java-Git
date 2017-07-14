
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Firebase Try</title>
    </head>
    <body>

        <table>
            <thead>
                <tr>
                    <td>Name</td>
                    <td>Email</td>
                    <td>Contacts</td>
                    
                </tr>
            </thead>      
            <tbody id="My_Table">
                
            </tbody>
        </table>


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

        <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
        <script> 
        
        var rootRef = firebase.database().ref().child("Users/");
        rootRef.orderByChild('Role').equalTo("Manager").on('child_added', function (snapshot) {
        		
            var name=snapshot.child("Name").val();
            var email=snapshot.child("Email").val();
            var contacts=snapshot.child("Contact").val();
            $("#My_Table").append("<tr> <td>"+ name + " </td> <td> "+ email +"  </td> <td> "+ contacts +" </td> </tr>");
        	var x=	new  XMLHttpRequest();
        	var url="./Act?id="+name;
        	x.open("GET",url,true);
        	x.send(null);
        
           // 
        });
        </script>
    </body>
</html>
