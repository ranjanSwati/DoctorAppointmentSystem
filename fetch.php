<?php

$connect = mysqli_connect("localhost", "root", "", "projectdas");
$output = '';
if(isset($_POST["query"]))
{
	$search = mysqli_real_escape_string($connect, $_POST["query"]);
	if($search===" "){
		$query = "
	SELECT * FROM medicalcollege";
	}
	else{
	$query = "
	SELECT * FROM medicalcollege WHERE name LIKE '$search%' OR location LIKE '$search%' OR acronym LIKE '$search%'";
	}
}
else
{
	$query = "SELECT * FROM medicalcollege";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
	$output .= '<div class="table-responsive" >
					<table class="table table bordered">
					<tr>
					<th>No.</th><th>Name</th><th>Acronym</th><th>Established</th><th>Location</th>
				</tr>';
	while($row = mysqli_fetch_array($result))
	{
		$output .= '
		<tr>
		<td>'.$row["S_No"].'</td>
		<td>'.$row["name"].'</td>
		<td>'.$row["acronym"].'</td>
		<td>'.$row["established"].'</td>
		<td>'.$row["location"].'</td>
		
		
		</tr> 
			';
	}
	echo $output;
}
else
{
	echo 'Data Not Found';
}
?>