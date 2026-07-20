<?php
include('header.php');
?>

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>View Gallery</h2>
					
						<div class="right-wrapper pull-right">
                        <ol class="breadcrumbs">
								<li>
                                <a href="index">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>View Gallery &emsp;</span></li>
							</ol>
					
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
							
						
							</header>
							<div class="panel-body">
								<table class="table table-bordered table-striped mb-none" id="datatable-default">
									<thead>
										<tr>
                                        <th>#</th>
										
										<th>Image</th>
										<th>Action</th>
										<th>Delete</th>
										</tr>
									</thead>
									<tbody>
									<?php

include('connection.php');
$stmt=$con->query("SELECT * FROM `gallery` ORDER BY `id` desc");
$i=1;
while($row=$stmt->fetch())

{
    ?>


                                            <tr>
                                                <td><?php echo $i; ?></td>
                                              

									<td><img src="<?php echo $row['img']; ?>" width="150" height="150"></td>
			
			<?php
                                                if($row['ishom']==1)
                                                {
                                                    ?>  <td>
                                         

                                                    <a href="uptPop1.php?idd=<?php echo $row['id']; ?>"><button type="button" class="mb-xs mt-xs mr-xs btn btn-primary">Home Image</button></a>
                                                      
                                
                                                    </td>
                                                    <?php
                                                }
                                                else
                                                {
                                                    ?>
  <td>
                                         

                                         <a href="uptNotPop1.php?idd=<?php echo $row['id']; ?>"><button type="button" class="mb-xs mt-xs mr-xs btn btn-danger">Normal Image</button></a>
                                           
                     
                                         </td>
                                                    <?php
                                                }
                                                ?>
											 <td>
                                         
										 <a href="deleteGal.php?idd=<?php echo $row['id']; ?>"><button type="button" class="mb-xs mt-xs mr-xs btn btn-warning">Delete</button></a>
										   
										 </td>		
												
                                            </tr>
                                        <?php
    $i++;
    }
    ?>
									
									</tbody>
								</table>
							</div>
						</section>
						
						
					
					<!-- end: page -->
				</section>
			</div>

		</section>

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/magnific-popup/jquery.magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery-placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="assets/vendor/select2/js/select2.js"></script>
		<script src="assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
		<script src="assets/vendor/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script>
		<script src="assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>

		<!-- Examples -->
		<script src="assets/javascripts/tables/examples.datatables.default.js"></script>
		<script src="assets/javascripts/tables/examples.datatables.row.with.details.js"></script>
		<script src="assets/javascripts/tables/examples.datatables.tabletools.js"></script>
	</body>
</html>