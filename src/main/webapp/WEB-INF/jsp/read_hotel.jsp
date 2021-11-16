<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- header-->
<%@include file="header.jsp"%>

<body id="home">



<!--=============================================-->
<!--===================header====================-->

<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top" style="position: absolute;">

    <div class="container nav_bar_container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <a class="navbar-brand"><img src="images/logo.jpg" class="img-responsive logo" alt=""></a>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right manu_ul">
                <li><a href="/admin-read-customer">CUSTOMERS</a></li>
                <li><a href="/read-employee">EMPLOYEES</a></li>
                <li><a href="/read-tour">PACKAGES</a></li>
                <li class="active"><a href="/read-hotel">HOTELS</a></li>
                <li><a href="/read-feedback">FEEDBACKS</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" style="padding-top: 20px; padding-bottom: 20px;"><img src="images/user.png" alt="" style="width: 30px;">
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="/edit-profile">PROFILE</a></li>
                      <li><a href="/home">SIGN OUT</a></li>
                    </ul>
                  </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Full Page Image Background Carousel Header -->
<header id="myCarousel" class="carousel slide carousel-fade inner_carousel">

    <!-- Wrapper for Slides -->
    <div class="carousel-inner">
        <div class="item active">
            <div class="fill" style="background-image:url('images/package.jpg');"></div>
        </div>
    </div>

</header>


<!--=============================================-->
<!--===================header====================-->

<br>
<div class="container">

<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
       <h1 class="heading">All Hotels</h1>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <a href="/create-hotel"><button class="btn btn-default custom_btn pull-right"style="width: auto;">ADD NEW HOTEL</button></a>
    </div>
</div>
<div class="clearfix"></div>
<br>


    <table width="100%" class="table">
    <thead>
        <tr>
            <th>Id No</th>
            <th>Hotel Name</th>
            <th>Hotel Hotline</th>
            <th>Hotel Address</th>
            <th>Hotel Email</th>
        </tr>
        </thead>
         <tbody>
        <c:forEach var="hotel" items="${hotels}">
            <tr>
                <td>${hotel.id}</td>
                <td>${hotel.hotel_name}</td>
                <td>${hotel.hotel_address}</td>
                <td>${hotel.hotline}</td>
                <td>${hotel.email}</td>
                <td><a href="/update-hotel/${hotel.id}"><button class="btn btn-default custom_btn"style="width: auto;">UPDATE</button></a></td>
                <td><a href="/delete-hotel/${hotel.id}"><button class="btn btn-default custom_btn"style="width: auto;">DELETE</button></a></td>
            </tr>
        </c:forEach>
         </tbody>
    </table>
<br/>

</div>

<!-- Footer-->
<%@include file="footer.jsp"%>
