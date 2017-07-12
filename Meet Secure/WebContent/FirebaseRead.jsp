
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
                    <td>College</td>
                </tr>
            </thead>      
            <tbody id="My_Table">
                
            </tbody>
        </table>


        <script src="https://www.gstatic.com/firebasejs/4.1.3/firebase.js"></script>
        <script>
            // Initialize Firebase
            var config = {
                apiKey: "AIzaSyB2hXw6X0XRaZuQieeAC5Fcd5G4IDyaiDc",
                authDomain: "fir-try-ad905.firebaseapp.com",
                databaseURL: "https://fir-try-ad905.firebaseio.com",
                projectId: "fir-try-ad905",
                storageBucket: "fir-try-ad905.appspot.com",
                messagingSenderId: "263588420174"
            };
            firebase.initializeApp(config);
        </script>

        <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
        <script> 
        
        var rootRef = firebase.database().ref().child("User");

        rootRef.on("child_added",snap =>{    
            var name=snap.child("Name").val();
            var email=snap.child("Email").val();
            var college=snap.child("College").val();
            $("#My_Table").append("<tr> <td>"+ name + " </td> <td> "+ email +" </td> <td> "+ college+" </td> </tr>");
        });
        </script>
    </body>
</html>
