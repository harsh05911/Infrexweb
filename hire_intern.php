<?php

echo "hello" ; 
$tech_dm = "N" ;
$tech_web = "N" ; 
$demo = "hello world" ; 
$name = $_POST['name'];
$mobile = $_POST['mobile'] ;
$email = $_POST['email'] ;
$company_name = $_POST['company_name'] ; 
$designation = $_POST['designation'] ;
$numberofintern = $_POST['numberofintern'] ;
$enq_time = time() ;
date_default_timezone_set("Asia/Calcutta");
$formatted_time=date('Y-m-d H:i:s' ,$enq_time);

if(!empty($_POST['fullstackdm'])){
    $tech_dm = 'Y' ; 
}
if(!empty($_POST['fullstackweb'])){
    $tech_web ='Y';
}
echo $name;
$link = mysqli_connect("localhost", "root", "", "infrex_db"); 
  
			if ($link ==  false) { 
				die("ERROR: Could not connect. ".mysqli_connect_error()); 
			} 
  
  
			$sql = "INSERT INTO hire_intern(company_name,name,designation,numberofintern,email,mobile,digitalmarketing,webdevelopment,enq_time)  
								VALUES('$company_name','$name','$designation' ,'$numberofintern' ,'$email', '$mobile','$tech_dm','$tech_web' , '$formatted_time') "; 
		  
		
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
