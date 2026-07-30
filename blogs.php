<?php
$pageTitle = 'Mostech Business Solutions - Tech Blogs, Guides & Insights Dubai';
$pageDescription = 'Discover expert technology blogs, web development guides, software insights, and digital marketing strategies from Mostech Business Solutions in Dubai, UAE.';
$pageCanonical = 'https://mostech.ae/blogs';
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
    "name": "BLOGS",
    "item": "https://mostech.ae/blogs"
  }]
}
</script>

<div role="main" class="main">
    <section class="page-header page-header-custom-background" style="background-image: url(img/custom-header-bg.webp);">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>TECH BLOGS & DIGITAL GUIDES</h1>
                    <ul class="breadcrumb breadcrumb-valign-mid">
                        <li><a href="index.php">Home</a></li>
                        <li class="active">BLOGS</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="container" style="margin-bottom: 80px; margin-top: 40px;">
        <div class="row">
            <div class="col-md-12">
                <!--
                <h2>Insights & Industry Knowledge from Mostech Experts</h2>
                <p class="lead">Welcome to the Mostech Business Solutions blog. Our team of software developers, web designers, and digital marketing consultants share practical guides, industry updates, and expert strategies to help UAE businesses succeed in the digital economy.</p>
                <p>From choosing the right ERP solution for your enterprise to implementing cutting-edge SEO tactics in Dubai, our articles provide actionable insights tailored for business leaders, startups, and technology enthusiasts.</p>

                <hr class="tall">
                -->

                <div class="blog-posts">
                    <style>
                        .ref-blog-card {
                            background: #ffffff;
                            border-radius: 20px;
                            border: 1px solid #e2e8f0;
                            box-shadow: 0 6px 20px rgba(2, 12, 76, 0.05);
                            overflow: hidden;
                            display: flex;
                            flex-direction: column;
                            height: 100%;
                            transition: transform 0.3s cubic-bezier(0.25, 0.8, 0.25, 1), box-shadow 0.3s cubic-bezier(0.25, 0.8, 0.25, 1), border-color 0.3s ease;
                            margin-bottom: 30px;
                        }
                        .ref-blog-card:hover {
                            transform: translateY(-6px);
                            box-shadow: 0 14px 32px rgba(2, 12, 76, 0.12);
                            border-color: #020c4c;
                        }
                        .ref-blog-card-img-wrapper {
                            position: relative;
                            width: 100%;
                            height: 220px;
                            overflow: hidden;
                        }
                        .ref-blog-card-img {
                            width: 100%;
                            height: 100%;
                            object-fit: cover;
                            border-top-left-radius: 20px;
                            border-top-right-radius: 20px;
                            transition: transform 0.4s ease;
                        }
                        .ref-blog-card:hover .ref-blog-card-img {
                            transform: scale(1.04);
                        }
                        .ref-blog-card-body {
                            padding: 24px 22px 26px 22px;
                            display: flex;
                            flex-direction: column;
                            flex-grow: 1;
                            align-items: flex-start;
                        }
                        .ref-blog-date-pill {
                            background: #eef3ff;
                            color: #020c4c;
                            font-size: 13px;
                            font-weight: 600;
                            padding: 5px 16px;
                            border-radius: 20px;
                            display: inline-block;
                            margin-bottom: 16px;
                            letter-spacing: 0.3px;
                        }
                        .ref-blog-card-title {
                            font-size: 19px;
                            font-weight: 700;
                            line-height: 1.45;
                            color: #020c4c;
                            margin: 0 0 20px 0;
                        }
                        .ref-blog-card-title a {
                            color: #020c4c;
                            text-decoration: none;
                            transition: color 0.2s ease;
                        }
                        .ref-blog-card-title a:hover {
                            color: #0088cc;
                            text-decoration: none;
                        }
                        .ref-blog-read-more-btn {
                            display: inline-flex;
                            align-items: center;
                            justify-content: center;
                            border: 1.5px solid #020c4c;
                            color: #020c4c;
                            background: transparent;
                            padding: 8px 24px;
                            border-radius: 30px;
                            font-weight: 600;
                            font-size: 14px;
                            text-decoration: none;
                            transition: all 0.3s ease;
                            margin-top: auto;
                        }
                        .ref-blog-read-more-btn i {
                            margin-left: 8px;
                            font-size: 13px;
                            transition: transform 0.3s ease;
                        }
                        .ref-blog-read-more-btn:hover {
                            background: #020c4c;
                            color: #ffffff !important;
                            text-decoration: none;
                        }
                        .ref-blog-read-more-btn:hover i {
                            transform: translateX(4px);
                        }
                    </style>

                    <!-- New Blog Cards Grid (Based on Reference Design) -->
                    <div class="row">
                        <!-- Card 1 (Attached Article) -->
                        <div class="col-md-4 col-sm-6">
                            <div class="ref-blog-card">
                                <div class="ref-blog-card-img-wrapper">
                                    <a href="/blogs/how-to-improve-your-brands-search-visibility">
                                        <img src="/img/blog1image.webp" alt="How to Improve Your Brand's Search Visibility" class="ref-blog-card-img">
                                    </a>
                                </div>
                                <div class="ref-blog-card-body">
                                    <span class="ref-blog-date-pill"><i class="fa fa-calendar" style="font-size: 11px; margin-right: 6px; opacity: 0.85;"></i>29-07-2026</span>
                                    <h3 class="ref-blog-card-title">
                                        <a href="/blogs/how-to-improve-your-brands-search-visibility">How can your brand get visible in search?</a>
                                    </h3>
                                    <a href="/blogs/how-to-improve-your-brands-search-visibility" class="ref-blog-read-more-btn">
                                        Read More <i class="fa fa-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--
                    ===================================================================
                    ORIGINAL BLOG CODE (COMMENTED OUT AS PER REQUIREMENT - DO NOT DELETE)
                    ===================================================================
                    <?php
                    $hasBlogs = false;
                    if (file_exists(__DIR__ . '/admin/connection.php')) {
                        @include_once(__DIR__ . '/admin/connection.php');
                        if (isset($con)) {
                            try {
                                $stmt = $con->query("SELECT `id`, `title`, `content`, `small`, `datee`, `name`, `tag`, `isPopular`, `isImage`, `filee`, `tagUrl` FROM `blog` ORDER BY `id` DESC LIMIT 10");
                                if ($stmt && $stmt->rowCount() > 0) {
                                    $hasBlogs = true;
                                    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                                        $blogId = $row['id'];
                                        $commentCount = 0;
                                        $stmt3 = $con->prepare("SELECT COUNT(`id`) as sumId FROM `comment` WHERE `fkBlogId` = ?");
                                        if ($stmt3) {
                                            $stmt3->execute([$blogId]);
                                            $row3 = $stmt3->fetch(PDO::FETCH_ASSOC);
                                            $commentCount = $row3['sumId'] ?? 0;
                                        }
                                        ?>
                                        <article class="post post-medium mb-xlg">
                                            <div class="row">
                                                <div class="col-md-5">
                                                    <div class="post-image">
                                                        <img class="img-responsive" src="admin/<?php echo htmlspecialchars($row['filee']); ?>" alt="<?php echo htmlspecialchars($row['title']); ?>">
                                                    </div>
                                                </div>
                                                <div class="col-md-7">
                                                    <div class="post-content">
                                                        <h4><a href="blog-post.php?link=<?php echo $row['id']; ?>"><?php echo htmlspecialchars($row['title']); ?></a></h4>
                                                        <p><?php echo htmlspecialchars(substr(strip_tags($row['content']), 0, 180)); ?>...</p>
                                                        <a href="blog-post.php?link=<?php echo $row['id']; ?>" class="btn btn-xs btn-primary">Read More</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                        <?php
                                    }
                                }
                            } catch (Exception $e) {
                                $hasBlogs = false;
                            }
                        }
                    }

                    if (!$hasBlogs) {
                        ?>
                        <!-- Featured Articles & Educational Content -->
                        <article class="post post-medium mb-xlg">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="post-content">
                                        <h3><a href="services/web-design-development.php">1. Top Web Development Trends in Dubai for 2026</a></h3>
                                        <p>Modern web development requires speed, responsive design, and seamless user experiences. Businesses in Dubai are increasingly adopting progressive web applications (PWAs), headless CMS architecture, and artificial intelligence integration to deliver hyper-personalized customer journeys. Discover how optimizing page performance and core web vitals elevates search rankings and user engagement.</p>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="post post-medium mb-xlg">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="post-content">
                                        <h3><a href="seo-service-in-dubai.php">2. Mastering SEO in Dubai: Strategies for Local Business Growth</a></h3>
                                        <p>Search Engine Optimization in the UAE market demands a localized, intent-focused strategy. From optimizing Google Business Profiles for Dubai locations to targeting high-intent keywords across organic search, effective SEO delivers consistent qualified lead generation without perpetual ad spend. Learn why technical SEO audits and high-quality localized content are fundamental to market dominance.</p>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="post post-medium mb-xlg">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="post-content">
                                        <h3><a href="services/erp-solutions.php">3. How Enterprise Resource Planning (ERP) Streamlines Business Operations</a></h3>
                                        <p>Managing financial management, inventory, sales workflows, and human resources under a unified platform is critical for growing companies in Dubai. Custom ERP solutions eliminate manual data duplication, provide real-time reporting dashboards, and enhance overall operational efficiency across all corporate departments.</p>
                                    </div>
                                </div>
                            </div>
                        </article>

                        <article class="post post-medium mb-xlg">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="post-content">
                                        <h3><a href="services/mobile-app-development.php">4. Mobile App Development: Native vs. Cross-Platform Frameworks</a></h3>
                                        <p>When launching a mobile application in Dubai, choosing between native iOS/Android development and cross-platform frameworks like Flutter or React Native is a critical milestone. Learn about cost-efficiency, time-to-market benefits, native hardware access, and UI responsiveness to make an informed decision for your brand.</p>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <?php
                    }
                    ?>
                    -->
                </div>
            </div>
        </div>
    </div>
</div>

<?php
include('footer.php');
?>
