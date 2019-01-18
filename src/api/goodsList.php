<?php
    $qty = isset($_GET["qty"])? $_GET["qty"]: 20;
    $currentPage = isset($_GET["currentPage"])? $_GET["currentPage"]: 1;
    $fieldName = isset($_GET["fieldName"])? $_GET["fieldName"]: null;
    $sort = isset($_GET["sort"])? $_GET["sort"]: 'asc';
	header("content-type:text/html;charset=utf-8");
    include 'aaa.php';
    if($fieldName){
        if($sort==='asc'){
            $gdsList = $conn -> query('select * from goodslist ORDER BY ('.$fieldName.'+0)');
        }else if($sort==='desc'){
            $gdsList = $conn -> query('select * from goodslist ORDER BY ('.$fieldName.'+0)'.$sort);
        }
    }else{
        $gdsList = $conn -> query('select * from goodslist');
    }
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
?>