<%--
  Created by IntelliJ IDEA.
  User: smird
  Date: 14.03.2021
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="{% static 'products/css/style.css' %}">
    <link rel="stylesheet" href="{% static 'css/main.css' %}">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <!-- icons -->
</head>
<body>
<div class="container">
    <div class="card bg-light">
        <article class="card-body mx-auto" style="max-width: 400px;">
            <h4 class="card-title mt-3 text-center">Add New Room!</h4>
            <p class="text-center">Get started with new room in out Hotel!</p>
            <form action="AddRoomServlet" method="post">
                <p class="hint-text">Fill in this form to add new room!</p>
                <div class="form-group">
                    <input type="text" name="roomname" class="form-control" placeholder="RoomName" required="required">
                </div>
                <div class="form-group">
                    <input type="text" name="description" class="form-control" placeholder="SomeDescription" required="required">
                </div>
                <div class="form-group">
                    <input type="text" name="price" tabindex="1" class="form-control" placeholder="RoomPrice" value="">
                </div>
                <div class="form-group">
                    <input type="text" name="authornumber" class="form-control" placeholder="PhoneNumber" required="required">
                </div>
                <div class="form-group">
                    <input type="text" name="roomtype" class="form-control" placeholder="RoomType" required="required">
                </div>
                <div class="form-group">
                    <label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms &amp; Conditions</a></label>
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="AddRoom">
                <p> Check this room list,<a href="rooms.jsp">here!</a></p>
                <p><c:out value="${message}"/></p>
            </form>
        </article>
    </div> <!-- card.// -->
</div>
</body>
</html>
