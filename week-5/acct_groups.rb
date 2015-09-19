# Input: list of names
# Output: names separated into groups of 3 or more

# Steps for solving the problem
# If the list has 5 names or fewer, then return the list
# Create a new list to hold the list of groups
# iterate over the array of names
# fill the new array with the names from the old array 
# in groups of three
# Take the names remaining and add them to the first 
# groups in the new array
# The MVP would divide the list of names into groups of 
# three with one group of ether four or five.

#Initial solution

def acct_group(list)
    groups=[]
    if list.length<=5 
        groups = list 
    else
        i=0
        while i <=list.length-3
                groups = groups << list[i..i+2]
                i+=3
        end        
        groups[0] = groups[0]+list[i..list.length-1]        
    end
    p groups
end

#5 people on the list
acct_group(["A","B","C","D","E"])
#6 people on the list
acct_group(["A","B","C","D","E","F"])
#7 people on the list
acct_group(["A","B","C","D","E","F","G"])
#8 people on the list
acct_group(["A","B","C","D","E","F","G","H"])

#Refactored solution:

def acct_group(list)
    groups=[]
    length=list.length
    if length <= 5 
        groups = list 
    else
        i=0
        while i <= length-3
            groups << list[i..i+2]
            i+=3
        end        
        groups[0] += list[i..length-1]        
    end
    p groups
end



# What was the most interesting and most difficult part of this challenge? 
# The most difficult part was writing good pseudocode. There were details that I did not
# consider and found out when writing the actual code. It was interesting practicing 
# how to transform data structures and pass information between them.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I am able to better visualize the solution and can break the problem down to smaller pieces than I did before.

# Was your approach for automating this task a good solution? What could have made it even better?
# It can be improved by storing the data in a hash so it would be easier to modify.

# What data structure did you decide to store the accountability groups in and why?
# I stored the data in an array of arrays since the approach was more intuitive to me.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I could have used the #fill method to fill in the new array. 
# Also could have maybe written separate methods for each piece and call them within the method.