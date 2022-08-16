<?php
error_reporting(E_ERROR | E_PARSE);
$Url=$_COOKIE['username'];
$db=$_COOKIE['dbname'];
$VideoTitle=$_COOKIE['vtitle'];
$Playlist_name=$_COOKIE['playlist'];
$connection= mysqli_connect("localhost", "root", "", "$db");
if (!$connection) {
    echo "<script> alert('Teacher does not exist !!!') </script>";
    include 'UploadToS3.html';
}
$sql="CREATE TABLE $Playlist_name(
    id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title varchar(50),
    description varchar(200)
    );";
mysqli_query($connection,$sql);
?>