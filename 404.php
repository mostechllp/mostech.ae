<?php
$pageTitle = 'Page Not Found - Mostech';
$pageDescription = 'Page Not Found - Mostech Business Solutions';
$pageCanonical = 'https://mostech.ae/404';
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
    "name": "404",
    "item": "https://mostech.ae/404"
  }]
}
</script>

<div role="main" class="main">
    <section class="page-header page-header-custom-background" style="background-image: url(/img/custom-header-bg.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Page Not Found</h1>
                    <ul class="breadcrumb breadcrumb-valign-mid">
                        <li><a href="/">Home</a></li>
                        <li class="active">404</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="container">
        <section class="page-not-found text-center" style="padding: 60px 0;">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-not-found-main">
                        <h2 style="color: #020c4c;">404 <i class="fa fa-exclamation-triangle" style="font-size: 100px; color: #020c4c; vertical-align: middle;"></i></h2>
                        <h3 class="mt-lg mb-sm" style="font-weight: 700; color: #111; margin-bottom: 30px;">Page Not Found</h3>
                        <a href="/" class="btn btn-tertiary mr-md" style="background: #020c4c; border-color: #020c4c; color: #fff; padding: 12px 30px; font-weight: 600; text-transform: uppercase; transition: all 0.3s ease;">Return to Homepage</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<?php
include('footer.php');
?>
