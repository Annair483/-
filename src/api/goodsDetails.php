<?php
    $id = isset($_GET['id'])?$_GET['id']:1;
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'baiyang';
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        var_dump($conn->connect_error);
    };
    $conn->set_charset('utf8');
    $res = $conn -> query('select * from goodslist where id='.$id);
    $godsDeta = $res->fetch_all(MYSQLI_ASSOC);
    echo   json_encode($godsDeta);
    $res -> close();
    $conn -> close();

    ?>