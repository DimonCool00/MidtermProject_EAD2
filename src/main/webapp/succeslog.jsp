<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: smird
  Date: 14.03.2021
  Time: 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="{% static 'products/css/style.css' %}">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
    <body>
    <table style="with: 50%">
        <tr><td>
            <% String username = request.getParameter("username"); %>
            <a>Welcome   <% out.println(username); %> User! You have logged in on out website.</a></td></tr>
    </table>
    <%

        username = request.getParameter("username");
        String email = request.getParameter("email");
        String sessionID = null;
        Cookie[] cookies = request.getCookies();
        if(cookies !=null){
            for(Cookie cookie : cookies){
                if(cookie.getName().equals("Dmitry")) username = cookie.getValue();
                if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
            }
        }
    %>
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
                    <a href="login.jsp" class="btn btn-primary get-started-btn mt-1 mb-1">Welcome, <%=username %></a>
                </li>
                <li class="nav-item">
                    <a href="LogoutServlet" class="btn btn-primary get-started-btn mt-1 mb-1">Logout</a>
                </li>
            </ul>
            </li>
            </ul>

        </div>
    </nav>
    <h3>LOGIN SUCCES!</h3>
        <a href="index.jsp">Home</a>
        <div class="container emp-profile">
        <div class="card bg-light">
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-img">
                        <img src="#" alt="MyProfileImage"/>
                        <div class="">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="profile-head">
                        <h5>
                            <%=username %>
                        </h5>
                        <h6>
                            User
                        </h6>
                        <p class="text-center">We welcome you to our site, now you have a profile and you can reserve rooms on our hotel.</p>
                        <p class="proile-rating">RANKINGS : <span>9/10</span></p>
                        <p class="text-center">Hi <%=username %>, Login successful. Your Session ID=<%=sessionID %></p>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="tab-content profile-tab" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>UserName:</label>
                                </div>
                                <div class="col-md-6">
                                    <p><%=username%></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Name</label>
                                </div>
                                <div class="col-md-6">
                                    <p>Dmitry</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Email</label>
                                </div>
                                <div class="col-md-6">
                                    <p>smirdimon2000@mail.ru</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Phone</label>
                                </div>
                                <div class="col-md-6">
                                    <p>87054664803</p>
                                </div>
                                <div>
                                    <a class="btn btn-primary" href="addroom.jsp">Add New Room</a>
                                </div>
                                <c:forEach var="room" items="${RoomList}">
                                    <ul>
                                        <li> <c:out value="${room.roomname}"/></li>
                                        <li> <c:out value="${room.description}"/></li>
                                    </ul>

                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
