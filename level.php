<?php include "functions.php" ?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width">
   <title>LastCode Quiz</title>
   <!--      Some Font    -->
   <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
   <!--      QuizPages css file    -->
    <link rel="stylesheet" href="QuizPages.css">
   <!--      BootStrap     -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

   
   
<body style="background: #3B2F2F">
<?php if(!$RandomResult && $_SESSION['endPage'] === 'false'){ ?>
   
   
<!--    StartPage            StartPage            StartPage     -->     
   <div id="StartPage" class="StartPage row m-0 p-0 align-items-center">

      <form action="level.php" class="col-12 row m-0 p-0 justify-content-center" method="post" >
         <div class="StartBox">
            <h1 class="title">Let's Start The Quiz</h1>
            <div class="rules">
               <h3>this is simple quiz about nothing </h3>
               <h3>this quiz by LastCode</h3>
               <h3>there is <?php echo $Number_Of_Questions; ?> question in the quiz</h3>
            </div>
            <button class="StartButton" value="StartQuiz" name="StartQuiz" >start</button> 
         </div>
      </form>

   </div>


<?php } if($RandomResult){ ?>   
  
  
   <!-- QuizPage -   --   - QuizPage -   --   - QuizPage -->   
   <div id="QuizPage" class="QuizPage row m-0 p-0 align-items-center">
            
      <form action="level.php" class="Quiz_form col-12 row p-0 m-0 align-items-center" method="post">
         <?php DisplayScore(); ?>
         <div class="quiz_box col-12">
            <!--  question and options generator -->
            <?php optionsButtons(); ?>
         </div>
      </form>

   </div>



<?php  } if (!$RandomResult && $_SESSION['endPage'] === 'true'){ ?>
     
           
   <!-- EndPage -   --   - EndPage -   --   - EndPage -->   
   <div class="EndPage row m-0 p-0 align-items-center justify-content-center">

      <div class="End_Box col-12 col-md-6">
         <h1><?php echo $_COOKIE['lel'];echo"<br>"; percentScore();  ?></h1>
         <h2>your score is <?php echo "$score".' of '."$Number_Of_Questions" ;?></h2>
          <form method="POST" action="login.html">
    <input type="submit" value = "Ok"/>   
      </div>
    
 </form> 
   </div>

     
<?php } ?>
</body>
</html>




