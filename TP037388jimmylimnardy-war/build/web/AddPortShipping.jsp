<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Add Shipping</title>
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

    text_color{
        color:red;
    }

    .align {
      display: inline-block;
      width: 150px;
      float:left;
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
  <strong>Add New Shipping Request<br /></strong><br />
  <form action="" method="post">
    <span class="align">Departure Port</span>
    <select id="dPort" name="dPort" class="align">
        <option value="Port A">Port A</option>
        <option value="Port B">Port B</option>
        <option value="Port C">Port C</option>
    </select><br><br>
    <span class="align">Arrival Port</span>
    <select id="aPort" name="aPort" class="align">
        <option value="Port A">Port A</option>
        <option value="Port B">Port B</option>
        <option value="Port C">Port C</option>
    </select><br><br>
    <span class="align">Shipping Date</span>
    <input type="date" name="sDate" class="align"><br><br>
    <span class="align">Shipping Weight</span>
    <input type="text" class="align"><br><br>
    <span class="align">Shipping Details</span>
    <textarea rows="4" cols="10" class="align"></textarea><br><br><br /><br /><br />
    <span class="align">Estimated Cost</span>
    <input type="text" class="align" disabled>&nbsp<text_color>*</text_color><br><br>
    <span class="align">Estimated Duration</span>
    <input type="text" class="align" disabled>&nbsp<text_color>*</text_color><br><br>
    <span class="align">Approval</span>
    <select id="approval" name="approval" class="align">
        <option value="Approved">Approved</option>
        <option value="Pending">Pending</option>
        <option value="Shipping">Shipping</option>
        <option value="Delivered">Delivered</option>
        <option value="Rejected">Rejected</option>
    </select><br><br>
    <span class="align">Container</span>
      <select id="container" name="container" class="align">
        <option value="1">1</option>
        <option value="2">2</option>
    </select><br><br>
      <p><text_color>* Auto Calculated</text_color></p>
    <input type="submit" value="Submit">
    <input type="button" onclick="window.location='Menu.jsp';" value="Cancel">
  </form>
</body>

</html>