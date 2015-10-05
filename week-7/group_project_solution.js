// Person 1

// As a user, I want to take two lists of numbers, one with 
// odd number of elements and the other with even number of elements, 
// and calculate the sum, mean, and median for each list.

// One function called "sum" should calculate the sum for list 1 and the 
// sum for list 2
// One function called "mean" should calculate the average (with decimal places)
// for list 1 and the average for list 2
// One function called "median" should calculate the median 
// (with decimal places) for list 1 and the median for list 2

// Example:
// list1: 1, 2, 3, 4, 5, 5, 7
// list2: 4, 4, 5, 5, 6, 6, 6, 7
// The sum function should return 27 for list1 and 43 for list2.

//Initial solution


function sum(oddArray,evenArray){
  var sum1=0;
  var sum2=0;
  for(var i=0; i<oddArray.length; i++){
  var sum1=sum1+oddArray[i]; 
};
  for (var j=0; j<evenArray.length; j++){
  var sum2=sum2+evenArray[j];
};
  console.log(sum1);
  console.log(sum2);
};

function mean(oddArray,evenArray){
  var sum1=0;
  var sum2=0;
  var mean1=0;
  var mean2=0;
  for(var i=0; i<oddArray.length; i++){
  var sum1=sum1+oddArray[i]; 
};
  for (var j=0; j<evenArray.length; j++){
  var sum2=sum2+evenArray[j];
};
  mean1=sum1/oddArray.length;
  console.log(mean1);
  mean2=sum2/evenArray.length;  
  console.log(mean2);  
};

function median(oddArray,evenArray){
  var medn1;
  var medn2;
  var positionOdd;
  var x;
  var y;
  oddArray.sort;
  positionOdd=(oddArray.length-1)/2;
  medn1=oddArray[positionOdd]
  console.log(medn1);
  
  evenArray.sort;  
  x=evenArray.length/2;
  y=x-1;
  medn2=(evenArray[x]+evenArray[y])/2
  console.log(medn2);
};

