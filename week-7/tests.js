// Add the finished solution here when you receive it.

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


// __________________________________________

// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)