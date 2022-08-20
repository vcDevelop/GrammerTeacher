<!-- values you can Change it -->
<?php 
   
   // don't make it more than question in database
   $Number_Of_Questions = 10;//Number Of Questions in Quiz 

   //Number of question comes beside question  
   $Number_Beside_question = true;// its style is ( .Number_Beside_question )

   // display the score in the quiz
   $showScore = true;  // its style is ( .ScoreMassage ) 



// display score if $showScore was true
function DisplayScore() {
   global $showScore;
   $score = $_SESSION['score']; 
   
   
}



?>