<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!-- header-->
<%@include file="update_page_header.jsp"%>

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
        <a class="navbar-brand"><img src="../images/logo.jpg" class="img-responsive logo" alt=""></a>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right manu_ul">
                <li><a href="/admin-read-customer">CUSTOMERS</a></li>
                <li><a href="/read-employee">EMPLOYEES</a></li>
                <li class="active"><a href="/read-tour">PACKAGES</a></li>
                <li><a href="/read-feedback">FEEDBACKS</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" style="padding-top: 20px; padding-bottom: 20px;"><img src="../images/user.png" alt="" style="width: 30px;">
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
            <div class="fill" style="background-image:url('../images/package.jpg');"></div>
        </div>
    </div>

</header>


<!--=============================================-->
<!--===================header====================-->

<br>

<!--=============================================-->
<!--===================body====================-->

<div class="container">

<div class="row">

    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

    <div class="row">

    <form:form method="post" action="/update-tour/${id}">

        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

            <h1 class="heading">ADD TOUR DETAILS</h1>
            <br>
            <div class="form-group">
               <label>Package Name: </label>
               <form:input path="pkg_name" class="form-control"/>
           </div>
           <div class="form-group">
               <label>Package Status: </label>
               <form:input path="status" class="form-control"/>
           </div>
           <div class="form-group">
               <label>Package Info: </label>
               <form:input path="pkg_description" class="form-control"/>
           </div>
           <div class="form-group">
               <label>Starting Price: </label>
               <form:input path="price" class="form-control"/>
           </div>

        </div>

        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <h1 class="heading">ADD HOTEL DETAILS</h1>
            <br>

             <div class="form-group">
               <label>Hotel Name: </label>
               <form:input path="hotel_name" class="form-control"/>
           </div>
           <div class="form-group">
               <label>Address: </label>
               <form:input path="hotel_address" class="form-control"/>
           </div>
           <div class="form-group">
               <label>Hotline: </label>
               <form:input path="hotline" class="form-control"/>
           </div>
           <div class="form-group">
               <label>Email: </label>
               <form:input path="email" class="form-control"/>
           </div>

        </div>

        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <br>
            <button type="submit" class="btn btn-default custom_btn center-block" style="width: auto;" value="Update">UPDATE TOUR</button>
        </div>

    </div>

 </form:form>


    </div>

</div>

</div>

<!-- Footer-->
<%@include file="update_page_footer.jsp"%>

