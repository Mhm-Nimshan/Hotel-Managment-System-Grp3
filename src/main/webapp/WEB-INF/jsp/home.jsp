<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- header-->
<%@include file="header.jsp"%>

<body id="home">



<!--=============================================-->
<!--===================header====================-->

<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top">

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
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" style="padding-top: 20px; padding-bottom: 20px;"><img src="images/user.png" alt="" style="width: 30px;">
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="/login">LOGOUT</a></li>
                    </ul>
                  </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Full Page Image Background Carousel Header -->
<header id="myCarousel" class="carousel slide carousel-fade">

    <!-- Wrapper for Slides -->
    <div class="carousel-inner">
        <div class="item active">
            <div class="fill" style="background-image:url('images/slider01.jpg');"></div>
        </div>

        <div class="item">
            <div class="fill" style="background-image:url('images/slider02.jpg');"></div>
        </div>

        <div class="item">
            <div class="fill" style="background-image:url('images/slider03.jpg');"></div>
        </div>

        <div class="item">
            <div class="fill" style="background-image:url('images/slider04.jpg');"></div>
        </div>

        <div class="item">
            <div class="fill" style="background-image:url('images/slider05.jpg');"></div>
        </div>
    </div>

</header>


<!--=============================================-->
<!--===================header====================-->

<br>
<div class="container">

<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align: center;">
       <h1 class="heading">About us</h1>
       <p>
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
       </p>
       <br>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
        <img src="images/01.jpg" alt="" class="img-responsive center-block">
    </div>

    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">

        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <img src="images/02.jpg" alt="" class="img-responsive center-block">
       </div>

       <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
           <img src="images/03.jpg" alt="" class="img-responsive center-block">
      </div>

      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-top: 30px;">
         <img src="images/04.jpg" alt="" class="img-responsive center-block">
    </div>

    </div>


</div>

<br>
<br>

<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align: center;">
       <h1 class="heading">Tour Packages</h1>
       <p>
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
       </p>
       <br>
    </div>
    <div class="clearfix"></div>

       <c:forEach var="tour" items="${tours}">
           <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
               <img src="images/02.jpg" alt="" class="img-responsive center-block">
           </div>

           <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12" style="background-color: #eeeeee; padding: 15px; border-radius: 5px;">

               <h1 class="heading">${tour.pkg_name}</h1>
              <p>
                   ${tour.pkg_description}
              </p>

                <br>

                <a href="/my-tour/${tour.id}"><button class="btn btn-default custom_btn" data-aos="fade-up" style="width: auto;">VIEW PACKAGE DETAILS</button></a>

           </div>

           <div class="clearfix"></div>
           <br>

           </c:forEach>

</div>

<div class="clearfix"></div>

</div>

<!-- Footer-->
<%@include file="footer.jsp"%>
