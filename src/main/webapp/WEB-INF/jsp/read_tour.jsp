<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!-- header-->
<%@include file="update_page_header.jsp"%>

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
        <a class="navbar-brand"><img src="../images/logo.jpg" class="img-responsive logo" alt=""></a>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right manu_ul">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" style="padding-top: 20px; padding-bottom: 20px;"><img src="../images/user.png" alt="" style="width: 30px;">
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
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align: center;">
    <div style="position: absolute; top: 0px; width: 100%; height: 100%; z-index: 99; left: 0px; right: 0px;"></div>
        <form:form method="post" action="/my-tour/{id}">
            <form:input path="pkg_name" style="border: transparent; font-size: 20px; text-align: center; font-weight: 900; text-transform: uppercase;"/>
            <div class="clearfix"></div>
            <form:input path="pkg_description" style="border: transparent; font-size: 16px; text-align: center;"/>
        </form:form>
    </div>
    <div class="clearfix"></div>
    <br>
    <br>
</div>


   <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
           <img src="../images/02.jpg" alt="" class="img-responsive center-block">
        </div>

        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                <div class="content_box">
                    <div style="position: absolute; top: 20px; width: 461px; height: 150px; z-index: 99;"></div>
                       <form:form method="post" action="/my-tour/${id}">
                           <table>
                               <tr>
                                   <td style="padding-bottom: 15px;">Package Name: </td>
                                   <td><form:input path="pkg_name" style="border: transparent; font-size: 16px; font-weight: 900; margin-bottom: 15px;"/></td>
                               </tr>
                               <tr>
                                   <td style="padding-bottom: 15px;">Package Status: </td>
                                   <td><form:input path="status" style="border: transparent; font-size: 16px; font-weight: 900; margin-bottom: 15px;"/></td>
                               </tr>
                               <tr>
                                   <td style="padding-bottom: 15px;">Package Info: </td>
                                   <td><form:input path="pkg_description" style="border: transparent; font-size: 16px; font-weight: 900; margin-bottom: 15px;"/></td>
                               </tr>
                               <tr>
                                   <td style="padding-bottom: 15px;">Starting Price: </td>
                                   <td><form:input path="price" style="border: transparent; font-size: 16px; font-weight: 900; margin-bottom: 15px;"/></td>
                               </tr>

                               <tr>
                                   <td style="padding-bottom: 15px;">Feedback: </td>
                                   <td><form:input path="feedback"  style="margin-bottom: 15px; height: 90px; width: 350px;"/></td>
                               </tr>

                               <tr>
                                   <td></td>
                                   <td>
                                   <button class="btn btn-default custom_btn" data-aos="fade-up" style="width: auto;"type="submit" value="Give Feedback">SUBMIT YOUR FEEDBACK</button>
                                   </td>

                               </tr>
                           </table>
                       </form:form>

                       <form:form method="post" action="/book-tour/${id}">
                       <div class="clearfix"></div>
                           <br>
                           <br>
                       <button class="btn btn-default custom_btn" data-aos="fade-up" style="width: auto; position: absolute; right: 45px; top: 20px;"  type="submit" value="Book">BOOK NOW</button>
                       </form:form>
                </div>

       </div>

   </div>

</div>

<!-- Footer-->
<%@include file="update_page_footer.jsp"%>

