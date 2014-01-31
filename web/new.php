<body bgcolor="#E9755E">


<?php

$m=$_POST['email'];
$url="http://turnbuddy.com/mail.php?mail=".$m;
$homepage = file_get_contents($url);

?>
<?php





$username=$_POST['username'];
$password=$_POST['password'];
$s=0

$dbhost = 'localhost';
$dbuser = 'nila_nila';
$dbpass = '123456';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}















$sql = "INSERT INTO user 
       (`username`,`password`,`status` ) 
       VALUES ('$username','$password','$s')";

mysql_select_db('nila_nila');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not enter data: ' . mysql_error());
}
?>
<h2>Thanks For Register  !!!</h2>
<form action="http://www.ayurvedtreatment.info/register/" method="post">
<input type="submit" value="Back">
</form>