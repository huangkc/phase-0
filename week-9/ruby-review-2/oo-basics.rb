# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(name, scores)   #Use named arguments!
    #your code here
    @scores=scores
    @first_name=name
      
  end

  def average
  @grade = {
  90..100 => "A",
    80..89 => "B",
    70..79 => "C",
    60..69 => "D",
  0..69 => "F"
  }
   @avg=scores.reduce(:+)/scores.length
   return scores.reduce(:+)/scores.length
  end

  def letter_grade
    @grade.each do |k,v|
      if k.include? @avg
        return v
      end
    end
  end

  
end

def linear_search(group, name)
  group.each do |item|
    if item.first_name == name
        return 0 
      else return -1
      end
    end
  end
  

alex=Student.new("Alex",[100,100,100,0,100])
ben=Student.new("Ben",[100,100,100,0,100])
chris=Student.new("Chris",[100,100,100,0,100])
sarah=Student.new("Sarah",[100,100,100,0,100])
david=Student.new("David",[100,100,100,0,100])
students=[]
students.push(alex)
students.push(ben)
students.push(chris)
students.push(sarah)
students.push(david)


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

