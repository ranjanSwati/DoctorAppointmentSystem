<?php session_start();  ?>
<?php include('header.php'); ?>


	<!-- this is for donor registraton -->
	<div class="login" style="background-color:#fff;">
		<h3 class="text-center" style="background-color:#272327;color: #fff;">Donor/Seeker Login</h3>
			<div class="formstyle" style="float: right;padding:20px;border: 1px solid lightgrey;margin-right:415px; margin-bottom:30px;background-color: #101011;color: #0d0623;">
				<form action="" method="post" class="text-center form-group">
					<label>
						Email: <input type="email" name="email"  placeholder="email" required>
					</label><br><br>
					<label>
						Password: <input type="password" name="password"  placeholder="password" required>
					</label><br><br>
					<button name="submit" type="submit" style="margin-left:36px;width: 85px;border-radius: 3px;">Login</button> <br>

					<span style="color:#fff;">Not a member yet?</span> <a href="DonorSeekerReg.php" title="create a account" target="" style="color:#fff;">&nbsp;Sign Up</a> <br>
					<!-- login validation -->
			<?php 
					$_SESSION['donorstatus']="";
							
				if(isset($_POST["submit"])){

							include('config.php');

							$sql= "SELECT * FROM registration WHERE email= '" . $_POST["email"]."' AND password= '" . $_POST["password"]."'";

							$result = $conn->query($sql);

									if ($result->num_rows > 0) {
											$_SESSION["email"]= $_POST["email"];
											$_SESSION["donar_id"]= $_POST["donar_id"];
											$_SESSION['donorstatus']= "yes";
										    echo "<script>location.replace('donor/dashboard.php');</script>";
										} else {
										    echo "<span style='color:red;'>Invalid username or password</span>";
										}
						$conn->close();		
					}
					
 			?>
		<!-- login validation End-->


				</form> <br>&nbsp;&nbsp;&nbsp;
				
				<br>			
		
	</div>	
</div>
	
 <?php include('footer.php'); ?>
	</div><!--  containerFluid Ends -->

	<script src="js/bootstrap.min.js"></script>
	
</body>
</html>

