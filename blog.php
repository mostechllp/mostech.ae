				<?php
				$pageTitle = 'Mostech Business Solutions - Tech Blogs & Guides Dubai';
				$pageDescription = 'Unlock valuable tech insights with Mostech Business Solutions. Our blogs and guides provide essential information for businesses navigating Dubai\'s tech scene.';
				$pageCanonical = 'https://mostech.ae/blog';
				include('header.php');
				?>
					<div role="main" class="main">
					<section class="page-header page-header-custom-background" style="background-image: url(img/custom-header-bg.jpg);">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<h1>BLOGS</span></h1>
								<ul class="breadcrumb breadcrumb-valign-mid">
									<li><a href="index.php">Home</a></li>
									<li class="active">BLOGS </li>
								</ul>
							</div>
						</div>
					</div>
				</section>
				<div class="container" style="margin-bottom: 100px;margin-top: 50px;">
					<div class="row mt-xlg mt-xlg">
					    <h3 style="text-align:center;" class="mt-xlg">No records found..</h3>
					<!--	<div class="col-md-9">-->
					<!--		<div class="blog-posts">-->
					<!--		<?php-->
					<!--		include('admin/connection.php');-->
					<!--		$stmt=$con->query("SELECT `id`, `title`, `content`, `small`, `datee`, `name`, `tag`, `isPopular`, `isImage`, `filee`, `tagUrl`, `imageSecond` FROM `blog` ORDER BY `id` desc limit 3");-->
					<!--		while($row=$stmt->fetch())-->
					<!--		{-->
					<!--		$blogId=$row['id'];-->
					<!--		$stmt3=$con->query("SELECT count(`id`) as sumId FROM `comment` where `fkBlogId`='$blogId'");-->
					<!--		$row3=$stmt3->fetch();-->
					<!--		$sumCount=$row3['sumId'];-->
					<!--			?>-->
					<!--			<article class="post post-medium">-->
					<!--				<div class="row">-->
					<!--					<div class="col-md-5">-->
					<!--						<div class="post-image">-->
					<!--							<div class="owl-carousel owl-theme" data-plugin-options="{'items':1}">-->
					<!--								<div>-->
					<!--								<div class="embed-responsive embed-responsive-16by9">-->
					<!--								<?php-->
     <!--                                           if($row['isImage']==1)-->
     <!--                                           {-->
     <!--                                               ?>-->
     <!--                                               <td>-->
					<!--									<iframe frameborder="0" allowfullscreen="" src="<?php echo $row['filee']; ?>"></iframe>-->
     <!--                                               <?php-->
     <!--                                           }-->
     <!--                                           else-->
     <!--                                           {-->
     <!--                                               ?>-->
					<!--							<img class="img-responsive" src="admin/<?php echo $row['filee']; ?>" alt="">				-->
					<!--							<?php-->
     <!--                                           }-->
     <!--                                           ?>-->
					<!--							</div>-->
					<!--							</div>-->
					<!--							</div>-->
					<!--						</div>-->
					<!--					</div>-->
					<!--					<div class="col-md-7">-->
					<!--						<div style="text-align: justify" class="post-content">-->
					<!--						<h4><font color="black"><a href="blog-post.php?link=<?php echo $row['id']; ?>"><?php echo $row['title']; ?></a></font></h4>-->
					<!--							<span align="justify" class="claimedRight" maxlength="200">-->
					<!--							<font color="black"><?php-->
					<!--							echo str_replace(array("\n"),array("<br />"),$row['content']);-->
					<!--							?></font>-->
					<!--							</span>-->
												<!-- &nbsp; [...] -->
					<!--							<a href="blog-post.php?link=<?php echo $row['id']; ?>" class="btn btn-xs btn-primary pull-right"> Read more...</a>-->
					<!--							<hr>	-->
					<!--							<div class="post-meta">-->
					<!--								<?php-->
					<!--								$original_date = $row['datee'];-->
					<!--								$timestamp = strtotime($original_date);-->
					<!--								$new_date = date("d-m-Y", $timestamp);-->
					<!--								?>-->
					<!--							<span><i class="fa fa-calendar"></i><?php echo $new_date; ?> </span>-->
					<!--							<span><i class="fa fa-user"></i> By <a href><?php echo $row['name']; ?></a> </span>-->
					<!--							<span><i class="fa fa-tag"></i> <a href="<?php echo $row['tagUrl']; ?>"><?php echo $row['tag']; ?></a> </span>-->
					<!--							<span><i class="fa fa-comments"></i> <a><?php echo $sumCount; ?> Comments</a></span>-->
					<!--							</div>-->
					<!--						</div>-->
					<!--					</div>-->
					<!--				</div>-->
					<!--			</article>-->
					<!--			<?php-->
					<!--			}-->
					<!--			?>-->
					<!--	</div>-->
					<!--	</div>-->
					<!--		<div class="col-md-3">-->
					<!--		<aside class="sidebar">-->
					<!--			<div class="tabs mb-xlg">-->
					<!--				<ul class="nav nav-tabs">-->
					<!--					<li><a href="#recentPosts" data-toggle="tab">Recent</a></li>-->
					<!--					<li class="active"><a href="#popularPosts" data-toggle="tab"><i class="fa fa-star"></i> Popular</a></li>-->
					<!--				</ul>-->
					<!--				<div class="tab-content">-->
					<!--					<div class="tab-pane active" id="popularPosts">-->
					<!--						<ul class="simple-post-list">-->
					<!--						<?php-->
					<!--						include('admin/connection.php');-->
					<!--						$stmt=$con->query("SELECT `id`, `title`, `content`, `small`, `datee`, `name`, `tag`, `isPopular`, `isImage`, `filee`, `tagUrl`, `imageSecond` FROM `blog` where `isPopular`='1' ORDER BY `id` desc limit 20");-->
					<!--						while($row=$stmt->fetch())-->
					<!--						{-->
					<!--						?>-->
					<!--							<li>-->
					<!--								<div class="post-image">-->
					<!--									<div class="img-thumbnail">-->
					<!--										<a href="blog-post.php?link=<?php echo $row['id']; ?>">-->
					<!--										<img src="admin/<?php echo $row['filee']; ?>" alt="" height="50" width="50">-->
					<!--										</a>-->
					<!--									</div>-->
					<!--								</div>-->
					<!--								<div class="post-info">-->
					<!--									<a href="blog-post.php?link=<?php echo $row['id']; ?>"><font color="black"><?php echo $row['title']; ?></font></a>-->
					<!--									<div class="post-meta">-->
					<!--									<?php echo $row['datee']; ?>-->
					<!--									</div>-->
					<!--								</div>-->
					<!--							</li>-->
					<!--							<?php-->
					<!--							}-->
					<!--							?>											-->
					<!--						</ul>-->
					<!--					</div>-->
					<!--					<div class="tab-pane" id="recentPosts">-->
					<!--						<ul class="simple-post-list">-->
					<!--						<?php-->
					<!--				include('admin/connection.php');-->
					<!--				$stmt=$con->query("SELECT `id`, `title`, `content`, `small`, `datee`, `name`, `tag`, `isPopular`, `isImage`, `filee`, `tagUrl`, `imageSecond` FROM `blog` ORDER BY `id` desc limit 20");-->
					<!--				while($row=$stmt->fetch())-->
					<!--				{-->
					<!--				?>-->
					<!--				<li>	-->
					<!--					<div class="post-image">-->
					<!--									<div class="img-thumbnail">-->
					<!--										<a href="blog-post.php?link=<?php echo $row['id']; ?>">-->
					<!--											<img src="admin/<?php echo $row['filee']; ?>" alt="" height="50" width="50">-->
					<!--										</a>-->
					<!--									</div>-->
					<!--								</div>-->
					<!--								<div class="post-info">-->
					<!--									<a href="blog-post.php?link=<?php echo $row['id']; ?>"><font color="black"><?php echo $row['title']; ?></font></a>-->
					<!--									<div class="post-meta">-->
					<!--									<?php echo $row['datee']; ?>-->
					<!--									</div>-->
					<!--								</div>-->
					<!--							</li>-->
					<!--							<?php-->
					<!--							}-->
					<!--							?>-->
					<!--						</ul>-->
					<!--					</div>-->
					<!--				</div>-->
					<!--			</div>-->
					<!--	<center>  <a href="view-blog.php"><button type="button" class="btn btn-3d btn-primary btn-xs">Load More Blogs from Recent</button></a></center>-->
					<!--</aside>-->
					<!--	</div>-->
					</div>
				</div>
			</div>
<?php
include('footer.php');
?>
	
