</div>
   <div class="footer">
  <div class="wrapper">	
	     <div class="section group">
				
				
				<div class="col_1_of_4 span_1_of_4">
					<h4 style="color: skyblue">My account</h4>
						<ul style="font-size: 20px">
							<li><a href="http://localhost/shop/login.php">Sign In</a></li>
							<li><a href="http://localhost/shop/cart.php?id=live">View Cart</a></li>
							<li><a href="http://localhost/shop/wishlist.php">My Wishlist</a></li>
							<li><a href="http://localhost/shop/profile.php">My Profile</a></li>
							
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4 style="color: skyblue">Contact</h4>
						<ul>
							<li><span>+8801738005367</span></li>
							<li><span>+8801753509577</span></li>
						</ul>
						<div class="social-icons">
							<h4>Follow Us</h4>
					   		  <ul>
							      <li class="facebook"><a href="https://www.facebook.com/" target="_blank"> </a></li>
							      <li class="twitter"><a href="https://twitter.com/login?lang=en" target="_blank"> </a></li>
							      
							    <div class="clear"></div>
						     </ul>
   	 					</div>
				</div>
			</div>
			<div class="copy_right">
				<p style="font-size: 32px;color:skyblue">Online Pharmacy  shop </p>
		   </div>
     </div>
    </div>
    <script type="text/javascript">
		$(document).ready(function() {
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
    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
    <link href="css/flexslider.css" rel='stylesheet' type='text/css' />
	  <script defer src="js/jquery.flexslider.js"></script>
	  <script type="text/javascript">
		$(function(){
		  SyntaxHighlighter.all();
		});
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	  </script>
</body>
</html>
