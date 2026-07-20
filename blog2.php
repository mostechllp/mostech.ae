<?php
include('header.php');
?>
		<div role="main" class="main">
	<section class="page-header page-header-custom-background" style="background-image: url(img/custom-header-bg.jpg);">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<h1><b>Blog</b></h1>
							
							</div>
						</div>
					</div>
				</section>

				<div class="container">

					<div class="row">
						<div class="col-md-9">
							<div class="blog-posts">
							<?php

include('admin/connection.php');
$stmt=$con->query("SELECT `id`, `title`, `content`, `small`, `datee`, `name`, `tag`, `isPopular`, `isImage`, `filee`, `tagUrl`, `imageSecond` FROM `blog` ORDER BY `id` desc limit 3");

while($row=$stmt->fetch())

{
	$blogId=$row['id'];
	$stmt3=$con->query("SELECT count(`id`) as sumId FROM `comment` where `fkBlogId`='$blogId'");
$row3=$stmt3->fetch();
$sumCount=$row3['sumId'];
    ?>
								<article class="post post-medium">
									<div class="row">

										<div class="col-md-5">
											<div class="post-image">
												<div class="owl-carousel owl-theme" data-plugin-options="{'items':1}">
													<div>
													<div class="embed-responsive embed-responsive-16by9">
													<?php
                                                if($row['isImage']==1)
                                                {
                                                    ?>
                                                    <td>
														<iframe frameborder="0" allowfullscreen="" src="<?php echo $row['filee']; ?>"></iframe>
                                                    <?php
                                                }
                                                else
                                                {
                                                    ?>
		<img class="img-responsive" src="admin/<?php echo $row['filee']; ?>" alt="">
													
                                                    <?php
                                                }
                                                ?>
												
											</div>
													</div>
												
												</div>
											</div>
										</div>
										<div class="col-md-7">

											<div style="text-align: justify" class="post-content">

												<h4><a href="blog-post.php?link=<?php echo $row['id']; ?>"><?php echo $row['title']; ?></a></h4>
												<span align="justify" class="claimedRight" maxlength="200">
												<?php
												echo str_replace(array("\n"),array("<br />"),$row['content']);
?>
 </span>
  <!-- &nbsp; [...] -->
  <a href="blog-post.php?link=<?php echo $row['id']; ?>" class="btn btn-xs btn-primary pull-right"> Read more...</a>
												<hr>	
												<div class="post-meta">
													<?php
													$original_date = $row['datee'];
 
													// Creating timestamp from given date
													$timestamp = strtotime($original_date);
													 
													// Creating new date format from that timestamp
													$new_date = date("d-m-Y", $timestamp);

													?>
												<span><i class="fa fa-calendar"></i><?php echo $new_date; ?> </span>
												<span><i class="fa fa-user"></i> By <a href="#"><?php echo $row['name']; ?></a> </span>
												<span><i class="fa fa-tag"></i> <a href="<?php echo $row['tagUrl']; ?>"><?php echo $row['tag']; ?></a> </span>
												<span><i class="fa fa-comments"></i> <a href="#"><?php echo $sumCount; ?> Comments</a></span>
												
											</div>
											</div>
										</div>

									</div>
								

								</article>
								<?php
}
?>
								
														

								
							

							</div>
						</div>

						<div class="col-md-3">
							<aside class="sidebar">
								<div class="tabs mb-xlg">
									<ul class="nav nav-tabs">
										<li><a href="#recentPosts" data-toggle="tab">Recent</a></li>
										<li class="active"><a href="#popularPosts" data-toggle="tab"><i class="fa fa-star"></i> Popular</a></li>
									
									</ul>
									<div class="tab-content">
										<div class="tab-pane active" id="popularPosts">
											<ul class="simple-post-list">
											<?php

include('admin/connection.php');
$stmt=$con->query("SELECT `id`, `title`, `content`, `small`, `datee`, `name`, `tag`, `isPopular`, `isImage`, `filee`, `tagUrl`, `imageSecond` FROM `blog` where `isPopular`='1' ORDER BY `id` desc limit 20");

while($row=$stmt->fetch())

{
    ?>

												<li>
													<div class="post-image">
														<div class="img-thumbnail">
															<a href="blog-post.php?link=<?php echo $row['id']; ?>">
															<img src="admin/<?php echo $row['imageSecond']; ?>" alt="" height="50" width="50">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="blog-post.php?link=<?php echo $row['id']; ?>"><?php echo $row['title']; ?></a>
														<div class="post-meta">
														<?php echo $row['datee']; ?>
														</div>
													</div>
												</li>
												<?php
}
?>
											
											</ul>
											
													<ul class="pagination pagination-xsm pull-right">
									<li><a href="#">«</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">»</a></li>
								</ul>
								
										</div>
										<div class="tab-pane" id="recentPosts">
											<ul class="simple-post-list">
											<?php

include('admin/connection.php');
$stmt=$con->query("SELECT `id`, `title`, `content`, `small`, `datee`, `name`, `tag`, `isPopular`, `isImage`, `filee`, `tagUrl`, `imageSecond` FROM `blog` ORDER BY `id` desc limit 20");
$i=1;
while($row=$stmt->fetch())

{
	if($i<=3)
	{
		?>
		<script>alert("qw");</script>

		<?php
	}
	else
	{
    ?>
<script>alert("erer");</script>
												<li>
													<div class="post-image">
														<div class="img-thumbnail">
															<a href="blog-post.php?link=<?php echo $row['id']; ?>">
																<img src="admin/<?php echo $row['imageSecond']; ?>" alt="" height="50" width="50">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="blog-post.php?link=<?php echo $row['id']; ?>"><?php echo $row['title']; ?></a>
														<div class="post-meta">
														<?php echo $row['datee']; ?>
														</div>
													</div>
												</li>
												<?php
	}
												$i++;
}
?>
											
												
											</ul>
													<ul class="pagination pagination-xsm pull-right">
									<li><a href="#">«</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">»</a></li>
								</ul>
										</div>
									</div>
								</div>
								</aside>
						</div>
					</div>

				</div>

			</div>

<?php
include('footer.php');
?>
	
