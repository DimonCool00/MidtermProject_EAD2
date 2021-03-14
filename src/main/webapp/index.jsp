<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
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
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<div class="jumbotron" style="  margin-bottom: 0rem;">
    <h1 class="display-4" style="text-align: center;">Hello, Guest!<i class="fas fa-user"></i></h1>
    <p class="lead">You welcome the HotelManagment System.<i class="fas fa-bed"></i>.Dear guest on this site you can see all the current photos of the hotel, its rooms, see all the rooms that are available at the moment. We also officially cooperate with the Rixos hotel and all information is relevant.</p>
    <p class="lead">Looking for where to stay in Dubai? You don't have to search anymore. The Rixos Premium Dubai is an elite hotel that will help you experience Dubai in the best possible way.</p>
    <p class="lead">Rooms are equipped with flat screen TVs, air conditioning and minibars, and guests can be online at any time thanks to the free Wi-Fi that the hotel offers.</p>
    <p class="lead">Rixos Premium Dubai offers room service and concierge services to make your stay even more enjoyable. There is also a pool and breakfast. For those arriving at Rixos Premium Dubai by car, free parking is available.</p>
    <p class="lead">The proximity to some of Dubai's most popular attractions, such as the Flying Cup (0.4 km) and the Dubai Water Canal (1.0 km), makes Rixos Premium Dubai a very attractive tourist destination.</p>
    <p class="lead">While in Dubai, you may want to try some restaurants near Rixos Premium Dubai, such as Buddha-Bar (1.1 km), Barasti Beach Bar (1.6 km) and Observatory Bar & Grill (1.4 km) ...</p>
    <p class="lead">Most importantly, while staying at Rixos Premium Dubai, you can easily visit many of Dubai's great attractions, such as Al Jaber Gallery, Alserkal Avenue Arts District and Gulf Photo Plus, which are popular art galleries.</p>
    <p class="lead">We are confident that you will love Rixos Premium Dubai. While staying here, you will be able to see everything that Dubai has to offer visitors to the city.</p>
</div>

</body>
</html>
