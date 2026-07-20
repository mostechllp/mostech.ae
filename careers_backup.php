<?php
include('header.php');
?>

<div role="main" class="main">
    <section class="page-header page-header-custom-background" style="background-image: url(img/custom-header-bg.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1><b>Careers</b></h1>
                </div>
            </div>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <h3>
                <center>No records found..</center>
            </h3>
            <div class="col-md-12">
                <div class="blog-posts">
                    <?php
                    include('admin/connection.php');
                    $stmt = $con->query("SELECT * FROM `careers` ORDER BY `id` desc");
                    while ($row = $stmt->fetch()) {
                        $blogId = $row['id'];
                        $stmt3 = $con->query("SELECT count(`id`) as sumId FROM `comment` where `fkBlogId`='$blogId'");
                        $row3 = $stmt3->fetch();
                        $sumCount = $row3['sumId'];
                    ?>
                        <article class="post post-medium">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="post-image">
                                        <div class="owl-carousel owl-theme" data-plugin-options="{'items':1}">
                                            <div>
                                                <div class="embed-responsive embed-responsive-16by9">
                                                    <td><img class="img-responsive" src="admin/<?php echo $row['filee']; ?>" alt=""> </td>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <div style="text-align: justify" class="post-content">
                                        <h4>
                                            <font color="black"><b><?php echo $row['title']; ?></b></font>
                                        </h4>
                                        <span align="justify" class="claimedRight" maxlength="200">
                                            <font color="black">
                                                <?php
                                                echo str_replace(array("\n"), array("<br />"), $row['descr']);
                                                ?>
                                            </font>
                                        </span>
                                        &nbsp; [...]
                                        <hr>
                                        <div class="post-meta">
                                            <?php
                                            $original_date = $row['datee'];
                                            // Creating timestamp from given date
                                            $timestamp = strtotime($original_date);
                                            // Creating new date format from that timestamp
                                            $new_date = date("d-m-Y", $timestamp);
                                            ?>
                                            <span><i class="fa fa-calendar"></i>
                                                <font color="black"><?php echo $new_date; ?> </font>
                                            </span>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><i class="fa fa-tag"></i>
                                                <font color="black">Status : </font>


                                                <?php
                                                if ($row['status'] == 1) {
                                                ?>
                                                    <button type="button" class="mb-xs mt-xs mr-xs btn btn-primary">ACTIVE</button>
                                                <?php
                                                } else {
                                                ?>
                                                    <button type="button" class="mb-xs mt-xs mr-xs btn btn-danger">INACTIVE</button>
                                                <?php
                                                }
                                                ?>
                                                
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
        </div>
    </div>
</div>

<?php
include('footer.php');
?>