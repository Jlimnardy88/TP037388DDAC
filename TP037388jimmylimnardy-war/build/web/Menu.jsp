<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Menu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    .header_left {
      float: left;
      font-size: 25px;
    }

    .header_right {
      float: right;
      margin-right: 10px;
    }

    .search_container {
      float: left;
    }
  </style>
</head>

<body>
  <div>
    <span class="header_left">Container Management System</span>
    <div class="header_right">
      <div class="header_right">
        <div class="search_container">
          <form action="">
            <input type="text" placeholder="Search shipping..." name="search">
            <input type="submit" value="Search" />
          </form>
        </div> &nbsp
        <a href="">Profile</a> | <a href="Login.jsp">Logout</a>
      </div>
    </div>
  </div><br><br><br>
  <p>Hello @customer !</p>
  <div class="header_right">
    <input type="button" onclick="window.location='AddNewShipping.jsp';" value="Add New Shipping Request">
  </div>
</body>

</html>