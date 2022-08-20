<?php
$db="allvideos";
$connection= mysqli_connect("localhost", "root", "", "$db");
$sql="SELECT COUNT(*) playlist FROM allvideos";
$result=mysqli_query($connection,$sql);
$row = $result->fetch_assoc();
$len=$row['playlist'];
$sql="SELECT playlist FROM allvideos";
$result=mysqli_query($connection,$sql);
$ro = $result->fetch_assoc();
$q1 = mysqli_query($connection,$sql);
$rows = mysqli_fetch_all($q1, MYSQLI_ASSOC);
$play=array();
echo"<br>";
for($i=0; $i<count($rows); $i++) { 
    $row=implode($rows[$i]);
    for($j=0; $j<count($play);$j++) { 
        if(implode($rows[$i])==$play[$j]){
            $i++;
        }
    }
    array_push($play,implode($rows[$i]));
}
$se="";
?>
<html>
<body>
    <form action="index.php" method="POST" >
    <input type="text" name="search" placeholder="search..">
    <button type="submit" name="videoByTitle"> search </button>
</form>
<form action="index.php" method="POST" >
    <label for="Playlist">playlist:</label>
        <select id="Playlist" name="Playlist" required >
<?php $a=0;while ($a < count($play)) :?>
<option value="<?php echo"$play[$a]";?>"><?php echo"$play[$a]";?></option>
<?php $a++; endwhile;?>
</select>
<button id="Apply" type="submit"name="Apply">Apply</button>
</form>
<?php
$sqlll = "SELECT Video_url FROM allvideos  ORDER BY RAND() LIMIT 1";
$res=mysqli_query($connection,$sqlll);
while($Roww = mysqli_fetch_array($res)) {
 $ranvid=$Roww['Video_url'];
 if(!isset($_POST['videoByTitle']) && !isset($_POST['Apply'])){?>
    <video id="myVideo" width="320" height="240" controls src="<?php echo $ranvid ?>"></video>
   <?php }}?>
<div class="container">
<?php
if(isset($_POST["videoByTitle"])){
$titlevideo =$_REQUEST['search'];
$sql="SELECT * FROM allvideos WHERE title = '$titlevideo'";
$result=mysqli_query($connection,$sql);
$sqll="SELECT COUNT(*) FROM allvideos WHERE title = '$titlevideo'";
while($Row = mysqli_fetch_array($result)) {
    $ID = $Row['id'];
    $Name = $Row['title'];
    $videourl = $Row['Video_url'];
    $desss = $Row['de'];
    $teachname = $Row['teachername'];
    $learninglevel = $Row['learning_level'];
    $llang = $Row['lang'];
    $playy = $Row['playlist'];   

?>
<br>
    <div class="some_class">
<video id="myVideo" width="320" height="240" controls src="<?php echo $videourl ?>"></video>
<p><?php echo  "Desciption:".$desss ?></p>
<p><?php echo "teacherame:" .$teachname ?></p>
<p><?php echo "Title:".$Name ?></p>
<p><?php echo "Video For:".$learninglevel ?></p>
<p><?php echo "Video Language:".$llang ?></p>
<p><?php echo "Playlist:".$playy?></p>
</div>
<?php
} 
}
if(isset($_POST['Playlist'])) {
    $playli=$_REQUEST['Playlist'];
    $sql="SELECT * FROM allvideos WHERE playlist = '$playli'";
    $result=mysqli_query($connection,$sql);
    $sqll="SELECT COUNT(*) FROM allvideos WHERE playlist = '$playli'";
    while($Row = mysqli_fetch_array($result)) {
        $ID = $Row['id'];
        $Name = $Row['title'];
        $videourl = $Row['Video_url'];
        $desss = $Row['de'];
        $teachname = $Row['teachername'];
        $learninglevel = $Row['learning_level'];
        $llang = $Row['lang'];
    ?>
    <br>
    <video id="myVideo" width="320" height="240" controls src="<?php echo $videourl ?>"></video>
    <p><?php echo $desss ?></p>
    <p><?php echo $teachname ?></p>
    <p><?php echo $Name ?></p>
    <p><?php echo $learninglevel ?></p>
    <p><?php echo $llang ?></p> 
</div>
<?php
    }
}
?>
</body>
</html>