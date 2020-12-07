<?php include('header.php'); ?>


	<!-- mc info -->
	<div class="form-group mc">
		<h2 class="text-center" style="background-color:#272327;color: #fff;">Medical Colleges in India</h2>

        <div class="container">
			
			<h2 align="center">SEARCH</h2><br />
			<div class="form-group">
				<div class="inp">
					<!-- <span class="input-group-addon">Search</span> -->
					<input style="width:80%" type="text" name="search_text" id="search_text"   />
				</div>
			</div>
			
		</div>
			<div style="color:#A4C615;" id="result"></div>
		<div style="clear:both"></div>
	

    <!-- footer section --> 
			 <?php include('footer.php'); ?>
		<!-- footer section Ends--> 


	
	</div><!--  containerFluid Ends -->



	<script src="js/bootstrap.min.js"></script>
    <script>
   $(document).ready(function(){
	load_data();
	function load_data(query)
	{
		$.ajax({
			url:"fetch.php",
			method:"post",
			data:{query:query},
			success:function(data)
			{
				$('#result').html(data);
			}
		});
	}
	
	$('#search_text').keyup(function(){
		var search = $(this).val();
		if(search != '')
		{
			load_data(search);
		}
		else
		{
			// load_data();			
		}
	});
});
</script> 
	
</body>
</html>