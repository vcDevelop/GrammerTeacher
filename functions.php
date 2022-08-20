<!-- INCLUDE DATABASE HERE -->
<?php include "data.php" ?>
<?php include "ControlPanel.php" ?>

<?php 
session_start();

         if(isset($_POST['StartQuiz'])) {
            if ($Number_Of_Questions <= count($Allquestions)){
               $_SESSION['endPage'] = 'true';
               $score = $_SESSION['score'];
               $RandomResult = $_SESSION['randomQuestion']; 
            }
            else {
               echo '<h5>please make ($Number_Of_Questions) in control panel less than questions in database . to run this quiz</h5>';
            }
         }
         else if(isset($_POST['option'])) { 
            $MyOption = $_POST['option'];
            $answer = $_SESSION['current_Answer'];   
            $RandomResult = $_SESSION['randomQuestion'];

            CheckQuestions($MyOption, $answer); 

            $score = $_SESSION['score'];
         }
         else {
            $_SESSION['endPage'] = 'false';
            $RandomResult = [];
            if ($Number_Of_Questions <= count($Allquestions)){

            Random_array();
            }else {
               echo '<h3>error the ($Number_Of_Questions) is more than questions that you added in database</h3>';
            }

   }


//this function make random array
// you shouldn't edit anything here
function Random_array () {
   global $Number_Of_Questions;
   global $Allquestions;
   $randomQuestion = [];

   $num = range(1,(count($Allquestions)));
   shuffle($num);
   if(count($num) >= $Number_Of_Questions){
      for ($i = 0; $i <= $Number_Of_Questions - 1; $i++) {   
         $result[$i] = $num[$i];   
         array_push($randomQuestion , $result[$i]);
      }  
   }
   
   $_SESSION['randomQuestion'] = $randomQuestion;
   $_SESSION['score'] = 0;
   $_SESSION['current_Question_Number'] = 1;
   $_SESSION['current_Answer'] = 'none';
}
function percentScore() {
   global $Number_Of_Questions;
   $score = $_SESSION['score'];
   $name ='lel';

   $percentScore = ($score*100)/$Number_Of_Questions;
   
   // after fixed mean it make the value with two Numbers after point ( 65.4326520978 => 65.43 )
   $percentScore_afterFixed = number_format((float)$percentScore, 2, '.', '');
   if ($percentScore_afterFixed >=30 && $percentScore_afterFixed<=60){
      echo  $percentScore_afterFixed . "%"."<br><b>Beginner level </b>" ;
      $cookie_value="Beginner";
   }
   elseif($percentScore_afterFixed>=61 && $percentScore_afterFixed<=75){
      echo  $percentScore_afterFixed . "%" ."<br><b>Intermediate level </b>" ;
      $cookie_value="Intermediate";
   }
   elseif($percentScore_afterFixed >=75 && $percentScore_afterFixed<= 100 ){
      echo  $percentScore_afterFixed . "%" . " <br><b>Advanced level </b>" ;
      $cookie_value="Advanced";
   }
   setcookie($name,$cookie_value);
   
}










// this function Check if the Answer is right it will add a point.d
function CheckQuestions($MyOption, $answer) {
   global $RandomResult;
   
         
      if ($MyOption == $answer && count($RandomResult) !== 0){
         $_SESSION['score']++;
//         RandomOption($MyOption, $newAnswer);
         NextQuestion();
      }
      else {
//         RandomOption($MyOption, $newAnswer);
         NextQuestion();
      }
   
}





// after Check Answer, this function takes the user to the next question
function NextQuestion() {
   global $RandomResult;
   array_shift($_SESSION['randomQuestion']);
   array_shift($RandomResult);
   $_SESSION['current_Question_Number']++;
   
}





function checkoption($answer){
   if ($answer == 'option1'){
      return 'option2';
   }
   else {
      return 'option1';
   }
}
// this function load all question and options from database
function optionsButtons() {
   global $RandomResult; 
   global $Allquestions; 
   global $Number_Beside_question; 
   global $MyOption;
   
   if($RandomResult){
      foreach($Allquestions as $data) {
         
            if($data['id'] == $RandomResult[0] ){

               if ($MyOption == $data['answer'] && count($data) > 4){
                  $NewData = $data;
                  
                  $correct_option_Value = $data[$data['answer']];
                  $second_option_Value = $data[checkoption($data['answer'])];
                  
                  $NewData[$data['answer']] = $second_option_Value;
                  $NewData[checkoption($data['answer'])] = $correct_option_Value;
                  $NewData['answer'] = checkoption($data['answer']) ;
                  $_SESSION['Question_data'] = $NewData;

               }else {
                  $_SESSION['Question_data'] = $data;
               }
               
               
               $_SESSION['current_Answer'] = $_SESSION['Question_data']['answer'];
               $C_Q_N = $_SESSION['current_Question_Number'];



               // load the question
               if($Number_Beside_question){
                  echo "<h1 class='question '>"."<span class='Number_Beside_question'>$C_Q_N- </span>".$_SESSION['Question_data']['question']."</h1>";
               }else {
                  echo "<h1 class='question'>".$_SESSION['Question_data']['question']."</h1>";
               }




               // load the options if you make it 3, 4 or 10 options      
               echo '<div class="Buttons_Div row justify-content-center m-0 p-0 " >';
                  for ($i = 1 ; $i < count($_SESSION['Question_data'])-2 ; $i++){
                     $optionNumber = 'option'.$i;
                     echo "<button 
                     type='submit' 
                     name='option'
                     value='$optionNumber'
                     class='"."$optionNumber"." options col-10 col-sm-2'
                     >".$_SESSION['Question_data'][$optionNumber]."</button>";
                  }  
               echo '</div>';





            }     
      }
   }
}







?>