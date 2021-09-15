<?php
// phpinfo();
$server = "localhost";
$username = "root";
$password = "";

$con = mysqli_connect($server,$username,$password,"entry form");

if(!$con){
   // die("connection failed".mysqli_connect_error());
   echo "connection failed";
}
else
{//echo"sucess connecting to db";
    if(isset($_POST['submit'])){
$chaptorno = $_POST['chaptorno'];
	$chaptorname= $_POST['chaptorname'];
	$topicno = $_POST['topicno'];
	$topicname = $_POST['topicname'];
	$myfile = $_POST['myfile'];
    }
// exit();
$sql = "INSERT INTO `neet_chemistry_topics` ( chaptorno, chaptorname, topicno, topicname, myfile) VALUES ('".$chaptorno."', '".$chaptorname."', '".$topicno."', '".$topicname."', '".$myfile."')";
$result= mysqli_query($con,$sql);
$dup=mysqli_query($con,"select * from neet_chemistry where chaptorno='$chaptorno'");
if(mysqli_num_rows($dup)>0)
{
    echo"bik";
}
else{

$sql1 = "INSERT INTO `neet_chemistry` ( chaptorno, chaptorname) VALUES ('".$chaptorno."', '".$chaptorname."')";
//$result= mysqli_query($con,$sql);
$result= mysqli_query($con,$sql1);
}
if($result){
    echo "Sucessfully Submitted";
}
else{
    echo "ERROR: $sql <br> $con->error";
}
}
//else{
  //  echo "Sucessfully submitted";
//}



?>