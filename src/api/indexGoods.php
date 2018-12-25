<?php
	$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'baiyang';
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        var_dump($conn->connect_error);
    }
    $conn->set_charset('utf8');
     $hot = $conn -> query('select * from goodslist where id BETWEEN 1 AND 8');
     $res = $conn -> query('select * from goodslist where id BETWEEN 9 AND 20');
     $hotCon = $hot->fetch_all(MYSQLI_ASSOC);
     $resCon = $res->fetch_all(MYSQLI_ASSOC);
    //  var_dump($hotCon);
    //  var_dump($resCon);
     $all = [$hotCon,$resCon];
    //  var_dump($all);
     echo json_encode($all);
     $hot->close();
     $res->close();
     $conn->close();
?>