<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner">  
		<div class="header agileinfo-header"><!-- header -->
			<nav class="navbar navbar-default">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a href="#">Inter College Event</a></h1>
					</div> 
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-left"> 
							<li><a href="Default.aspx" class="w3ls-hover active">Home</a></li>
							<li><a href="admin.aspx" class="btn w3ls-hover">Admin</a></li>   
							<li><a href="staff.aspx" class="btn w3ls-hover">Staff</a></li>
							<li><a href="#" class="dropdown-toggle btn w3ls-hover" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Student <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="student.aspx">Login</a></li>
									<li><a href="student_register.aspx">Register</a></li>     
								</ul>
							</li>  
						 
						</ul>	   
						<div class="social-icon">
						 
						</div> 
						<div class="clearfix"> </div>
					</div><!-- //navbar-collapse --> 
				</div><!-- //container-fluid -->
			</nav>
		</div><!-- //header -->	
		<!-- banner-text -->
		<div class="banner-text"> 
			<div class="container">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="banner-w3lstext">
								<h3>Inter College Event Management System</h3>
							 	<div class="w3-button">
						       
						   
						    <div class="clearfix"> </div>

							</div>
							</div>
						</li>
						<li>
							<div class="banner-w3lstext">
								<h3>Inter College Event Management System</h3>
                                	<div class="w3-button">
						     
						     
						    <div class="clearfix"> </div>

							</div>
							</div>
						</li>
						<li>
							<div class="banner-w3lstext">
								<h3>Inter College Event Management System</h3>
                                	<div class="w3-button">
						       
						    
						    <div class="clearfix"> </div>

							</div>
							</div>
						</li>
					</ul> 
				</div> 	 
			</div>
		</div>
		<!-- //banner-text -->    
	</div>
	<!-- modal popup -->
<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header"> 
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					<h4 class="modal-title">Dream <span>Life</span></h4>
				</div> 
				<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="images/modal1.jpg" alt="" />
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque ac fermentum diam. Integer eu facilisis nunc, a iaculis felis. Pellentesque pellentesque tempor enim, in dapibus turpis porttitor quis. Suspendisse ultrices hendrerit massa. Nam id metus id tellus ultrices ullamcorper.  Cras tempor massa luctus, varius lacus sit amet, blandit lorem. Duis auctor in tortor sed tristique. Proin sed finibus sem</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
<!-- //modal popup -->

	<!-- //banner --> 
	<!-- banner-bottom -->
	<!-- //banner-bottom -->
<!--sevices-->
	<!--//sevices-->
<!-- stats -->
	<!-- //stats -->
	<!-- testimonials -->
<!-- //testimonials -->


<!-- footer start here -->
	<div class="footer-agile">
		<div class="container">
			<div class="footer-agilem">
				<div class="col-sm-8 col-xs-9 copy-w3lsright">
					<p>© 2020 Dream life. All rights reserved | Design by <a href="#"> Admin.</a></p>
				</div>
				 
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //footer end here -->

	<!-- FlexSlider --> 
	<script defer src="js/jquery.flexslider.js"></script>
		<script type="text/javascript">
		    $(window).load(function () {
		        $('.flexslider').flexslider({
		            animation: "slide",
		            start: function (slider) {
		                $('body').removeClass('loading');
		            }
		        });
		    });
		</script>
	<!-- End-slider-script --> 
<!-- Flexisel-js for-testimonials -->
<script type="text/javascript">
    $(window).load(function () {
        $("#flexiselDemo1").flexisel({
            visibleItems: 1,
            animationSpeed: 1000,
            autoPlay: false,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 640,
                    visibleItems: 1
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 1
                }
            }
        });

    });
					</script>
					<script type="text/javascript" src="js/jquery.flexisel.js"></script>
<!-- Flexisel-js for-testimonials -->

	
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
	    $('.counter').countUp();
	</script>
	<!-- //stats -->
<!-- start-smooth-scrolling -->
<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
		<script type="text/javascript">
		    jQuery(document).ready(function ($) {
		        $(".scroll").click(function (event) {
		            event.preventDefault();

		            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
		        });
		    });
		</script>
	<!-- //end-smooth-scrolling   -->	
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
	        var defaults = {
	        containerID: 'toTop', // fading element id
	        containerHoverID: 'toTopHover', // fading element hover id
	        scrollSpeed: 1200,
	        easingType: 'linear' 
	        };
	        */

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
	<!-- //smooth-scrolling-of-move-up -->   
    <script src="js/bootstrap.js"></script>
</asp:Content>

