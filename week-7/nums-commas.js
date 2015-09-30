// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: David O Keefe

// Pseudocode

//Pseudocode
// Convert the number to an array of string.
// Reverse the array.
// Create a new variable to hold the new number
// Iterate through the array and slice into groups of three.
//Put each slice into the new variable and 
//add "," after each group.
//Put the last element(s) in to the new variable.
//Reverse the new variable and connect the numbers 
//and commas inside it.

// Initial Solution
function separateComma(number){
 var array=number.toString().split("").reverse();
 var newNumber=[];
 for (var i=0; i<array.length; i+=3) {
    newNumber.push(array.slice(i,i+3));
    newNumber.push(",")    
  };
  newNumber.pop();
  var flat_arr=[];
  for (var i=0; i<=newNumber.length-1; i=i+1) {
	  flat_arr=flat_arr.concat(newNumber[i]);
  };
  flat_arr=flat_arr.reverse().join("");
  console.log(flat_arr); 
 }

// Refactored Solution

function separateComma(number){
  var reverseNumber=number.toString().split("").reverse();
  var sliceNumber=[];
  for (var i=0; i<reverseNumber.length; i+=3) {
    sliceNumber.push(reverseNumber.slice(i,i+3));
    if (reverseNumber.length - i > 3){
      sliceNumber.push(",");
    };
  };
  var formattedNumber = [].concat.apply([],sliceNumber);
  formattedNumber=formattedNumber.reverse().join("");
  console.log(formattedNumber);
 }


// Your Own Tests (OPTIONAL)
separateComma(1000)
separateComma(10000)
separateComma(100000)
separateComma(1000000)
separateComma(10000000)

// Reflection

// What was it like to approach the problem from 
//the perspective of JavaScript? Did you approach the 
//problem differently?
//We approached the problem the same way as before, 
//trying to stick with the same logic. JavaScript has
// different syntax that we had to learn. We also had to 
// learn the behaviors of Javascript methods which are 
// different from RUby methods in some cases.

// What did you learn about iterating over arrays in 
//JavaScript?
//We learned to use the for loop and conditional 
//statments to iterate over an array.

// What was different about solving this problem in 
//JavaScript?
//The main difference was when we couldn't use some of the
//same methods that we used in the previous assignment, 
//we had to come up with loops and other ways to 
//make accommodate, without looking up new built-in 
//methods. 

// What built-in methods did you find to incorporate 
//in your refactored solution? 
// We combined #concat with #apply to replace the 
// loop that concatenated the contents of the array 
// in the initial solution.