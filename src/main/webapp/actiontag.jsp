<%--
  Created by IntelliJ IDEA.
  User: smird
  Date: 02.04.2021
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div class="jumbotron">
    <jsp:useBean id="totalPrice" class="com.example.MidtermProject_EAD2.TestBean"/>
    <%
        int people = 2;
        int days = 5;
        String room = "lux";
        int people1 = 1;
        int days1 = 7;
        String room1 = "presidential";
        double res = totalPrice.CalculPrice(people,days,room);
        double res1 = totalPrice.CalculPrice(people1,days1,room1);
        out.print("Res of calculation Lux room is "+ res + "<br>");
        out.print("Res of calculation Presidential room is "+ res + "<br>");
    %>
    <jsp:setProperty name="totalPrice" property="name" value="DmitrySmirnov" />
    <jsp:setProperty name="totalPrice" property="id" value="1" />
    <jsp:getProperty name="totalPrice" property="id" />
    <jsp:getProperty name="totalPrice" property="name" />
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
