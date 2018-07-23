<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
  <h1>Container Management System</h1>
  <h3>Login</h3>
  <form action="Login" method="post">
    Email Address:
    <input type="text" name="login_email"><br><br> Password:
    <input type="password" name="login_password"><br><br>
    <input type="submit" value="Login">
  </form>
  <a href="Register.jsp">Customer Registration</a>&nbsp &nbsp<a href="ForgotPassword.jsp">Forgot Password</a>
</body>

</html>