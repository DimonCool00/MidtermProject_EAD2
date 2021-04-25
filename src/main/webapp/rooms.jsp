<%--
  Created by IntelliJ IDEA.
  User: smird
  Date: 14.03.2021
  Time: 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page isELIgnored="false" %>
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
<% String username = request.getParameter("username"); %>
<a>Welcome   <% out.println(username); %> User! You have logged in on out website.</a>
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
                        <a class="nav-link" href="#">Rooms</a>
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
                        <a href="login.jsp" class="btn btn-primary get-started-btn mt-1 mb-1">Welcome, <%=username%></a>
                    </li>
                    <li class="nav-item">
                        <a href="LogoutServlet" class="btn btn-primary get-started-btn mt-1 mb-1">Logout</a>
                    </li>
                </ul>
                </li>
                </ul>

            </div>
        </nav>
<main>
  <div class="background" style="background-color: #ccc"></div>
    <div class="background3">
        <div class="jumbotron">
            <h1 class="display-4" style="text-align: center;">Hello, !<i class="fas fa-user"></i></h1>
            <p class="lead"> You welcome the HotelManagement System.<i class="fas fa-shopping-cart"></i>.Dear guest, all our rooms are presented here with detailed descriptions and photos for them, you can also book the desired room for the desired date and then pay for it.</p>
            <a class="btn btn-primary" href="addroom.jsp">Add New Room</a>
        </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-4 filter {{ product.category }}">
                        <div class="my-flip-container">
                            <div class="my-flip-inner my-flip-right">
                                <div class="my-flip-inner-wrapper">
                                    <div class="my-flip-side my-flip-front">
                                        <div class="my-flip-image my-flip-image--1">
                                            <center><img src=""></center>
                                        </div>
                                        <div class="my-flip-details">
                                            <h4 class="my-flip-heading">Lux Room</h4>
                                            <div class="my-flip-text">
                                                <p>for 3-4 people.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="my-flip-side my-flip-back my-flip-back-1">
                                        <div class="my-flip-back-inner">
                                            <div class="my-flip-price">
                                                <h3>Lux Room</h3>
                                            </div>
                                            <div class="my-flip-back-text">
                                                <ul>
                                                    <li>Best for family holiday.</li>
                                                    <li>150 000 KZT</li>
                                                    <li>7 days</li>
                                                    <li>8709921321</li>
                                                    <li>Updates for 1 year</li>
                                                </ul>
                                            </div>
                                            <div class="my-flip-btn-box"><a href="#" class="my-flip-btn">More Info</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-4 filter {{ product.category }}">
                        <div class="my-flip-container">
                            <div class="my-flip-inner my-flip-right">
                                <div class="my-flip-inner-wrapper">
                                    <div class="my-flip-side my-flip-front">
                                        <div class="my-flip-image my-flip-image--1">
                                            <center><img src=""></center>
                                        </div>
                                        <div class="my-flip-details">
                                            <h4 class="my-flip-heading">Presidential Room</h4>
                                            <div class="my-flip-text">
                                                <p>1-2 very important person.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="my-flip-side my-flip-back my-flip-back-1">
                                        <div class="my-flip-back-inner">
                                            <div class="my-flip-price">
                                                <h3>Presidential Room</h3>
                                            </div>
                                            <div class="my-flip-back-text">
                                                <ul>
                                                    <li>Best for businessman and important person.</li>
                                                    <li>300 000 KZT</li>
                                                    <li>3 days</li>
                                                    <li>8701313213</li>
                                                    <li>Updates for 1 year</li>
                                                </ul>
                                            </div>
                                            <div class="my-flip-btn-box"><a href="#" class="my-flip-btn">More Info</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-4 filter">
                        <div class="my-flip-container">
                            <div class="my-flip-inner my-flip-right">
                                <div class="my-flip-inner-wrapper">
                                    <div class="my-flip-side my-flip-front">
                                        <div class="my-flip-image my-flip-image--1">
                                            <center><img src=""></center>
                                        </div>
                                        <div class="my-flip-details">
                                            <h4 class="my-flip-heading">Standard Room</h4>
                                            <div class="my-flip-text">
                                                <p>Best for 2-3 people, who want holiday.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="my-flip-side my-flip-back my-flip-back-1">
                                        <div class="my-flip-back-inner">
                                            <div class="my-flip-price">
                                                <h3>Standard</h3>
                                            </div>
                                            <div class="my-flip-back-text">
                                                <ul>
                                                    <li>Very clear and good place.</li>
                                                    <li>100 000 KZT</li>
                                                    <li>5 days</li>
                                                    <li>87008762113</li>
                                                    <li>Updates for 1 year</li>
                                                </ul>
                                            </div>
                                            <div class="my-flip-btn-box"><a href="#" class="my-flip-btn">More Info</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 mb-4 filter {{ product.category }}">
                        <div class="my-flip-container">
                            <div class="my-flip-inner my-flip-right">
                                <div class="my-flip-inner-wrapper">
                                    <div class="my-flip-side my-flip-front">
                                        <div class="my-flip-image my-flip-image--1">
                                            <center><img src=""></center>
                                        </div>
                                        <div class="my-flip-details">
                                            <h4 class="my-flip-heading">Standart Room</h4>
                                            <div class="my-flip-text">
                                                <p>Best for 2-3 people, who want holiday.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="my-flip-side my-flip-back my-flip-back-1">
                                        <div class="my-flip-back-inner">
                                            <div class="my-flip-price">
                                                <h3>Standard</h3>
                                            </div>
                                            <div class="my-flip-back-text">
                                                <ul>
                                                    <li>Very clear and good place.</li>
                                                    <li>100 000 KZT</li>
                                                    <li>5 days</li>
                                                    <li>87008762113</li>
                                                    <li>Updates for 1 year</li>
                                                </ul>
                                            </div>
                                            <div class="my-flip-btn-box"><a href="#" class="my-flip-btn">More Info</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 mb-4 filter {{ product.category }}">
                        <div class="my-flip-container">
                            <div class="my-flip-inner my-flip-right">
                                <div class="my-flip-inner-wrapper">
                                    <div class="my-flip-side my-flip-front">
                                        <div class="my-flip-image my-flip-image--1">
                                            <center><img src=""></center>
                                        </div>
                                        <div class="my-flip-details">
                                            <h4 class="my-flip-heading">GOOD</h4>
                                            <div class="my-flip-text">
                                                <p></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="my-flip-side my-flip-back my-flip-back-1">
                                        <div class="my-flip-back-inner">
                                            <div class="my-flip-price">
                                                <h3></h3>
                                            </div>
                                            <div class="my-flip-back-text">
                                                <ul>
                                                    <li>This is</li>
                                                    <li></li>
                                                    <li><a href=""></a></li>
                                                    <li></li>
                                                    <li>Updates for 1 year</li>
                                                </ul>
                                            </div>
                                            <div class="my-flip-btn-box"><a href="#" class="my-flip-btn">More Info</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <c:forEach var="room" items="${RoomList}">
                    <ul>
                        <li> <c:out value="${room.roomname}"/></li>
                        <li> <c:out value="${room.description}"/></li>
                    </ul>

                </c:forEach>
                <a class="btn btn-primary" href="addroom.jsp">Add New Room</a>
            </div>
    </div>
    </main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
