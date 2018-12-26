<?php
    $qty = isset($_GET["qty"])? $_GET["qty"]: 20;
    $currentPage = isset($_GET["currentPage"])? $_GET["currentPage"]: 1;
	$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'baiyang';
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        var_dump($conn->connect_error);
    }
    $conn->set_charset('utf8');
     $gdsList = $conn -> query('select * from goodslist where id>20');
    //  列表页数据
     $godsListCon = $gdsList->fetch_all(MYSQLI_ASSOC);
     $len = count($godsListCon);
     $data = array_slice($godsListCon,($currentPage-1)*$qty,$qty);
     $res = array(
        "data" => $data,
        "len" => $len,
        "qty" => $qty,
        "currentPage" => $currentPage
    );
    echo json_encode($res,JSON_UNESCAPED_UNICODE);
     $gdsList->close();
     $conn->close();