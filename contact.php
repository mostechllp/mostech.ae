<?php
$pageTitle = 'Contact Mostech Business Solutions Dubai | Get A Free Quote';
$pageDescription = 'Get in touch with Mostech Business Solutions in Business Bay, Dubai for web development, software engineering, mobile apps, ERP, and digital marketing inquiries.';
$pageCanonical = 'https://mostech.ae/contact';
include('header.php');
?>
<script type="application/ld+json">
{
  "@context": "https://schema.org/",
  "@type": "BreadcrumbList",
  "itemListElement": [{
    "@type": "ListItem",
    "position": 1,
    "name": "Home",
    "item": "https://mostech.ae/"
  },{
    "@type": "ListItem",
    "position": 2,
    "name": "Contact",
    "item": "https://mostech.ae/contact"
  }]
}
</script>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Mostech Business Solutions",
  "image": "https://www.mostech.ae/img/logo.png",
  "url": "https://mostech.ae",
  "telephone": "+971 58 173 0112",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "Bay Square Business Tower, Business Bay",
    "addressLocality": "Dubai",
    "addressCountry": "AE"
  }
}
</script>

<div role="main" class="main">

    <section class="page-header page-header-custom-background mb-0" style="background-image: url(img/custom-header-bg.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>CONTACT US</h1>
                    <ul class="breadcrumb breadcrumb-valign-mid">
                        <li><a href="index.php">HOME</a></li>
                        <li class="active">Contact</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Responsive Map -->
    <div class="responsive-map-container">
        <div class="col-md-12 p-none">
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3610.5938115827043!2d55.27031837620187!3d25.183189632266426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f6964a5ad0fb5%3A0x37e86857219ea19b!2sMostech%20Business%20Solutions!5e0!3m2!1sen!2sae!4v1768653677929!5m2!1sen!2sae" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>

    <div class="container mt-xlg mb-xlg">
        <div class="row">
            <div class="col-md-6">
                <?php if (isset($_GET['status']) && $_GET['status'] == 'success'): ?>
                    <div class="alert alert-success mt-lg">
                        <strong>Thank you!</strong> Your message has been sent successfully. Our team will contact you shortly.
                    </div>
                <?php elseif (isset($_GET['status']) && $_GET['status'] == 'error'): ?>
                    <div class="alert alert-danger mt-lg">
                        <strong>Oops!</strong> Something went wrong. Please try sending your message again or contact us directly via email.
                    </div>
                <?php endif; ?>

                <h2 class="mb-sm mt-sm"><strong>Send Us A</strong> Message</h2>
                <p>Have a project in mind, need a customized software demo, or want to discuss your digital marketing goals in Dubai? Fill out the form below and our technical advisors will get back to you within 24 business hours.</p>

                <form id="contactForm" action="send-mail.php" method="POST">
                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-6">
                                <label>Your Name *</label>
                                <input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control" name="name" id="name" required>
                            </div>
                            <div class="col-md-6">
                                <label>Your Email Address *</label>
                                <input type="email" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control" name="email" id="email" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-12">
                                <label>Subject *</label>
                                <input type="text" value="" data-msg-required="Please enter the subject." maxlength="100" class="form-control" name="subject" id="subject" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-12">
                                <label>Message *</label>
                                <textarea maxlength="5000" data-msg-required="Please enter your message." rows="6" class="form-control" name="message" id="message" required></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <input type="submit" value="Send Message" class="btn btn-primary btn-lg mb-xlg">
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-md-6">
                <h2 class="mb-sm mt-sm">Get in <strong>Touch</strong></h2>
                <p class="lead">Mostech Business Solutions is a premier IT development and digital agency based in Dubai, UAE. We specialize in empowering enterprises with robust software, mobile applications, web platforms, and results-driven marketing strategies.</p>
                
                <div class="row mt-xlg">
                    <div class="col-md-6">
                        <h4 class="heading-primary"><strong>Dubai Head Office</strong></h4>
                        <p><i class="fa fa-map-marker" style="color:#020c4c;"></i> <strong>Bay Square Business Tower</strong><br>Business Bay, Dubai, United Arab Emirates</p>
                        <p><i class="fa fa-phone" style="color:#020c4c;"></i> <a href="tel:+971581730112">+971 58 173 0112</a></p>
                        <p><i class="fa fa-envelope" style="color:#020c4c;"></i> <a href="mailto:info@mostech.ae">info@mostech.ae</a></p>
                    </div>

                    <div class="col-md-6">
                        <h4 class="heading-primary"><strong>Regional Office</strong></h4>
                        <p><i class="fa fa-map-marker" style="color:#020c4c;"></i> <strong>KVR Tower, Caltex</strong><br>Kannur, Kerala, India</p>
                        <p><i class="fa fa-phone" style="color:#020c4c;"></i> <a href="tel:+918547557283">+91 85475 57283</a></p>
                        <p><i class="fa fa-globe" style="color:#020c4c;"></i> Regional Support across GCC</p>
                    </div>
                </div>

                <hr class="tall">

                <h4 class="heading-primary">Business <strong>Hours</strong></h4>
                <ul class="list list-icons list-dark">
                    <li><i class="fa fa-clock-o"></i> <strong>Monday - Friday:</strong> 9:00 AM – 6:00 PM (GST)</li>
                    <li><i class="fa fa-clock-o"></i> <strong>Saturday:</strong> 9:00 AM – 2:00 PM (GST)</li>
                    <li><i class="fa fa-clock-o"></i> <strong>Sunday:</strong> Closed</li>
                </ul>

                <h4 class="heading-primary mt-lg">Why Choose <strong>Mostech?</strong></h4>
                <ul class="list list-icons list-primary">
                    <li><i class="fa fa-check"></i> Direct access to experienced software engineers & digital strategists.</li>
                    <li><i class="fa fa-check"></i> Free initial project scope consultation & transparent quotations.</li>
                    <li><i class="fa fa-check"></i> Strict Non-Disclosure Agreement (NDA) data privacy protections.</li>
                    <li><i class="fa fa-check"></i> Rapid turnaround time for technical inquiries and project kickoffs.</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<?php
include('footer.php');
?>