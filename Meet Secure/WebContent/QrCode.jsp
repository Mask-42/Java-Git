<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>QR Code in Java Servlet</title>
</head>
<body>
	
	<form action="QrCodeServlet" method="get">
		<p>Enter Text to create QR Code</p>
		<input type="text" name="qrtext" />
		<input type="submit" value="Generate QR Code" />
	</form>
</body>
</html>