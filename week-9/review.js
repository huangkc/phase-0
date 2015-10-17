// Validating Credit Card
// Input: credit card number
// Output: "true" if valid or "false" if not valid
// Steps: 
// Check if the card number is exactly 16 digits
// If it is, convert the number to a string and split that string into an array 
// Convert the even-number positions of the array into integers and double each of them
// Convert the array into a string and split each item of the array
// Convert each item of the array to integers
// Sum the array
// Check if the sum is divisible by 10
// Return true if divisible by 10 and falase otherwise

//Initial solution
var sum=0;
function CreditCard(number){
    this.number = number;
    var num=number.toString().split('');
    if (num.length!=16){
      console.log("Credit card number must be 16 digits!")   
    }
}

function CheckCard(number){
  number = number.toString().split('')
  for(var i=0; i<number.length;i++){
    number[i]=parseInt(number[i])
  }
  for(var j=0; j<number.length; j++){
    if (j%2==0) number[j]=number[j]*2
  }
  number = number.join('').toString().split('')
  for (var k=0; k < number.length; k++){
      number[k]=parseInt(number[k])
      sum=sum+number[k]
   }
  if (sum%10===0){
    console.log("This is a valid number!")
  } else {
    console.log("This is not a valid number!")
  };

}

var card1 = new CreditCard(4563960122001999)
CheckCard(card1.number)

 //Refactored solution

var next=true;
function CreditCard(number){
    this.number = number;
}

function checkNumber(number){
    var num=number.toString().split('');
    if (num.length!=16){
      console.log("Credit card number must be 16 digits!")
      next=false
    };
}

function CheckCard(number){
    checkNumber(number)

    if (next===true) {
    number = number.toString().split('')
    
    for(var i=0; i<number.length;i++){
      number[i]=parseInt(number[i])
      if (i%2==0){ number[i]=number[i]*2};
  }
      
    number = number.join('').toString().split('')
    
    for (var k=0; k < number.length; k++){
      number[k]=parseInt(number[k])
      sum=sum+number[k]
   }
    if (sum%10===0){
    console.log("This is a valid number!")
  } else {
    console.log("This is not a valid number!")
  };
    };
}

var card1 = new CreditCard(4563960122001999)
CheckCard(card1.number)

//Reflection
// What concepts did you solidify in working on this challenge? 
//I reviewed Javascript syntax, conditional statements, and loops.

// What was the most difficult part of this challenge?
// Converting between strig and integers and iterating
// through the data structure.

// Did you solve the problem in a new way this time?
// I followed a similar approach this time.

// Was your pseudocode different from the Ruby version? 
// What was the same and what was different?
// I used the same pseudocode for both. The pseudocode from Ruby
// was very general so that it applied this time as well.


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
