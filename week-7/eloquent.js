// Eloquent JavaScript

// Run this file in your terminal using
 // `node my_solution.js`. 
 // Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var x = 5
console.log(x*x) 


// Write a short program that asks for a user to input 
// their favorite food. After they hit return, have the 
// program respond with "Hey! That's my favorite too!" 
// (You will probably need to run this in the Chrome console 
// rather than node since node does not support prompt or alert). 
// Paste your program into the eloquent.js file.
// var anwer=prompt("What is your favorite food?");
// console.log("Hey! That is my favorite too!");

// Complete one of the exercises: Looping a Triangle, 
//FizzBuzz, or Chess Board
for (var i = 1; i <=100; i++) {
  if (i%5==0 && i%3==0)
    console.log("FizzBuzz");
    else if (i%5==0 && i%3!=0)
    	console.log("Buzz");
  	else if (i%3==0)
		console.log("Fizz");
    else console.log(i);
}

// Functions

// Complete the `minimum` exercise.
function min(num1, num2){
  return Math.min(num1,num2);
};

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Terry",
  age: 30,
  favorite_food: ["orange", "spinach", "apple"],
  quirk: "I love writing code",
}


// Reflection
// What are the biggest similarities and differences between 
//JavaScript and Ruby?


// Was some of your Ruby knowledge solidified by learning 
//another language? If so, which concepts?

// How do you feel about diving into JavaScript after 
//reading these chapters?