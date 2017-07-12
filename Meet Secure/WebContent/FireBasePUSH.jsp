<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


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
	<script type="text/javascript">
		var userRef = firebase.database().ref().child("ConfirmedAppointments/");
		alert(userRef);
		userRef.push({
			Name : 'Rohit Manhas',
			Address:'Pathankot',
			Contact:'7002354869',
			Email:'manhas_rohit@gmail.com',
			Purpose:'Taking Money',
			ManagerName:'Manpreet Shuann',
			Time:'13:15',
			Key:'-Komv8-7-SvKzrV6YUhq895',
			Date:'5/8/2017'
		});
	</script>

</body>
=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


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
	<script type="text/javascript">
		var userRef = firebase.database().ref().child("Users/");
		userRef.push({
			Username : "AdminSAM",
			Name : "SAM",
			Role : "Admin",
			Contact : "79869 71714",
			Address : "Chandigarh",
			Email : "meetsecure.sam@gmail.com",
			Password : "Mask-42/SAM"

		});
	</script>

</body>
>>>>>>> origin/master
</html>