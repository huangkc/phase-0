//Letter Grades

// Calculate a letter grade!

// Complete each step below according to the challenge directions and
// include it in this file. Also make sure everything that isn't code
// is commented in the file.

// I worked on this challenge [by myself, with: ].

// Pseudocode

// What is the input?  A list of numerical scores
// What is the output? (i.e. What should the code return?)A letter grade A, B, C, D,E, or F
// What are the steps needed to solve the problem? 
// -Find the average of the scores.
// -Determine where the average falls in the ranges associated with letter grades
// -return the letter grade associated with the average

1. Initial Solution

function get_grade(scores){
  var x=0
  for (var i=0; i<scores.length; i++){
     var x=x+scores[i];    
  };  
  var mean=x/scores.length;
  if (mean <= 100 && mean >= 90) {
    var grade = 'A'}
  else if (mean <= 89 && mean >= 80) {
     grade = 'B'}
  else if (mean <= 79 && mean >= 70){
       grade= 'C'}
  else if (mean <= 69 && mean >= 60){ 
     grade = 'D' }
  else {grade= 'F'}        
  console.log(grade)
}

// Refactored solution

var average;
function mean(scores){
  var total=0;  
  for (var i=0; i<scores.length; i++){
     total=total+scores[i];    
  };  
  average=total/scores.length;
}

function get_grade(scores){
  mean(scores)
  if (average <= 100 && average >= 90) {
    var grade = 'A'}
  else if (average <= 89 && average >= 80) {
     grade = 'B'}
  else if (average <= 79 && average >= 70){
       grade= 'C'}
  else if (average <= 69 && average >= 60){ 
     grade = 'D' }
  else {grade= 'F'}        
  console.log(grade)
}

//Reflection
// What concepts did you solidify in working on this challenge? 
//I reviewed Javascript syntax, conditional statements, and loops.

// What was the most difficult part of this challenge?
// Trying to debug syntax errors was difficult.

// Did you solve the problem in a new way this time?
// I solved the problem this time by making more than one object.

// Was your pseudocode different from the Ruby version? 
// What was the same and what was different?
// I used the same pseudocode for both. The pseudocode from Ruby
// was very general so that it applied this time as well.