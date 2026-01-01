<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="banner-1">  
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
							<li><a href="admin_home.aspx" class="btn w3ls-hover active">Home</a></li>
							 	<li><a href="#" class="dropdown-toggle btn w3ls-hover" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Event <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="admin_event_new.aspx">Add</a></li>
									<li><a href="admin_event_view.aspx">View</a></li>     
								</ul>
							</li>
							
							<li><a href="#" class="dropdown-toggle btn w3ls-hover" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Staff <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="admin_staff_new.aspx">New</a></li>
									<li><a href="admin_staff_view.aspx">View</a></li>     
								</ul>
							</li> 
                            <li><a href="admin_student.aspx" class="btn w3ls-hover">Student</a></li>
                             <li><a href="Default.aspx" class="btn w3ls-hover">Logout</a></li> 
						</ul>	   
						<div class="social-icon">
							 
						</div> 
						<div class="clearfix"> </div>
					</div><!-- //navbar-collapse --> 
				</div><!-- //container-fluid -->
			</nav>
		</div><!-- //header -->	
		
	</div>
	<!-- //banner --> 
	<!-- about-page --> 
	<div class="about">
		<div class="container">
		<div class="w3-hed-all">
			<h3>Admin home</h3>
                
                 <table align="center" class="style1">
              <tr>
                  <td class="style2">
                      &nbsp;</td>
                  <td class="style2">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style3">
                      &nbsp;</td>
                  <td class="style3">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
          </table>	
           
		    </div>
		</div>
	</div>
	<div class="footer-agile">
		<div class="container">
			<div class="footer-agilem">
				<div class="col-sm-8 col-xs-9 copy-w3lsright">
					<p>2020 Dream life. All rights reserved | Design by <a href="#"> Admin.</a></p>
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
	<!--tabs-->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
	    $(document).ready(function () {
	        $('#horizontalTab').easyResponsiveTabs({
	            type: 'default', //Types: default, vertical, accordion           
	            width: 'auto', //auto or any width like 600px
	            fit: true,   // 100% fit in a container
	            closed: 'accordion', // Start closed if in accordion view
	            activate: function (event) { // Callback function if tab is switched
	                var $tab = $(this);
	                var $info = $('#tabInfo');
	                var $name = $('span', $info);
	                $name.text($tab.text());
	                $info.show();
	            }
	        });
	        $('#verticalTab').easyResponsiveTabs({
	            type: 'vertical',
	            width: 'auto',
	            fit: true
	        });
	    });
	</script>
	<!--//tabs-->
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
	<!-- //end-smooth-scrolling -->	
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
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</asp:Content>

