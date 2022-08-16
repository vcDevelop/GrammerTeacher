<?php
//$dp="test";
$password = $_REQUEST['teacher_Password'];
$First_Name= strtolower($_REQUEST['teacher_Name']);
$Sur_Name =strtolower($_REQUEST['teacher_sur']);
$dp=strtolower($First_Name.'_'.$Sur_Name);
$conn = mysqli_connect("localhost", "root", "", "$dp");
         if($conn === false){
             die("ERROR: Could not connect. "
                 . mysqli_connect_error());
         }
        //$Email=  $_POST[''];
        //  $password = $_REQUEST['teacher_Password'];
        //  $First_Name= strtolower($_REQUEST['teacher_Name']);
        //  $Sur_Name =strtolower($_REQUEST['teacher_sur']);
        //  $sql = "SELECT * FROM teacher_signup WHERE teacher_Email='$username' AND teacher_password='$password'";
        // $dp=strtolower($First_Name.'_'.$Sur_Name);
        $sql="SELECT * FROM personal_details WHERE tname='$dp' AND pws='$password'";
        $result = mysqli_query($conn, $sql);
        //$row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        //echo $result;
        $count=mysqli_num_rows($result);  
         //echo $count;
         if($count != 0){  
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