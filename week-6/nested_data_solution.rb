# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.collect! do |element| 
	
 	if element.kind_of?(Array)
		element.collect!{|inner| inner+=5}
	else element+=5
	end
end
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.collect! do |name|
	if name.kind_of?(Array)
		name.collect! do |inner|
			if inner.kind_of?(Array)
				inner.collect!{ |name| name+"ly"}
			else
			    inner+"ly"
			end
		end
	else name+"ly"
	end
end
p startup_names


# What are some general rules you can apply to nested arrays?
# Iterators can be used inside iterators to check if there is are inner arrays.
# Positioning for nested arrays is the same as positioning for non-nested arrays.
# Array methods can be used to manipulate nested arrays.

# What are some ways you can iterate over nested arrays? 
# You can do it with #collect, #each, #map, etc.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? 
# We used #kind_of? to check if there is an inner array. when iterating. We also used "!"
# to alter the original array. 

