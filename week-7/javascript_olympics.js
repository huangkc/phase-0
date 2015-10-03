 // JavaScript Olympics

// I paired [by myself, with: Michael London] on this challenge.

// This challenge took me [2] hours.


// Warm Up

// Bulk Up

var sarah = {
  name: "Sarah Hughes",
  event: "Ladies' Singles",
};

function winner(athlete) {
  athlete.win = function() {
      console.log(athlete.name + " won the " + athlete.event);
  };
};
winner(sarah);
sarah.win()

// Jumble your words

function reverseWord(words) {
 console.log(words.split("").reverse().join("") );
};
reverseWord("!sdrow ruoy elbmuJ");

// 2,4,6,8
function evenNumber(number) {
  var evenNumbers=[];
  for (var i=0; i<number.length; i+=1) {
   if (number[i]%2==0) {
     evenNumbers.push(number[i]);
    };
   };
  console.log(evenNumbers);
}
evenNumber([1,2,3,4,5,6,7,8,9,10])

function findNumbers(numbers) {
  return numbers%2==0;
};

function findEvenNumbers(numbers) {
  var evens =[];
  evens=numbers.filter(findNumbers);
  console.log(evens);
};

var numbers=[1,2,3,4,5,6,7,8,9,10];
findEvenNumbers(numbers);

// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};

//Driver test code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
//Accessing object properties, manipulating arrays and strngs, 
//using loops to iterate through arrays, and constructing
//objects using the constructor function.

// What are constructor functions? A constructor function allows
// you to create a generic object so you can create instances of
//that object.

// How are constructors different from Ruby classes (in your research)?
// Variables inside the constructor function are defined
//using ".this". The scope of variables inside the constructor 
//follows a different set of rules than instance variables in 
//Ruby. Ruby classes has methods inside. The constructor contains
//variables and functions.