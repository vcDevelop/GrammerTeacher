<?php
//error_reporting(E_ERROR | E_PARSE);
$Url=$_COOKIE['username'];
$des=$_REQUEST['desc'];
$lang=$_COOKIE['Langu'];
$db=$_COOKIE['teachername'];
$VideoTitle=$_COOKIE['vtitle'];
$lev=$_COOKIE['levelOp'];
$Playlist_name=$_COOKIE['playlist'];
$connection= mysqli_connect("localhost", "root", "", "allvideos");
if (!$connection) {
    echo "<script> alert('Teacher does not exist !!!') </script>";
    include 'UploadToS3.html';
}
$sql="INSERT INTO allvideos (id,teachername,title,playlist,learning_level,lang,de,thumbnail_url,Video_url,uploadDate)
    VALUES ('','$db','$VideoTitle','$Playlist_name','$lev','$lang','$des','NOTHING','$Url','')";
    mysqli_query($connection,$sql);
// $sql="CREATE TABLE $Playlist_name(
//     id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
//     title varchar(50),
//     de varchar(200),
//     Video_url varchar(50)
//     );";
// mysqli_query($connection,$sql);
// $sql="INSERT INTO $Playlist_name 
// (id,title,de,Video_url) 
// VALUES ('','$VideoTitle','$des','$Url')";
// mysqli_query($connection,$sql);
?>