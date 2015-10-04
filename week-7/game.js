// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: win the ball game
// Goals: be the first team to score 10 points
// Characters: team1, team2
// Objects: team1, team2, ball
// Functions: points scored, win

// Pseudocode
//Create 2 teams

//Define a function to compute the point scored 
//(0, 1, 2, or 3) using the random number generator.

//Define a function that gives each team possession
//of the ball.

//Call the random number score function.
//Record the points scored by team1.
//Keep running points total for team1.

//Call the random number score function.
//Record the points scored by team2.
//Keep running points total for team2.

//Print the points total for each team.
//Use a loop and a bollean to keep playing the game and 
//check if one team has accumulatd 10 points or more.

// Initial Code

var redTeam={
  points: 0,
  total: 0,
  win: function(){
    console.log("Red Team wins!");},
};
var blueTeam={
  points: 0,
  total: 0,
  win: function(){
    console.log("Blue Team wins!");},
};
function score() {
  return Math.floor(Math.random()*4);
};
var points;
var end=false;
while(end==false){
  points=score();
  redTeam.points=points;
  console.log("Red Team scores " + points + " point(s)");
  redTeam.total=redTeam.points+redTeam.total;
  if (redTeam.total>=10){
         redTeam.win(); 
         end = true;
       }
  else {
  points=score();
  blueTeam.points=points;
  console.log("Blue Team scores " + points + " point(s)");
  blueTeam.total=blueTeam.total+blueTeam.points;
  if (blueTeam.total>=10){
          blueTeam.win(); 
          end = true;};
  };
  console.log("Score: Red: "+redTeam.total+"   Blue: "+blueTeam.total);
 
}

//Refactored solution

function Team(name, points, total){
  this.name = name;
  this.points = points;
  this.total = total;
};
var redTeam = new Team("Red Team",0,0);
var blueTeam = new Team("Blue Team",0,0);
function winner(team) {
  team.win = function() {
    console.log(team.name + " wins!")
  };
};
var ball = {
  possession:"",
};
ball.possess = function (team) {
  this.team = team;
};
function score() {
  return Math.floor(Math.random()*4);
};
var points;
var gameEnd=false;
while(gameEnd==false){  
  ball.possess(redTeam.name)
  console.log(ball.team+" has the ball")
  points=score();
  redTeam.points=points;
  console.log("Red Team scores " + points + " point(s)");
  redTeam.total=redTeam.points+redTeam.total;
  	if (redTeam.total>=10){
         winner(redTeam);
         redTeam.win(); 
         gameEnd = true;
       }
  else {
  ball.possess(blueTeam.name)
  console.log(ball.team+" has the ball")
  points=score();
  blueTeam.points=points;
  console.log("Blue Team scores " + points + " point(s)");
  blueTeam.total=blueTeam.total+blueTeam.points;
    if (blueTeam.total>=10){
          winner(blueTeam);
          blueTeam.win(); 
          gameEnd = true;};
  };
  console.log("Score: Red: "+redTeam.total+"   Blue: "+blueTeam.total+"\n");
 
}

// Reflection
//What was the most difficult part of this challenge?
//Conceptualizing the game, pseudocode, and breaking the 
//problems down.

// What did you learn about creating objects and functions 
// that interact with one another?
//I learned to create an object type, instantiate new objects, 
//and add and modify object properties. I also learned to 
//write functions as an object property, write methods
// to modify an object's property, and pass information between
//objects.

// Did you learn about any new built-in methods 
// you could use in your refactored solution? 
// If so, what were they and how do they work?
//I used the constructor function in the refactored solution
//so I could create new teams 

// How can you access and manipulate properties of objects?
// Object properties can be manipulated using the dot notation
//or by defining a function.