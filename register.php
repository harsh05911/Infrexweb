<?php

$demo = "hello world" ; 
$name = $_POST['name'];
$mobile = $_POST['mobile'] ;
$email = (string)$_POST['email'] ;
$course = $_POST['course'] ; 
$batch = $_POST['batch'] ;
date_default_timezone_set("Asia/Calcutta");
$enq_time = time() ;
$formatted_time=date('Y-m-d H:i:s' ,$enq_time);

// echo $demo ;
// echo $name ;
// echo $mobile ;
// echo $email ; 
// echo $course ; 
// echo $batch  ;
$link = mysqli_connect("localhost", "root", "", "infrex_db"); 
  
			if ($link ==  false) { 
				die("ERROR: Could not connect. ".mysqli_connect_error()); 
			} 
  
  
			$sql = "INSERT INTO candidate_detail(name,mobile,email,batch,course , enq_time)  
								VALUES('$name','$mobile','$email','$batch','$course' , '$formatted_time') "; 
		  
		
			if (mysqli_query($link, $sql)) 
			{ 
				//echo "Records inserted successfully."   ; 
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
