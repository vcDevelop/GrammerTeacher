<?php
$dp="test";
$password = $_REQUEST['teacher_Password'];
$First_Name= strtolower($_REQUEST['teacher_Name']);
$Sur_Name =strtolower($_REQUEST['teacher_sur']);
$user=strtolower($First_Name.'_'.$Sur_Name);
$conn = mysqli_connect("localhost", "root", "", "$dp");
         if($conn === false){
             die("ERROR: Could not connect. "
                 . mysqli_connect_error());
         }
        $sql="SELECT * FROM teacher_signup WHERE teacher_Name='$user' AND teacher_password='$password'";
        $result = mysqli_query($conn, $sql);
        $count=mysqli_num_rows($result);  
         //echo $count;
         if($count != 0){  
            setcookie('teachername',$user);
            setcookie('dbname',$dp);
             include 'tindex.html';
         }  
         else if($count ==0 && $First_Name !=null){  
            include 'teacherlogin.html';}
        //  else{
        //     include 'tindex.html';
        //  }    
         mysqli_close($conn);
?>