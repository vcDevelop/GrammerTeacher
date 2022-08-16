<?php
$conn = mysqli_connect("localhost", "root", "", "test");
         if($conn === false){
             die("ERROR: Could not connect. "
                 . mysqli_connect_error());
         }
         $username =  $_POST['login-email'];
         $password = $_POST['login-password'];
         $sql = "SELECT * FROM student_signup WHERE signup_email='$username' AND signup_password='$password'";
         $result = mysqli_query($conn, $sql);
         $count = mysqli_num_rows($result);  
         if($count == 1){  
             include 'Std_index.html'; 
         }  
         else if($count !=1 && $username !=null){  
                      include 'Login.html';
         }     
         else{
            include 'Login.html';
         }
         mysqli_close($conn); 
?>