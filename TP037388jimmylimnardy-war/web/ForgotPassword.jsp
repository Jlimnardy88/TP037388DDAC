<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Forgot Password</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    .align {
      display: inline-block;
      width: 150px;
    }
  </style>
</head>

<body>
  <h1>Container Management System</h1>
  <h2>Forgot Password</h2>
  <form action="" method="post">
    <span class="align">Email Address:</span>
    <input type="text" placeholder="user@email.com" class="align"><br><br>
    <span class="align">New Password:</span>
    <input type="password" class="align"><br><br>
    <input type="submit" value="Reset Password">
    <input type="button" onclick="window.location='Login.jsp';" value="Cancel">
  </form>

</body>

</html>