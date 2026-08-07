<?php
$pageTitle = 'Careers at Mostech Business Solutions | Tech Jobs in Dubai, UAE';
$pageDescription = 'Explore exciting tech career opportunities at Mostech Business Solutions in Dubai. Join our team of software developers, web designers, and digital marketing experts.';
$pageCanonical = 'https://mostech.ae/careers';
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
    "name": "Careers",
    "item": "https://mostech.ae/careers"
  }]
}
</script>

<style>
    .careers-mvg-card {
        background: #ffffff;
        border-radius: 12px;
        border-top: 4px solid #0088cc;
        padding: 30px 25px;
        margin-bottom: 25px;
        width: 100%;
        flex: 1;
        display: flex;
        flex-direction: column;
        box-shadow: 0 6px 20px rgba(0,0,0,0.05);
        transition: all 0.3s ease-in-out;
    }
    .careers-mvg-card:hover {
        transform: translateY(-6px);
        box-shadow: 0 15px 30px rgba(0, 136, 204, 0.15);
        border-top-color: #005580;
    }
    .careers-mvg-icon {
        width: 52px;
        height: 52px;
        background: rgba(0, 136, 204, 0.08);
        color: #0088cc;
        border-radius: 50%;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        font-size: 22px;
        margin-bottom: 18px;
        flex-shrink: 0;
        transition: all 0.3s ease;
    }
    .careers-mvg-card:hover .careers-mvg-icon {
        background: #0088cc;
        color: #ffffff;
        transform: scale(1.1);
    }
    .careers-mvg-card h3 {
        font-size: 18px;
        font-weight: 700;
        color: #1e293b;
        margin-top: 0;
        margin-bottom: 10px;
    }
    .careers-mvg-card p {
        font-size: 14.5px;
        color: #475569;
        line-height: 1.7;
        margin-bottom: 0;
    }
    .careers-no-openings-box {
        background: #f8fafc;
        border: 1px solid #e2e8f0;
        border-left: 5px solid #0088cc;
        border-radius: 10px;
        padding: 40px 36px;
        text-align: center;
    }
    .careers-no-openings-box .no-open-icon {
        width: 68px;
        height: 68px;
        background: rgba(0, 136, 204, 0.08);
        border-radius: 50%;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        font-size: 28px;
        color: #0088cc;
        margin-bottom: 20px;
    }
    .careers-no-openings-box h3 {
        font-size: 22px;
        font-weight: 700;
        color: #1e293b;
        margin-bottom: 10px;
    }
    .careers-no-openings-box p {
        font-size: 15px;
        color: #475569;
        line-height: 1.75;
        max-width: 520px;
        margin: 0 auto 24px;
    }
    @media (max-width: 991px) {
        .careers-cards-row > [class*='col-'] {
            display: block;
            width: 100%;
        }
    }
    @media (max-width: 767px) {
        .careers-no-openings-box {
            padding: 28px 20px;
        }
    }
</style>

<div role="main" class="main">

    <section class="page-header page-header-custom-background" style="background-image: url(img/custom-header-bg.webp);">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>CAREERS &amp; OPPORTUNITIES</h1>
                    <ul class="breadcrumb breadcrumb-valign-mid">
                        <li><a href="index.php">HOME</a></li>
                        <li class="active">CAREERS</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Intro -->
    <div class="container" style="padding-top: 50px; padding-bottom: 10px;">
        <div class="row">
            <div class="col-md-12">
                <h2 style="font-size: 30px; font-weight: 800; color: #1e293b; margin-bottom: 16px;">Build Your Career at Mostech Business Solutions</h2>
                <p style="color: #334155; font-size: 15px; line-height: 1.8;" align="justify">At Mostech Business Solutions, we believe that our greatest asset is our talented team. Located in Dubai, UAE, we deliver state-of-the-art software development, mobile apps, e-commerce platforms, custom ERP systems, and digital marketing strategies across the GCC region.</p>
                <p style="color: #334155; font-size: 15px; line-height: 1.8;" align="justify">We are continuously seeking passionate engineers, creative designers, strategic marketers, and business analysts who thrive on innovation and collaborative problem-solving. Whether you are an experienced tech professional or a talented graduate, Mostech provides an environment where your skills are valued, developed, and rewarded.</p>
            </div>
        </div>
    </div>

    <!-- Why Work With Us + Core Practice Areas -->
    <section style="background: linear-gradient(135deg, #f8fafc 0%, #edf2f7 100%); padding: 55px 0; border-top: 1px solid #e2e8f0; border-bottom: 1px solid #e2e8f0; margin-top: 20px;">
        <div class="container">
            <div class="row careers-cards-row" style="display: flex; flex-wrap: wrap;">
                <div class="col-md-3 col-sm-6" style="display: flex; flex-direction: column;">
                    <div class="careers-mvg-card">
                        <div class="careers-mvg-icon"><i class="fa fa-lightbulb-o"></i></div>
                        <h3>Innovative Culture</h3>
                        <p>Work on cutting-edge technologies including cloud systems, mobile apps, and scalable web solutions.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6" style="display: flex; flex-direction: column;">
                    <div class="careers-mvg-card">
                        <div class="careers-mvg-icon"><i class="fa fa-line-chart"></i></div>
                        <h3>Career Advancement</h3>
                        <p>We promote internal growth, leadership development, and ongoing technical training for every team member.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6" style="display: flex; flex-direction: column;">
                    <div class="careers-mvg-card">
                        <div class="careers-mvg-icon"><i class="fa fa-users"></i></div>
                        <h3>Collaborative Team</h3>
                        <p>Work in a multicultural team environment located in the heart of Dubai, UAE.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6" style="display: flex; flex-direction: column;">
                    <div class="careers-mvg-card">
                        <div class="careers-mvg-icon"><i class="fa fa-trophy"></i></div>
                        <h3>Competitive Pay</h3>
                        <p>Market-competitive salaries, performance bonuses, and health insurance benefits.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Current Openings -->
    <div class="container" style="padding-top: 55px; padding-bottom: 60px;">
        <div class="row">
            <div class="col-md-12">
                <h2 style="font-size: 26px; font-weight: 800; color: #1e293b; margin-bottom: 8px;">Current Openings</h2>
                <p style="color: #64748b; font-size: 15px; margin-bottom: 30px;">We update our vacancies regularly. Check back soon or send us a spontaneous application.</p>

                <div class="careers-no-openings-box">
                    <div class="no-open-icon">
                        <i class="fa fa-briefcase"></i>
                    </div>
                    <h3>No Current Openings</h3>
                    <p>There are no open positions at this time. We are always happy to hear from talented professionals — send us your CV and we will get in touch when a suitable role becomes available.</p>
                    <a href="mailto:info@mostech.ae?subject=Spontaneous%20Application%20-%20Mostech" class="btn btn-primary" id="careers-apply-btn">
                        <i class="fa fa-envelope-o" style="margin-right: 6px;"></i> Send Your CV to info@mostech.ae
                    </a>
                </div>

            </div>
        </div>
    </div>

</div>

<?php
include('footer.php');
?>