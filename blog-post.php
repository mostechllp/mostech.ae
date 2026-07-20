<?php

session_start();

?>
<?php
include('header.php');
$idd=$_GET['link'];
?>
	

<div role="main" class="main">
	<section class="page-header page-header-custom-background" style="background-image: url(img/custom-header-bg.jpg);">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<h1>Blog Details</h1>
							
							</div>
						</div>
					</div>
				</section>

				<div class="container">

					<div class="row">
						<div class="col-md-9">
							<div class="blog-posts single-post">
							<?php

include('admin/connection.php');
$stmt=$con->query("SELECT `id`, `title`, `content`, `small`, `datee`, `name`, `tag`, `isPopular`, `isImage`, `filee`, `tagUrl`, `imageSecond`, `isPdf`, `pdf` FROM `blog` where `id`='$idd'");
$row=$stmt->fetch();
$stmt3=$con->query("SELECT count(`id`) as sumId FROM `comment` where `fkBlogId`='$idd'");
$row3=$stmt3->fetch();
$sumCount=$row3['sumId'];
    ?>
								<article class="post post-large blog-single-post">
									<div class="post-image">
										<div class="owl-carousel owl-theme" data-plugin-options="{'items':1}">
											<div>
												<div class="img-thumbnail"><?php
                                                if($row['isImage']==1)
                                                {
                                                    ?>
                                                    <td>
														<iframe frameborder="0" allowfullscreen="" src="<?php echo $row['filee']; ?>" width="900" height="500"></iframe>
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
								<?php
								$string = $row['datee'];
								$timestamp = strtotime($string);
								$monthh=date("m", $timestamp);
								
								?>
									<div class="post-date">
										<span class="day"><?php echo date("d", $timestamp); ?></span>
										<?php

										if($monthh==1)
										{
											$mon="Jan";
										}
										if($monthh==2)
										{
											$mon="Feb";
										}
										if($monthh==3)
										{
											$mon="Mar";
										}
										if($monthh==4)
										{
											$mon="Apr";
										}
										if($monthh==5)
										{
											$mon="May";
										}
										if($monthh==6)
										{
											$mon="Jun";
										}
										if($monthh==7)
										{
											$mon="Jul";
										}
										if($monthh==8)
										{
											$mon="Aug";
										}
										if($monthh==9)
										{
											$mon="Sept";
										}
										if($monthh==10)
										{
											$mon="Oct";
										}
										if($monthh==11)
										{
											$mon="Nov";
										}
										if($monthh==12)
										{
											$mon="Dec";
										}

										?>
										<span class="month"><?php echo $mon; ?></span>
									</div>

									<div class="post-content">

										<h2><a href="blog-post.html"><?php echo $row['title']; ?></a></h2>

										<div class="post-meta">
									
									
												<span><i class="fa fa-user"></i> By <a href="#"><?php echo $row['name']; ?></a> </span>
												<span><i class="fa fa-tag"></i> <a href="<?php echo $row['tagUrl']; ?>"><?php echo $row['tag']; ?></a> </span>
												<span><i class="fa fa-comments"></i> <a href="#"><?php echo $sumCount; ?> Comments</a></span>
										</div>

										<p>		<?php
												echo str_replace(array("\n"),array("<br />"),$row['content']);
?>
										</p>

										<p>		<?php
												if($row['isPdf']==1)
												{
												?>
												<a href="admin/<?php echo $row['pdf']; ?>" download>
												<center><button class="btn btn-primary">Download PDF</button></center>
                                    
												</a>
												<?php
												}
												else
												{
												?>
												<a href="<?php echo $row['pdf']; ?>" target="_blank">
												<center><button class="btn btn-primary">Get PDF</button></center>
                                    
												</a>
												<?php
												}
											?>
										</p>

									

										<div class="post-block post-comments clearfix">
											<h3 class="heading-primary"><i class="fa fa-comments"></i>Comments (<?php echo $sumCount; ?>)</h3>

											<ul class="comments">
											<?php

include('admin/connection.php');
$stmt=$con->query("SELECT `id`, `fkBlogId`, `fkUserId`, `comment`, `reply`, `datee` FROM `comment` where `fkBlogId`='$idd' ORDER BY `id` desc limit 5");
$i=1;
while($row=$stmt->fetch())

{
    $uid=$row['fkUserId'];
    $stmt1=$con->query("SELECT `id`, `name`, `mobile`, `email`, `password` FROM `userlog` WHERE  `id`='$uid' ORDER BY `id` desc");
$row1=$stmt1->fetch();
	?>
												<li>
													<div class="comment">
														<div class="img-thumbnail">
															<img class="avatar" alt="" src="img/avatars/avatar-2.jpg">
														</div>
														<div class="comment-block">
															<div class="comment-arrow"></div>
															<span class="comment-by">
																<strong><?php echo $row1['name']; ?></strong>
																
															</span>
															<p><font color="blue"> <?php echo $row1['email']; ?></font></p>
															<br/>
															<p><?php echo $row['comment']; ?></p>
															<span class="date pull-right"><?php echo $row['datee']; ?></span>
														</div>
													</div>

													<?php
													if($row['reply']=="")
													{

													}
													else
													{
														?>
<ul class="comments reply">
												
												<li>
													<div class="comment">
														<div class="img-thumbnail">
															<img class="avatar" alt="" src="img/avatars/avatar-4.jpg">
														</div>
														<div class="comment-block">
															<div class="comment-arrow"></div>
															<span class="comment-by">
																<strong>Website Admin</strong>
																<span class="pull-right">
																	<span> <a href="#"><i class="fa fa-reply"></i> Reply</a></span>
																</span>
															</span>
															<p><?php echo $row['reply']; ?></p>
														</div>
													</div>
												</li>
											</ul>
														<?php
													}
													?>
													
												</li>
												<?php
}
?>
											</ul>

										</div>



										<?php
										if(isset($_POST['Comment']))
										{

// session_start();
include('admin/connection.php');


	if(!isset($_SESSION['userId']))
	{
		?>
          <script>
        window.location.href="user.php"; 
      </script>
          <?php
	}
	
$uid=$_SESSION['userId'];
$idd=$_POST['idd'];

	$comment=$_POST['comment1'];

	$stmt=$con->prepare("INSERT INTO `comment`(`fkBlogId`, `fkUserId`, `comment`) VALUES (?,?,?)");
	$stmt->bindValue(1,$idd);
	$stmt->bindValue(2,$uid);
	$stmt->bindValue(3,$comment);
	$res=$stmt->execute();
	if($res)
	{
		?>
		<script>
        alert("Successfully Added !");
		window.location.href="blog-post.php?link=<?php echo $idd; ?>";
        
      </script>
        <?php
        
// header('Location: ' . $_SERVER['HTTP_REFERER']);
	}
	else
		{
			?>
			<script>alert("Adding Failed !");</script>
			<?php
		
header('Location: ' . $_SERVER['HTTP_REFERER']);
	
		}

	}
	
		?>


										<div class="post-block post-leave-comment">
											<h3 class="heading-primary">Leave a comment</h3>
										
											<form action="" method="post">
												
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Comment *</label>
														<input type="hidden" value="<?php echo $idd; ?>" name="idd">
															<textarea maxlength="5000" rows="10" class="form-control" name="comment1" id="comment" required></textarea>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<input type="submit" value="Post Comment" name="Comment" class="btn btn-primary btn-lg" data-loading-text="Loading...">
													</div>
												</div>
											</form>
										</div>

									</div>
								</article>

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
	
