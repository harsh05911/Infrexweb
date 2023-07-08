<?php
$name = $_POST['name'];
$mobile = $_POST['mobile'] ;
date_default_timezone_set("Asia/Calcutta");

$enq_time = time() ;
$formatted_time=date('Y-m-d H:i:s' ,$enq_time);

$link = mysqli_connect("localhost", "root", "", "infrex_db"); 
  
			if ($link ==  false) { 
				die("ERROR: Could not connect. ".mysqli_connect_error()); 
			} 
  
  
			$sql = "INSERT INTO curriculum_enquiry(name,mobile,enq_time)  
								VALUES('$name', '$mobile' , '$formatted_time') "; 
		  
		
			if (mysqli_query($link, $sql)) 
			{ 
				// echo "Records inserted successfully."   ; 
                header('Location:infrexm.html');
                 die;
			} 
			else
			{ 
				echo "ERROR: Something went wrong  "    ;
				mysqli_error($link); 
			} 
  
			mysqli_close($link);

?>
