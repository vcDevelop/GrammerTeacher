<?php
$db="test";
$conn = mysqli_connect("localhost", "root","", "$db");
         if($conn === false){
             die("ERROR: Could not connect. "
                 .mysqli_connect_error());
         }
         $signup_email =$_REQUEST['teacher_Email'];
         $username =strtolower($_REQUEST['teacher_Name']);
         $password =$_REQUEST['teacher_Password'];
         $mn=strtolower($_REQUEST['teacher_sure']);
//$sql="INSERT INTO teacher_signup (teacher_Name, teacher_Email , teacher_password,OTP) VALUES ('$username','$signup_email','$password','$OTP')";
// $sql="CREATE TABLE $username ( name VARCHAR(30),email VARCHAR(30),pws INT(10))";
// $sql="INSERT INTO $username (name,email,pws) VALUES ('$username','$signup_email','$password')";
$username=$username.'_'.$mn;
$sql="CREATE DATABASE $username";
mysqli_query($conn, $sql);
$db=$username;
$conn=mysqli_connect("localhost", "root","", "$db");
$sql="CREATE TABLE Personal_details ( tname VARCHAR(30),email VARCHAR(30),pws INT(10))";
mysqli_query($conn, $sql);
$sql="INSERT INTO Personal_details (tname,email,pws) VALUES ('$username','$signup_email','$password')";
if(mysqli_query($conn, $sql)){
    include "teacherLogin.html";
}         
else if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
          } 
         mysqli_close($conn); 
?>