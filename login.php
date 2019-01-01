<?php include 'inc/header.php' ;?>
<?php
	$login = Session::get("cuslogin");
	if ($login == true) {
		header("Location:order.php");
	}
?>
<?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])){
    	$custLogin = $cmr->customerLogin($_POST);
    }
   ?>

 <div class="main">
    <div class="content">
    	 <div class="login_panel">
    	 <?php
    		if (isset($custLogin)) {
    			echo $custLogin;
    		}
    	?>
        	<h3>Existing Customers</h3>
        	<p>Sign in with the form below.</p>
        	<form action="" method="post">
                	<input name="email" placeholder="Please Enter Your Email" type="text">
                    <input name="pass"  placeholder="Please Enter Your Password" type="password">
                     <div class="buttons"><div><button class="grey" name="login">Sign In</button></div></div>
                    </div>
            </form>
                   


   <?php
	    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['register'])){
	    	$customerReg = $cmr->customerRegistration($_POST);
	    }
   ?>
    	<div class="register_account">
    	<?php
    		if (isset($customerReg)) {
    			echo $customerReg;
    		}
    	?>
    		<h3>Register New Account</h3>
    		<form action="" method="post">
		   			 <table>
		   				<tbody>
						<tr>
						<td>
							<div>
							<input type="text" name="name" placeholder="Please Enter Your Name"/>
							</div>
							
							<div>
							   <input type="text" name="city" placeholder="Please Enter Your City"/>
							</div>
							
							<div>
								<input type="text" name="zip" placeholder="Please Enter Your Zip Code"/>
							</div>
							<div>
								<input type="text" name="email" placeholder="Please Enter Your Email"/>
							</div>
		    			 </td>
		    			<td>
						<div>
							<input type="text" name="address" placeholder="Please Enter Your Address"/>
						</div>

		    			<div>
							<input type="text" name="country" placeholder="Please Enter Your Country"/>
						</div> 

						<div>
							<input type="text" name="phone" placeholder="Please Enter Your Phone Number "/>
						</div>  
						<div>
							<input type="text" name="pass" placeholder="Please Enter Your Password"/>
						</div>         
	
			            
		    	</td>
		    </tr> 
		    </tbody></table> 
		   <div class="search"><div><button class="grey" name="register">Create new Account</button></div></div>
		    <div class="clear"></div>
		    </form>
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>

<?php include 'inc/footer.php' ;?>