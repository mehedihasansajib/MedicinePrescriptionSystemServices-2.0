<?php include 'inc/header.php' ;?>
<?php
	$login = Session::get("cuslogin");
	if ($login == false) {
		header("Location:login.php");
	}
?>
<style>
.psuccess{width: 500px;min-height: 200px;text-align: center;border:1px solid #ddd;margin:0 auto;padding: 20px;}
.psuccess h2{border-bottom: 1px solid #ddd; margin-bottom: 20px;padding: 10px;}
.psuccess p{font-size: 18px;line-height: 25px;text-align: left;}
</style>
 	<div class="main">
	    <div class="content">
	    	<div class="section group">
				<div class="psuccess">
					<h2>Success</h2>
					<p style="color: red">Total payable Amount(Including Vat) : Tk
					<?php
						$cmrId = Session::get("cmrId");
						$amount = $ct->payableAmount($cmrId);
						if ($amount) {
							$sum = 0;
							while ($result = $amount->fetch_assoc()) {
								$price = $result['price'];
								$sum = $sum + $price;

							    }

					
								$vat = $sum * 0.04;
								$total = $sum + $vat;
								echo $total;
							}
					?>
					</p>
					<p>Thanks for Purchase. we Receive Your Order Successfully. We will contact You As soon as possible with delivery Details. Here is Your Order Details....<a href="orderdetails.php">Visit Here..</a> </p>
				</div>
	 		</div>
	 	</div>
	</div>
<?php include 'inc/footer.php' ;?>

