<!-- <?php
	/*
	 	连接数据库：操纵数据库
	 		* 写好配置信息
	 		* 检测是否连接成功
	 */
	
	//中文乱码
	header("content-type:text/html;charset=utf-8");
	
	//配置信息
	$servername = 'localhost';//主机名
	$username = 'root';//登陆数据库的用户名
	$password = '';//如果用wamp就是为空，用phpstudy 密码是 root
	$dbname = 'baiyang';//数据库名称
	
	//创建数据库连接
	$conn = new mysqli($servername,$username,$password,$dbname);
	if ($conn->connect_error) {
        var_dump($conn->connect_error);
    }
	
	//设置编码:
	//乱码：编码方式不一致的时候，数据的来源(csv、xls)/数据的存储(数据库数据表)/php(接口)/html(前端页面)
	$conn->set_charset('utf8');

	
?> -->