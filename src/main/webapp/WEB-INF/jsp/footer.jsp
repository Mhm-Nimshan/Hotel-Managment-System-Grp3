

<!--=============================================-->
<!--===================footer====================-->
<br>
<br>

<!--footer section-->

<div class="row margin_auto footer_row">

    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align: center;">
                <img src="images/footer_logo.jpg" alt="" class="img-responsive footer_logo center-block">

                <p style="color: #ffffff;">
                    <small>Copyright © 2021 - Tourism Management System</small>
                </p>
                <br>
    </div>

</div>


<!--footer section-->


<!--=============================================-->
<!--===================footer====================-->







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
