# FizzBuzz Super Edition
# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
# Define a function.
# Inside the function, create an array to hold the 
# results.
# Iterate through the list of numbers.
# Use conditionals to check if the numbers are 
# divisible by 3 and/or 5.
# Store the appropriate value into the new array.
# Return the new array.

# Initial Solution

def super_fizzbuzz(integers)
  superArray=[]
  integers.each do |number|
    if (number%3==0) && (number%5==0) then
      superArray.push("FizzBuzz")
    elsif number%5==0 then
      superArray.push("Buzz")
    elsif number%3==0 then
      superArray.push("Fizz")
    else 
      superArray.push(number) 
     end
   end
   superArray
end

# Reflection
# What concepts did you review or learn in this challenge?
# I reviewed loops and conditionals and working with arrays.

# What is still confusing to you about Ruby?
# Coming up with the necessary Ruby method or tool or concept needed to 
# solve a variety of challenges.

# What are you going to study to get more prepared for Phase 1?
# Review Ruby and JS and complete more challenges. Research new
# concepts such as recursion. 

# Reverse Words
# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Check if the sentence is empty. If it is return 
# the empty sentence.
# If not, split the sentence into words
# Iterate through the words.
# Reverse each word.
# Put each reversed word back together into a 
# new sentence.

# Initial Solution
def reverse_words(text)
  if text.length==0
    text 
  else
    words=text.split
    words.each{|word| reverse_sentence.push(word.reverse)}
    reverse_sentence.join(" ")
  end
end

# Refactored Solution
def reverse_words(text)
  text.length==0?text:text.split.map!{|word| word.reverse}.join(" ")
end
