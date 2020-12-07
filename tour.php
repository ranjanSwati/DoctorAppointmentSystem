<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<!-- <title>Webslesson Demo - Ajax Live Data Search using Jquery PHP MySql</title> -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" /> 
	
  <title>Concert</title>
  <?php include "session.php"; ?>
  <?php// require_once "bootstrap.php"; ?>
  <?php //require_once "bootstrap1.php"; ?>

  <style type="text/css">
    <?php
    if (isset($_SESSION['mail'])) {
      include "modal.css";
    } else {
      include "modal1.css";
    }
    ?>body {
      color: white;
    }
    .w-nav-link {
      
      float: right;
      text-decoration: none;
      color: #dddddd;
      margin-right: 30px;
      text-transform: capitalize !important;

    }
    .nav-bar {
      background-color: transparent;
    }

    .w-container {
      margin-left: auto;
      margin-right: auto;
      max-width: 940px;
    }

    #nav {
      background-color: transparent;
    }

    .logo {
      padding-top: 8px;
    }

    .w-nav {
      position: relative;
      background: #dddddd;
      z-index: 1000;
    }

    .w-nav-brand {
      position: relative;
      float: none;
      text-decoration: none;
      color: #333333;
    }

    .w-nav-overlay {
      position: absolute;
      overflow: hidden;
      display: none;
      top: 100%;
      left: 0;
      right: 0;
      width: 100%;
    }

    body {

      background-image: url(img/music.png);
      background-size: cover;
      overflow: scroll;
      background-repeat: no-repeat;
      background-attachment: fixed;
    }

    .content-wrapper {
      margin-top: 78px;
    }

    .w-container {
      margin-left: auto;
      margin-right: auto;
      max-width: 940px;
    }

    .page-title {
      margin-top: 0px;
      margin-bottom: 86px;
      font-size: 36px;
      line-height: 51px;
      font-weight: 300;
      text-align: center;
      text-transform: uppercase;
    }

    .footer {
      padding-top: 43px;
      padding-bottom: 43px;
      background-color: transparent;
      color: #222;
      text-align: center;
    }

    .venue-list-item {
      padding-top: 5px;
      padding-bottom: 5px;
      border-top: 1px solid hsla(0, 0%, 100%, .3);
      border-bottom: 1px solid hsla(0, 0%, 100%, .3);
    }



    @media screen and (max-width: 991px) {

      .w-container {
        max-width: 728px !important;
      }

      .w-nav[data-collapse="medium"] .w-nav-menu {
        display: none;
      }

      .nav-menu {
        padding-top: 18px !important;
        padding-bottom: 18px !important;
        border-top: 1px solid #000 !important;
        background-color: rgba(0, 0, 0, .85) !important;
      }

      .w-container {
        max-width: 728px !important;
      }

      .logo {
        padding-top: 8px !important;
        width: 10% !important;
      }
    }

    @media (max-width: 767px) {


      .logo {
        padding-top: 8px !important;
        width: 10% !important;
      }
    }

    @media screen and (max-width: 479px) {
      .w-container {
        max-width: none !important;
      }

      .logo {
        padding-top: 8px !important;
        width: 10% !important;
      }
    }

    #a {
      color: #2675ae;
      text-decoration: none;
    }

    .new {
      margin-top: 16px;
      padding: 15px 20px;
      text-align: center;
    }

    .head {

      text-align: center;
    }

    .login {

      margin: 0 auto;
      width: 340px;
    }

    label {
      color: #0e0e0f;
    }

    .bd1 {

      background-color: transparent;
      font-size: 14px;
      padding: 20px;
    }

    .btn-primary {
      background-color: #2675aed9;
    }

    form label {
      display: block;
      margin-bottom: 7px;
    }

    input {
      margin-bottom: 15px;
      margin-top: 5px;
    }

    .label-link {
      margin-left: 7em;
    }

    .form-control {
      background-color: #ffffffc2;
    }

    #p {
      color: black;

    }
    .search{
      width: 80% ;
      height: 30px;
    }
    
    span{
      width: 30px !important ;
      display: inline !important;
    }
   tr{
     margin: 30px !important;
     
   }
   /* .inp{
     display: inline;
   } */
  </style>
</head>

<body>
  <?php require_once "navbar.php"; ?>
  <div class="content-wrapper w-container">
    <h1 class="page-title">
      <font style="vertical-align: inherit;background: linear-gradient(to right,#E20D13, #F0E300, #A4C615, #4363AB,#BE4A94,#E30922);-webkit-background-clip: text;-webkit-text-fill-color: transparent;/* color: transparent; */">
        <font style="vertical-align: inherit;  font-family: sans-serif;">WE'RE COMING TO YOUR CITY!</font>
      </font>
    </h1>

  </div>
  <div class="container">
			<br />
			<br />
			<br />
			<h2 align="center">SEARCH CONCERT</h2><br />
			<div class="form-group">
				<div class="inp">
					<span class="input-group-addon">Search</span>
					<input style="color:black" type="text" name="search_text" id="search_text"  class="search" />
				</div>
			</div>
			<br />
			<div style="color:#A4C615;" id="result"></div>
		</div>
		<div style="clear:both"></div>


  <?php
  if (isset($_SESSION['mail'])) {
    include "modal.php";
  } else {
    include "modal1.php";
  }
  ?>

  <!-- The Modal -->
  <?php require_once "footer.php"; ?>

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
<script>
    // Get the modal
    var modal = document.getElementById('myModal');

    // Get the button that opens the modal
    //var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal 
    function op() {
      modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
      modal.style.display = "none";
    }
  </script>
  <script type="text/javascript">
    $(document).ready(function() {

      var quantitiy = 0;
      $('.quantity-right-plus').click(function(e) {

        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantity').val());

        // If is not undefined

        $('#quantity').val(quantity + 1);

        var t = Number(document.getElementById("quantity").value);
        var r = Number(document.getElementById("quantty").value);
        document.getElementById("myText").value = t * 4000 + r * 9000;


        // Increment

      });

      $('.quantity-left-minus').click(function(e) {
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantity').val());

        // If is not undefined

        // Increment
        if (quantity > 0) {
          $('#quantity').val(quantity - 1);
        }

        var t = Number(document.getElementById("quantity").value);
        var r = Number(document.getElementById("quantty").value);
        document.getElementById("myText").value = t * 4000 + r * 9000;
      });

    });
  </script>

  <script type="text/javascript">
    $(document).ready(function() {

      var quatiy = 0;
      $('.quantity-right-plus1').click(function(e) {

        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quanity = parseInt($('#quantty').val());

        // If is not undefined


        $('#quantty').val(quanity + 1);
        var t = Number(document.getElementById("quantity").value);
        var r = Number(document.getElementById("quantty").value);
        document.getElementById("myText").value = t * 4000 + r * 9000;


        // Increment

      });

      $('.quantity-left-minus1').click(function(e) {
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantty').val());

        // If is not undefined

        // Increment
        if (quantity > 0) {
          $('#quantty').val(quantity - 1);
        }
        var t = Number(document.getElementById("quantity").value);
        var r = Number(document.getElementById("quantty").value);
        document.getElementById("myText").value = t * 4000 + r * 9000;
      });

    });
  </script>
  <script>
    function che() {
      var to = Number(document.getElementById("myText").value);
      if (to > 0) {
        document.getElementById("tic").click();
      } else {
        alert("Total amount should be greater than 0");
      }
    }
  </script>
</body>

</html>