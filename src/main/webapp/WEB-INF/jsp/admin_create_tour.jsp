<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




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
                <li class="active"><a href="/read-tour">PACKAGES</a></li>
                <li><a href="/read-hotel">HOTELS</a></li>
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
<br>

<!--=============================================-->
<!--===================body====================-->

<div class="container">

<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <img src="images/c_employee.jpg" class="img-responsive center-block" alt="">
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding-left: 60px; padding-right: 60px;">
       <h1 class="heading">Create Package</h1>
       <br>


       <form:form method="post" action="/create-tour">
           <table>
               <div class="form-group">
                   <label>Package Name: </label>
                   <form:input path="pkg_name" class="form-control"/>
               </div>
               <!--<div class="form-group">
                   <label>Package Status: </label>
                   <form:input path="status" class="form-control"/>
               </div>-->
               <div class="form-group">
                   <label>Package Info: </label>
                   <form:input path="pkg_description" class="form-control"/>
               </div>
               <div class="form-group">
                   <label>Starting Price: </label>
                   <form:input path="price" class="form-control"/>

               <div class="form-group">
                     <label>Package Status: </label>
                     <select name="status" class="form-control" >
                       <option value="Available">Available</option>
                       <option value="Unavailable">Unavailable</option>
                     </select>
                 </div>

               </div>
               <div class="form-group">
                   <label>Hotel Name:</label>
                    <select name="hotel" class="form-control">
                        <c:forEach items="${hotels}" var="hotel">
                            <option value="${hotel.id}">
                                ${hotel.hotel_name}
                            </option>
                        </c:forEach>
                    </select>

               </div>

                <button type="submit" class="btn btn-default custom_btn" style="width: auto;" value="Create">ADD NEW PACKAGE</button>

           </table>
       </form:form>

    </div>
</div>
<div class="clearfix"></div>
</div>


<!-- Footer-->
<%@include file="footer.jsp"%>

