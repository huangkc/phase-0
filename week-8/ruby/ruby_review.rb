# FizzBuzz Super Edition
# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



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
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?


# Reverse Words
# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



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


