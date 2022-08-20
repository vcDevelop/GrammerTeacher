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
    if ($i==0){
        array_push($play,implode($rows[$i]));
    }
    for($j=0; $j<count($play);$j++) { 
        if(implode($rows[$i])==$play[$j]){
            $i++;
        }
    }
    array_push($play,implode($rows[$i]));
}
$se="";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Playlist</title>
</head>
<body>
<form action="#" method="post">
<label for="Playlist">playlist:</label>
        <select id="Playlist" name="Playlist" required >
<?php $a=0;while ($a < count($play)) :?>
<option value="<?php echo"$play[$a]";?>"><?php echo"$play[$a]";?></option>
<?php $a++; endwhile;?>
</select>
<button id="Apply" type="submit"name="Apply">Apply</button>
</form>
<?php
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
<div class="some_class">
<video id="myVideo" width="320" height="240" controls src="<?php echo $videourl ?>"></video>
<p><?php echo $desss ?></p>
<p><?php echo $teachname ?></p>
<p><?php echo $Name ?></p>
<p><?php echo $learninglevel ?></p>
<p><?php echo $llang ?></p>

</div>
<?php
} 
}?>
</div>
</body>
</html>