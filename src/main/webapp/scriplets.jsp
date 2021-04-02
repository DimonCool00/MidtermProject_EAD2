<%@ page import="com.example.MidtermProject_EAD2.HelloServlet" %><%--
  Created by IntelliJ IDEA.
  User: smird
  Date: 29.03.2021
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test pages</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="{% static 'products/css/style.css' %}">
    <link rel="stylesheet" href="{% static 'css/main.css' %}">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <!-- icons -->
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mNavbar"
     style="color: black; height: auto;">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link" href="RoomServlet">Rooms</a>
            </li>
        </ul>
        <div class="container h-100" id="search_feild" style="width: 500px;">
            <div class="d-flex justify-content-center h-80">
                <div class="searchbar">
                    <input class="search_input" type="text" name="" placeholder="Search...">
                    <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
                </div>
            </div>
        </div>
        <ul class="nav navbar-nav navbar-right ml-auto">
            <li class="nav-item">
                <a href="login.jsp" class="btn btn-primary get-started-btn mt-1 mb-1">Login</a>
            </li>
            <li class="nav-item">
                <a href="registaration.jsp" class="btn btn-primary get-started-btn mt-1 mb-1">Sign up</a>
            </li>
        </ul>
        </li>
        </ul>
    </div>
</nav>
<div class="jumbotron" style="  margin-bottom: 0rem;">
    <%--This first subtask when we use scriplets --%>
    <h3>Use of scriptlet in JSP</h3>
        Active date: <%= (new java.util.Date()).toLocaleString()%>
    <%! int stan=10;
        int vip=5;
        int lux=6;
        int presidental = 2;
        int cotege = 4; %>
        <% out.println("<br>" + "We have Standard Room: " +stan+ "<br>" + "Vip Room: " +vip+ "<br>" + "Lux room: " + lux+ "<br>" + "Presidential Room: " + presidental + "<br>" + "Cottege: " + cotege + "<br>");
        out.println("Total we present: " + (stan + vip + lux + presidental + cotege) + " rooms in our service");
    %>
    <%--This end of test scriplets in jsp --%>
        <h3>Go to show implict objects!</h3>
    <form action="implict.jsp">
        <p>Please enter your name:</p>
        <input type="text" name="customername">
        <input type="submit" value="Go">
    </form>
</div>


</body>
</html>
