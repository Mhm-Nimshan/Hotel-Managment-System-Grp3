<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- header-->
<%@include file="header.jsp"%>

<body id="home">



<!--=============================================-->
<!--===================header====================-->

<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top" style="position: absolute; background: transparent;">

    <div class="container nav_bar_container">

        <a href="/home" class="navbar-brand"><img src="images/logo.jpg" class="img-responsive logo" alt=""></a>

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

        <div class="carousel-caption" style="padding-top: 7%;">
            <h1 class="heading">REGISTER</h1>
                   <br>

                    <form:form method="post" action="/create-customer">
                      <div class="form-group">
                        <label style="color: #000000;">Name:</label>
                        <form:input path="name" class="form-control"/>
                      </div>

                      <div class="form-group">
                        <label style="color: #000000;">Email:</label>
                        <form:input path="email" class="form-control"/>
                      </div>

                      <div class="form-group">
                      <label style="color: #000000;">Address:</label>
                      <form:input path="address" class="form-control"/>
                    </div>

                    <div class="form-group">
                      <label style="color: #000000;">Phone:</label>
                      <form:input path="phone" class="form-control"/>
                    </div>

                       <div class="form-group">
                          <label style="color: #000000;">Password:</label>
                          <form:input path="password" class="form-control"/>
                        </div>

                       <button type="submit" class="btn btn-default custom_btn" style="width: 100%;" value="Create">REGISTER NOW</button>

                    </form:form>
          </div>
    </div>

</header>



<!--=============================================-->
<!--===================scroll top====================-->

<div class="scroll-top-wrapper">
<span class="scroll-top-inner">
<i class="glyphicon glyphicon-arrow-up"></i>
</span>
</div>

<!--=============================================-->
<!--===================scroll top====================-->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

<!-- Script to Activate the Carousel -->
<script>
      $('.carousel').carousel({
          interval: 5000 //changes the speed
      })
  </script>

<!-- scroll top -->
<script src="js/scroll-top.js"></script>
<!-- scroll top -->


<!--smooth scroll-->
<script>
      $(document).ready(function(){
          // Add smooth scrolling to all links
          $("a").on('click', function(event) {

              // Make sure this.hash has a value before overriding default behavior
              if (this.hash !== "") {
                  // Prevent default anchor click behavior
                  event.preventDefault();

                  // Store hash
                  var hash = this.hash;

                  // Using jQuery's animate() method to add smooth page scroll
                  // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
                  $('html, body').animate({
                      scrollTop: $(hash).offset().top
                  }, 800, function(){

                      // Add hash (#) to URL when done scrolling (default click behavior)
                      window.location.hash = hash;
                  });
              } // End if
          });
      });
  </script>
<!--smooth scroll-->

</body>
</html>