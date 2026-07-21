								<?php

if($_POST["submitF"]) {
    $recipient="info@spotonz.com";
    $subject="Website Message";
    $sender=$_POST["sender"];    
	$mob=$_POST["mob"];
    $senderEmail=$_POST["senderEmail"];
    $message=$_POST["message"];

    $mailBody="Name: $sender\nEmail: $senderEmail\nMobile: $mob\n\n$message";

    mail($recipient, $subject, $mailBody, "From: $sender <$senderEmail>");

    $thankYou="<p>Thank you! Your message has been sent</p>";
}

?>

   
<div id="contact" class="col-md-3">
							<aside class="sidebar" id="sidebar" data-plugin-sticky data-plugin-options="{'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 110}}">

								<h4>Lets  <strong><font color="#0c0c74">Talk Now !</font></strong></h4>
									<small> 
									<font color="black">	Please contact us for more information about our services.!</font>
									</small>
									<hr>
									

									
								<form method="post" action="#contact"> 
          
									  <div class="control-group form-group">
										<div class="controls">
										  <input  class="form-control" id="name" type="text" name="name" placeholder=" NAME">
										  <p class="help-block"></p>
										</div>
									  </div> 
						
									  <div class="control-group form-group">
										<div class="controls">
										 <input class="form-control" id="mob" type="text" name="mob" placeholder=" MOBILE">
										</div>
									  </div>
									  <div class="control-group form-group">
										<div class="controls">
										  <input class="form-control" id="email" type="email" name="email" placeholder=" EMAIL">
										</div>
									  </div>
									  <div class="control-group form-group">
										<div class="controls">
										  <textarea class="form-control custom-control" id="message" rows="4" name="message" placeholder="HOW CAN WE HELP?"></textarea>
										</div>
									  </div>
									  <div class="control-group form-group">
										<div class="controls" align="center">
										 <input type="submit" name="submitF" id="submitF"  value="SUBMIT" class="btn btn-lg btn-primary mb-lg">
										</div>
									  </div>
									 									           
								</form>

							 <?=$thankYou ?>
								
							</aside>
						</div>

					</div>

				</div>		

					
										</div>
										
										
										
										
		<footer class="short" id="footer">
				<div class="container">
					<div class="row">
						<div class="col-md-9">
							<h4>About Spoton</h4>
							<p>We offer a wide range of corporate, secretarial, legal and managerial consultancy services to our clients from a spectrum of industries. Our clientele includes Banks, Private companies to Listed and Multinational companies. The firm has a committed team of Company Secretaries, experienced and qualified staff. We understand that protection, perfection and performance  [.......]<a href="about.php" class="btn-flat btn-xs">View More <i class="fa fa-arrow-right"></i></a></p>							<hr class="light">
							<div class="row">
										<div class="col-md-3">
							<div class="newsletter">
								<p>Subscribe to our newsletter.</p>
			
			



			
								<?php

if($_POST["submitS"]) {
    $sender="malabaronlinesolutions@gmail.com";
    $subject="Website Subscription";
    $Emails=$_POST["Emails"];    
	$headers = 'From:' . $Emails;

mail($sender, $subject, $Emails, $headers);
$thankYo="<p>Thank you Thank you for Subscribing.</p>";
}

?>
			
								<div class="alert alert-danger hidden"></div>
							

									
								<form action="#footer" method="POST">
									<div class="input-group">
										<input class="form-control" placeholder="Email Address" name="Emails" id="Emails" type="text">
										<span class="input-group-btn">
										<input name="submitS" id="submitS" value="Go!" class="btn btn-default" type="submit">
										</span>
									
									</div>
								</form>
								
									
							</div>
						</div>
								<div class="col-md-2">
									
									<ul class="list list-icons list-icons-sm">
									
										<li><i class="fa fa-caret-right"></i> <a href="http://www.mca.gov.in"  target="_blank">mca.gov.in</a></li>
										<li><i class="fa fa-caret-right"></i> <a href="http://www.icmai.in"  target="_blank">icmai.in</a></li>
										<li><i class="fa fa-caret-right"></i> <a href="http://www.icsi.edu"  target="_blank"> icsi.edu</a></li>
									</ul>
								</div>
								<div class="col-md-2">
									
									<ul class="list list-icons list-icons-sm">
										<li><i class="fa fa-caret-right"></i> <a href="http://www.rbi.org.in"  target="_blank">rbi.org.in</a></li>
										<li><i class="fa fa-caret-right"></i> <a href="http://www.icai.org"  target="_blank">icai.org</a></li>
										<li><i class="fa fa-caret-right"></i> <a href="http://www.sebi.gov.in"  target="_blank">sebi.gov.in</a></li>
										</ul>
								</div>
								
								
								<div class="col-md-2">
									<ul class="list list-icons list-icons-sm">
										<li><i class="fa fa-caret-right"></i> <a href="https://msme.gov.in/"  target="_blank">msme.gov.in</a></li>
										<li><i class="fa fa-caret-right"></i> <a href="http://www.gst.gov.in"  target="_blank">gst.gov.in</a></li>
										<li><i class="fa fa-caret-right"></i> <a href="http://www.incometaxindia.gov.in"  target="_blank">incometaxindia</a></li>
									</ul>
								</div>
								
								<div class="col-md-2">
								<ul class="list list-icons list-icons-sm">
								<li><i class="fa fa-caret-right"></i> <a href="careers.php">Careers</a></li>
								<li><i class="fa fa-caret-right"></i> <a href="faq.php">FAQ</a></li>
								<li><i class="fa fa-caret-right"></i> <a href="contact.php">Contact</a></li>
								</ul>
								</div>
								</div>
						</div>
						<div class="col-md-3">
							
							<ul class="list list-icons mt-xl">
								<h5 class="mb-sm">Contact Us</h5>
								<li><i class="fa fa-phone"></i> <strong>Mobile: </strong><a href="tel:919961411863">(+91) 9961411863</a></li>
								<li><i class="fa fa-whatsapp"></i> <strong>Whatsapp: </strong> <a href="https://wa.me/919961411863?text=Hi, I contacted you Through your website" >(+91) 9961411863</a></li>
								<li><i class="fa fa-envelope"></i> <strong>Email: </strong> <a href="mailto:info@spotonz.com">info@spotonz.com</a></li>
								</ul>
							<ul class="social-icons mt-xl">
								<li class="social-icons-facebook"><a href="https://www.facebook.com/spotonz/" target="_blank" title="Facebook"><i class="fa fa-facebook"></i></a></li>
								<li class="social-icons-instagram"><a href="https://instagram.com/spoton_llp" target="_blank" title="Instagram"><i class="fa fa-instagram"></i></a></li>
								<li class="social-icons-linkedin"><a href="https://www.linkedin.com/company/spoton-business-solutions-llp" target="_blank" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
					<div align="center" class="footer-copyright">
					<div class="container">
									<div class="row">
									<h5>
									
													<a data-plugin-tooltip href="contact.php" data-original-title="OPP: Moinkutty Vaidar Academy, Near Calicut Airport, Kondotty, Kerala -673678   Mob : +919961411863"> <i class="fa fa-map-marker" style="font-size:18px;color:white"></i>	&nbsp;&nbsp; Calicut</a>				
						&nbsp;&nbsp;&nbsp;&nbsp;	<a data-plugin-tooltip href="contact.php" data-original-title="No.58, Kasthuri Bai Avenue, Alagar Swamy Nagar, Thiruverkadu, Chennai -600077  Mob : +918075383488 "> <i class="fa fa-map-marker" style="font-size:18px;color:white"></i>	&nbsp;&nbsp; CHENNAI</a>					
						&nbsp;&nbsp;&nbsp;&nbsp;	<a data-plugin-tooltip href="contact.php" data-original-title="No 5, 5th cross Navya Nagar, Jakkur, Bangalore 560064. Mob : +919074500583 "> <i class="fa fa-map-marker" style="font-size:18px;color:white"></i>	&nbsp;&nbsp; BANGALORE</a> 					
						&nbsp;&nbsp;&nbsp;&nbsp;	<a data-plugin-tooltip href="contact.php" data-original-title="Room# 16, Ground Floor, DSIDC Complex, Mata Sundri Road, New Delhi - 110002 . Mob : +919074500583  "> <i class="fa fa-map-marker" style="font-size:18px;color:white"></i>	&nbsp;&nbsp; NEW DELHI</a> 				
						&nbsp;&nbsp;&nbsp;&nbsp;	<a data-plugin-tooltip href="contact.php" data-original-title="1st Floor, Salma Comm. Center, Madinah Road, Post Box No 6696, Jeddah, KSA. Mob : ++966535744308"> <i class="fa fa-map-marker" style="font-size:18px;color:white"></i>	&nbsp;&nbsp; SAUDI ARABIA</a> </h5>					
					
				</div>
					</div>
				</div>
				
				<div align="center" class="footer-copyright">
					<div class="container">
									<div class="row">
					<p>Copyright &copy; 2019 - <script>document.write(new Date().getFullYear());</script> | Developed by <a href="http://malabaronlinesolutions.com" target="_blank"> MALABAR ONLINE SOLUTIONS</a></p>
					</div>
					</div>
				</div>
			</footer>
		</div>

		<!-- Scroll to Top (static for accessibility) -->
		<a class="scroll-to-top hidden-mobile" href="#" aria-label="Scroll to Top" title="Scroll to Top">
			<i class="fa fa-chevron-up"></i>
			<span class="sr-only">Scroll to Top</span>
		</a>

		<!-- Vendor -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/jquery.appear/jquery.appear.min.js"></script>
		<script src="vendor/jquery.easing/jquery.easing.min.js"></script>
		<script src="vendor/jquery-cookie/jquery-cookie.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/common/common.min.js"></script>
		<script src="vendor/jquery.validation/jquery.validation.min.js"></script>
		<script src="vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
		<script src="vendor/jquery.gmap/jquery.gmap.min.js"></script>
		<script src="vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
		<script src="vendor/isotope/jquery.isotope.min.js"></script>
		<script src="vendor/owl.carousel/owl.carousel.min.js"></script>
		<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="vendor/vide/vide.min.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>
		
		<!-- Current Page Vendor and Views -->
		<script src="vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
		<script src="vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
		<script src="vendor/circle-flip-slideshow/js/jquery.flipshow.min.js"></script>
		<script src="js/views/view.home.js"></script>
		
		<!-- Theme Custom -->
		<script src="js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>

		<!-- Examples -->
		<script src="js/examples/examples.demos.js"></script>

		<script src="vendor/bootpag/bootpag.js"></script>
	
		<!-- Examples -->
		<script src="js/examples/examples.portfolio.js"></script>


<!-- GetButton.io widget -->
<script type="text/javascript">
    (function () {
        var options = {
            whatsapp: "+919961411863", // WhatsApp number
            call_to_action: "", // Call to action
            position: "left", // Position may be 'right' or 'left'
        };
        var proto = document.location.protocol, host = "getbutton.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
</script>
<!-- /GetButton.io widget -->

		 
	<script>
	$(document).ready(function(){
  
  $('.claimedRight').each(function (f) {

      var newstr = $(this).text().substring(0,300);
      $(this).text(newstr);

    });
})
	</script>
	</body>
</html>
