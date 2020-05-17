<?php

//  * if student degree more than 85 % => A
//  * if student degree less than 85 % and more than 75% => B
//  * if student degree less than 75 % and more than 65% => C
//  * if student degree less than 65 % and more than 55% => D
//  * if student degree less than 55 => F
 

$studentDegree = '0';

// !(gettype($studentDegree) == 'integer' || gettype($studentDegree) == 'double'));

// if (!is_numeric($studentDegree)) {
//     echo 'Invalid Data should by number';
// } else if ($studentDegree > 100) {
//     echo 'Invalid Degree should be less than or equal 100';
// } else if ($studentDegree >= 85) {
//     echo 'A';
// } else if ($studentDegree >= 75) {
//     echo 'B';
// } else if ($studentDegree >= 65) {
//     echo 'C';
// } else if ($studentDegree >= 55) {
//     echo 'D';
// } else {
//     echo 'F';
// }
///////////////



// switch($studentDegree){
//     case(!is_numeric($studentDegree)):
//         echo 'Invalid Data should by number';
//     break;

//     case ($studentDegree >= 100):
//         echo  'Invalid Degree should be less than or equal 100';
//         break;

//     case($studentDegree >= 85):
//         echo 'A';
//         break;  

//     case($studentDegree >= 75):
//         echo 'B';
//         break;  

//     case($studentDegree >= 65):
//         echo 'c';
//         break;   

//     case($studentDegree >= 55):
//         echo 'D';
//         break;         

//     default:
//     echo 'F';
// }


switch(true){
    case(!is_numeric($studentDegree)):
        echo 'Invalid Data should by number';
    break;

    case ($studentDegree >= 100):
        echo  'Invalid Degree should be less than or equal 100';
        break;

    case($studentDegree >= 85):
        echo 'A';
        break;  

    case($studentDegree >= 75):
        echo 'B';
        break;  

    case($studentDegree >= 65):
        echo 'c';
        break;   

    case($studentDegree >= 55):
        echo 'D';
        break;         

    default:
    echo 'F';
}





