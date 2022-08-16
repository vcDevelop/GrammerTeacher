<?php
$conn = mysqli_connect("localhost", "root", "", "test");
         if($conn === false){
             die("ERROR: Could not connect. "
                 . mysqli_connect_error());
         }
         $signup_email = $_REQUEST['signup-email'];
         $username =  $_REQUEST['signup-username'];
         $password = $_REQUEST['signup-password'];
         $DOB =$_REQUEST['signup_DOB'];
        function ageCalculator($DOB){
    if(!empty($DOB)){
        $birthdate = new DateTime($DOB);
        $today   = new DateTime('today');
        $age = $birthdate->diff($today)->y;
        return $age;
    }else{
        return 0;
    }
}
$signup_Age=ageCalculator($DOB);
$sql = "INSERT INTO student_signup  VALUES ('$username',
'$password','$signup_email','$DOB','$signup_Age')";
         if(mysqli_query($conn, $sql)){
             include "Login.html";
  
         } else{
                      include 'Login.html';
         }
         mysqli_close($conn); 
?>