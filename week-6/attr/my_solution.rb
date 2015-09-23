#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

class NameData
	attr_reader :name

	def initialize
		@name="Kai"
	end
end

class Greetings

	def initialize
		@nameData=NameData.new
	end

	def hello
		puts "Hello Student! How wonderful to see you today."
	end
end



# Reflection
# Release 1
# What are these methods doing?
# The methods return or modify the values of instance variables.
# How are they modifying or returning the value of instance variables?
# Through the use of instance variables.

# Release 2
# What changed between the last release and this release? 
# The .age method was added
# What was replaced?
# what_is_age was replaced with attr_reader
# Is this code simpler than the last?
#yes

# Release 3
# What changed between the last release and this release?
# change_my_age method was no longer needed.
# What was replaced?
# attr_writer: age
# Is this code simpler than the last?
# yes

# What is a reader method? a method that allows a variable to be read.
# What is a writer method? a method that allows a variable to be written.
# What do the attr methods do for you? the can make the code simpler by cutting down on the number of methods.
# Should you always use an accessor to cover your bases? Why or Why not? No. That might make debugging more difficult. Also,
# values could be altered accidentally if everything is write-able all the time.
# What is confusing to you about these methods? 
#The way to pass information to/from instance methods is confusing.