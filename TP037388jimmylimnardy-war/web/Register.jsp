<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Customer Registration</title>
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
  <h2>Customer Registration</h2>
  <form action="" method="post">
    <span class="align">Company Name:</span>
    <input type="text" class="align"><br><br>
    <span class="align">Contact Number:</span>
    <input type="text" class="align"><br><br>
    <span class="align">Email Address:</span>
    <input type="text" class="align"><br><br>
    <span class="align">Person in Charge:</span>
    <input type="text" class="align"><br><br>
    <span class="align">Password:</span>
    <input type="password" class="align"><br><br>
    <input type="submit" value="Register">
    <input type="reset" value="Reset">
  </form>
  <input type="button" onclick="window.location='Login.jsp';" value="Cancel">
</body>

</html>
