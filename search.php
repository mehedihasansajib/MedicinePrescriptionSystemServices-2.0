<?php include 'inc/header.php' ;?>
<?php
	$search = mysqli_real_escape_string($db->link, $_GET['search']);
	if (!isset($search) || $search == NULL ) {
		header("Location:index.php");
	}else{
		$search = $search;
	}

?>

<div class="contentsection contemplete clear">
<div class="maincontent clear">

	<div class="content">
    	<div class="content_top">
    		<div class="heading"></div>
    		<div class="clear"></div>
    	</div>
	    <div class="section group">

	      <?php
				$query = "select * from tbl_product where productName like '%$search%' or body like '%$search%'";
				$post = $db->select($query);
				if ($post) {
					while ($result = $post->fetch_assoc()) {

			?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					 <h2><?php echo $result['productName']; ?></h2>
					 <p><?php echo $fm->textShorten($result['body'], 60); ?></p>
					 <p><span class="price">Tk<?php echo $result['price']; ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>" class="details">Add To Cart</a></span></div>
				</div>
			<?php } } else { ?>
			<?php header("Location:index.php");} ?>
		</div>

	</div>
</div>
<?php include 'inc/footer.php' ;?>