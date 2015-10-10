// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [1.75] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Go through each object in Votes

// For each vote for each person in the object Votes, 
//check if the name already exists in the voteCount object. 

//If not, add the name and assign it value of 1. 

//If the name already exists, increment the value for the name by 1.

//Go through the voteCount object and find the name of the person
//with the most votes in each category.

//Add the name of the person with the most votes in each category
//to the Officers object.
//

// __________________________________________
// Initial Solution

for (var name in votes){
  if (votes[name].president in voteCount.president){
    voteCount.president[votes[name].president]+=1
  }else {
    voteCount.president[votes[name].president]=1};

  if (votes[name].vicePresident in voteCount.vicePresident){
    voteCount.vicePresident[votes[name].vicePresident]+=1
  } else {
    voteCount.vicePresident[votes[name].vicePresident]=1};

   if (votes[name].secretary in voteCount.secretary){
    voteCount.secretary[votes[name].secretary]+=1
  } else {
    voteCount.secretary[votes[name].secretary]=1};

  if (votes[name].treasurer in voteCount.treasurer){
    voteCount.treasurer[votes[name].treasurer]+=1
  } else {
    voteCount.treasurer[votes[name].treasurer]=1};
};

var winner = [];
for (var name in voteCount.president) {
  winner.push(voteCount.president[name]);
};

winner.sort(function(a, b) {
  return a - b;
});

var x=winner[winner.length-1];
for (var name in voteCount.president) {
  if (voteCount.president[name] ==x) {
    officers.president = name;
  };
};

var winner = [];
for (var name in voteCount.vicePresident) {
  winner.push(voteCount.vicePresident[name]);
};

winner.sort(function(a, b) {
  return a - b;
});

var x=winner[winner.length-1];
for (var name in voteCount.vicePresident) {
  if (voteCount.vicePresident[name] ==x) {
    officers.vicePresident = name;
  }
}

var winner = [];
for (var name in voteCount.secretary) {
  winner.push(voteCount.secretary[name]);
};

winner.sort(function(a, b) {
  return a - b;
});

var x=winner[winner.length-1];
for (var name in voteCount.secretary) {
  if (voteCount.secretary[name] ==x) {
    officers.secretary = name;
  };
};

var winner = [];
for (var name in voteCount.treasurer) {
  winner.push(voteCount.treasurer[name]);
};

winner.sort(function(a, b) {
  return a - b;
});

var x=winner[winner.length-1];
for (var name in voteCount.treasurer) {
  if (voteCount.treasurer[name] ==x) {
    officers.treasurer = name;
  };
};

// __________________________________________
// Refactored Solution
function tally(position){
  for (var name in votes){
  if (votes[name][position] in voteCount[position]){
    voteCount[position][votes[name][position]]+=1
    } else {
    voteCount[position][votes[name][position]]=1
    };
    };
  };

function winner(position) {
  var winnerArray = [];
  for (var name in voteCount[position]) {
  winnerArray.push(voteCount[position][name]);
  };
  
  winnerArray.sort(function(a, b) {
  return a-b;
  });

  var winningVotes=winnerArray.pop();
  for (var name in voteCount[position]) {
  if (voteCount[position][name] === winningVotes) {
    officers[position] = name;
  };
  };
};

tally("president");
tally("vicePresident");
tally("secretary");
tally("treasurer");
winner("president");
winner("vicePresident");
winner("secretary");
winner("treasurer");

// Solution with recursion

function tally(position){
  for (var name in votes){
  if (votes[name][position] in voteCount[position]){
    voteCount[position][votes[name][position]]+=1
    } else {
    voteCount[position][votes[name][position]]=1
    };
    };
  };

var winner = function(object, position) {
   var largest = 0
   var winnerName = ""
   if (object.hasOwnProperty(position)) {
     winner(object[position], position)
   } else {
     for (var index in object) {
       if (object[index] > largest) {
         largest = object[index];
         winnerName = index;
         officers[position] = winnerName;
       }
     }
   }
 }

tally("president");
tally("vicePresident");
tally("secretary");
tally("treasurer");
winner(voteCount,"president");
winner(voteCount,"vicePresident");
winner(voteCount,"secretary");
winner(voteCount,"treasurer");

// __________________________________________
// Reflection

// What did you learn about iterating over nested 
//objects in JavaScript?
//We learned how to access keys and values inside a nested 
//object using the for-in loop.

// Were you able to find useful methods to help you 
//with this?
//We used #sort to sort an array. We also used #pop
//to return the last item in the array.

// What concepts were solidified in the process of 
//working through this challenge?
//How to iterate through a nested object and access both
// the property key and value. Passing information between
// objects of different types. Sorting a data structure.
// Writing functions to complete different tasks.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)