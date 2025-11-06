<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="style.css">

</head>
<body>
<h2>Student Registration</h2>

<form action="register" method="post">
    Name: <input type="text" name="name"><br><br>
    Email: <input type="email" name="email"><br><br>
    Password: <input type="password" name="pass"><br><br>
    City: <input type="text" name="city"><br><br>

    <input type="submit" value="Register">
</form>

</body>
</html>