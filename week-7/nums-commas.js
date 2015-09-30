// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



// Initial Solution
var separateComma=function(number){
split the number into an array
array=number.toString()
array.split()
reverseArrayInPlace(array)



}



if number.to_s.length < 4 
    return number.to_s 
        
 else
    new_number = number.to_s.split(//).reverse
      
   i=0
   while i < number.to_s.length-3
    new_number.insert(i+3, ",")
    i+=4
   end 
   
   new_number = new_number.join.reverse
   p new_number


// Refactored Solution




// Your Own Tests (OPTIONAL)

separateComma(1000)


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// What did you learn about iterating over arrays in JavaScript?
// What was different about solving this problem in JavaScript?
// What built-in methods did you find to incorporate in your refactored solution?