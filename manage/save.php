<?php
$val=$_POST['status'];
$bianhao=$_POST['bianhao'];
$con = new mysqli("127.0.0.1","htac","htac","htacbook");
if(mysqli_connect_errno()){
    mysqli_connect_error();
}
$con->set_charset( "utf8" );
$sql1="UPDATE book SET status='未借出' where 编号 like '$bianhao'";
$sql2="UPDATE book SET status='已借出' where 编号 like '$bianhao'";
if($val=='归还'){
$con->query($sql1);
}
else if ($val=='借出'){
    $sql="SELECT * FROM book where 编号 like '$bianhao'";
    $search=$con->query($sql);
    $result = $search->fetch_assoc();
    if($result['status']=='已借出'){
        echo "book already lended";
        exit;
    }
    else{
        $con->query($sql2);
        $times=$result['lending_times']+1;
        $sql4="UPDATE book SET lending_times='$times' where 编号 like '$bianhao'";
        $con->query($sql4);
        print_r($times);
    }
}



$con->close();

header("Location: index.html");
?>