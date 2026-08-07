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
  "image": "https://www.mostech.ae/img/logo.webp",
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

    <section class="page-header page-header-custom-background mb-0" style="background-image: url(img/custom-header-bg.webp);">
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

    <div class="container mt-xlg mb-xlg py-4">
        <!-- Responsive Framed Google Map -->
        <div class="row">
            <div class="col-md-12">
                <div class="contact-map-frame">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3610.5938115827043!2d55.27031837620187!3d25.183189632266426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f6964a5ad0fb5%3A0x37e86857219ea19b!2sMostech%20Business%20Solutions!5e0!3m2!1sen!2sae!4v1768653677929!5m2!1sen!2sae" width="100%" height="420" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Left Column: Form Card -->
            <div class="col-md-6 mb-4">
                <div class="contact-form-card">
                    <?php if (isset($_GET['status']) && $_GET['status'] == 'success'): ?>
                        <div class="alert alert-success mt-lg mb-4">
                            <strong>Thank you!</strong> Your message has been sent successfully. Our team will contact you shortly.
                        </div>
                    <?php elseif (isset($_GET['status']) && $_GET['status'] == 'error'): ?>
                        <div class="alert alert-danger mt-lg mb-4">
                            <strong>Oops!</strong> Something went wrong. Please try sending your message again or contact us directly via email.
                        </div>
                    <?php endif; ?>

                    <h2 class="contact-section-title">Send Us A Message</h2>
                    <p class="contact-intro-text">Have a project in mind, need a customized software demonstration, or want to discuss your digital marketing and web application goals in Dubai? Fill out the inquiry form below and our senior technical consultants will analyze your requirements and reach out within 24 business hours with a comprehensive proposal.</p>
                    <p class="contact-intro-text">Whether you require full-stack enterprise software development, mobile application engineering, custom ERP implementation, or high-ROI search engine optimization (SEO) in Dubai, Abu Dhabi, or the wider GCC region, Mostech Business Solutions is dedicated to delivering measurable business value and technology excellence.</p>

                    <form id="contactForm" action="send-mail.php" method="POST">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="contact-form-group">
                                    <label class="contact-form-label" for="name">Your Name *</label>
                                    <input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control contact-form-control" name="name" id="name" required placeholder="John Doe">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="contact-form-group">
                                    <label class="contact-form-label" for="email">Your Email Address *</label>
                                    <input type="email" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control contact-form-control" name="email" id="email" required placeholder="john@example.com">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="contact-form-group">
                                    <label class="contact-form-label" for="subject">Subject *</label>
                                    <input type="text" value="" data-msg-required="Please enter the subject." maxlength="100" class="form-control contact-form-control" name="subject" id="subject" required placeholder="Project Inquiry / Consultation">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="contact-form-group">
                                    <label class="contact-form-label" for="message">Message *</label>
                                    <textarea maxlength="5000" data-msg-required="Please enter your message." rows="5" class="form-control contact-form-control" name="message" id="message" required placeholder="Tell us about your project requirements..."></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <button type="submit" class="btn-contact-submit">
                                    <i class="fa fa-paper-plane me-2"></i> Send Message
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <!-- Right Column: Get in Touch & Info Cards -->
            <div class="col-md-6 mb-4">
                <div style="padding-left: 10px;">
                    <h2 class="contact-section-title">Get in Touch</h2>
                    <p class="contact-intro-text">Mostech Business Solutions is a premier IT development and digital agency based in Dubai, UAE. We specialize in empowering enterprises with robust software, mobile applications, web platforms, and results-driven marketing strategies.</p>

                    <!-- Office Location Cards -->
                    <div class="row mt-4 mb-4">
                        <div class="col-md-6 col-sm-6 mb-3">
                            <div class="contact-info-card">
                                <div class="contact-info-card-header">
                                    <div class="contact-info-icon-badge">
                                        <i class="fa fa-building"></i>
                                    </div>
                                    <h3 class="contact-info-card-title">Dubai Head Office</h3>
                                </div>
                                <div class="contact-info-item">
                                    <i class="fa fa-map-marker"></i>
                                    <span><strong>Bay Square Business Tower</strong><br>Business Bay, Dubai, United Arab Emirates</span>
                                </div>
                                <div class="contact-info-item">
                                    <i class="fa fa-phone"></i>
                                    <a href="tel:+971581730112">+971 58 173 0112</a>
                                </div>
                                <div class="contact-info-item">
                                    <i class="fa fa-envelope"></i>
                                    <a href="mailto:info@mostech.ae">info@mostech.ae</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6 mb-3">
                            <div class="contact-info-card">
                                <div class="contact-info-card-header">
                                    <div class="contact-info-icon-badge">
                                        <i class="fa fa-globe"></i>
                                    </div>
                                    <h3 class="contact-info-card-title">Regional Office</h3>
                                </div>
                                <div class="contact-info-item">
                                    <i class="fa fa-map-marker"></i>
                                    <span><strong>KVR Tower, Caltex</strong><br>Kannur, Kerala, India</span>
                                </div>
                                <div class="contact-info-item">
                                    <i class="fa fa-phone"></i>
                                    <a href="tel:+918547557283">+91 85475 57283</a>
                                </div>
                                <div class="contact-info-item">
                                    <i class="fa fa-shield"></i>
                                    <span>Regional Support across GCC</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Business Hours Card -->
                    <div class="contact-info-card mb-4">
                        <div class="contact-info-card-header">
                            <div class="contact-info-icon-badge">
                                <i class="fa fa-clock-o"></i>
                            </div>
                            <h3 class="contact-info-card-title">Business Hours</h3>
                        </div>
                        <div class="contact-info-item">
                            <i class="fa fa-calendar"></i>
                            <span><strong>Monday - Friday:</strong> 9:00 AM – 6:00 PM (GST)</span>
                        </div>
                        <div class="contact-info-item">
                            <i class="fa fa-calendar"></i>
                            <span><strong>Saturday:</strong> 9:00 AM – 2:00 PM (GST)</span>
                        </div>
                        <div class="contact-info-item">
                            <i class="fa fa-calendar-times-o"></i>
                            <span><strong>Sunday:</strong> Closed</span>
                        </div>
                    </div>

                    <!-- Why Choose Mostech -->
                    <div class="contact-feature-card">
                        <h3 class="contact-info-card-title mb-3" style="margin-bottom: 14px;">Why Choose Mostech?</h3>
                        <ul class="contact-feature-list">
                            <li>Direct access to experienced software engineers & digital strategists.</li>
                            <li>Free initial project scope consultation & transparent quotations.</li>
                            <li>Strict Non-Disclosure Agreement (NDA) data privacy protections.</li>
                            <li>Rapid turnaround time for technical inquiries and project kickoffs.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
include('footer.php');
?>