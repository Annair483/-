<?php
    $uname = isset($_GET['uname'])?$_GET['uname']:null;
    $upw = isset($_GET['upw'])?$_GET['upw']:null;
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'baiyang';
  	$conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        var_dump($conn->connect_error);
    }
    $conn->set_charset('utf8');
   
    $res = $conn -> query('select uname,password from sign where uname="'.$uname.'" and password="'.$upw.'"');
    if($res->num_rows > 0){
        echo "1";
        $res->close();
        $conn->close();
   }else{
       echo "0";
        $res->close();
        $conn->close();
   };
?>