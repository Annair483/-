<?php
    $uname = isset($_GET["uname"])?$_GET["uname"]:null;
    $upw = isset($_GET["upw"])?$_GET["upw"]:null;
    $email = isset($_GET["email"])?$_GET["email"]:null;
	$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'baiyang';
  	$conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        var_dump($conn->connect_error);
    }
    $conn->set_charset('utf8');
   
    $res = $conn -> query('select uname from sign where uname="'.$uname.'"');

     if($res->num_rows > 0){
     	echo "0";
    	 $res->close();
    	 $conn->close();
     	  
    }else{
    	$conn -> query('insert into sign (uname,password,email) values ("'.$uname.'","'.$upw.'","'.$email.'")');
        $conn->close();
         echo "1";
    }
?>