# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # Define a variable for the letter
  # Define a variable the number
  # Letter will be generatd randomly from ("b", "i", "n", "g", "o")
  # Number will be generated randomly between 1 and 100

# Check the called column for the number called.
  #fill in the outline here
  # Convert the letter to a column number
  # Set one counter as the row number
  # Compare the number with each element in each row of the column

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  #Set the value for the position to "x"

# Display a column to the console
  #fill in the outline here
  # If a match is found, record the column number
  # Iterate through the rows and print the column values
  # 

# Display the board to the console (prettily)
  #fill in the outline here
  #Iterate through the board and print one element at a time

# Initial Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    x = rand(4)+1
    @letter = ["b","i","n","g","o"][x]
    @number = rand(100)+1
  end

  def check
    @column = 0 
    #column to be determined with a sepaate mechanism
    #this loop iterates through the entire board
    @match = false
    while @column < 5
      @row=0
      while @row < 5
        if @bingo_board[@row][@column] == @number
           @bingo_board[@row][@column]="x"
           @match = true
           p "Match!"
            # print column
            row = 0
            column = @column
            while row < 5
             p @bingo_board[row][column]
             row+=1
            end
        end 
        @row+=1
      end
      @column+=1
    end

    if @match == false
      p "No match!"
    end
  end

  def display
    column=0
    while column < 5
      row=0
      while row < 5
        p @bingo_board[row][column]
        row+=1
      end
      column+=1
    end
  end
end

#Refactored solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    random_number=rand(4)+1
    @letter = ["B","I","N","G","O"][random_number]
    @number = rand(100)+1
  end

  def check      
      case 
        when @letter=="B" 
          column=0
        when @letter=="I" 
          column=1
        when @letter=="N" 
          column=2
        when @letter=="G" 
          column=3
        when @letter=="O"
          column=4
      end

      p "Call: #{@letter}:#{@number}"
      match=false
      row=0
      while row < 5
       if @bingo_board[row][column] == @number
          @bingo_board[row][column]="x"
          match = true
          p "Match!"
          r = 0
          c = column
          print_column(r,c)
       end 
       row+=1
      end
      if match == false
        p "No match!"
      end
  end

  def print_column(r,c)
    while r < 5
       p @bingo_board[r][c]
       r+=1
    end
  end

  def display
    @bingo_board.each{ |item| p item}    
   end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Pseudocoding was not as difficult for this challenge as the outline helped to 
# # oganize the steps. I need to do better in breaking down the problem into smaller pieces and 
# think more about the details of the steps.

# What are the benefits of using a class for this challenge? 
# You can play the same game many times or play new game without having to rewrite the code.

# How can you access coordinates in a nested array? 
# Column positions are based on the letter called
#I calculated the rows by counting the position of the inner arrays and the position of the 
# inner array elements.

# What methods did you use to access and modify the array? 
#I used a while loop as well as #each. 

# How did you determine what should be an instance variable versus a local variable? 
# If I likely do not need to access a variable outside the method then I used local variables. If 
# I might need to use a variable across methods then I used an instance variable.

# What do you feel is most improved in your refactored solution?
# In the initial solution all variables are instance variables. In the refactored solution, only @letter, @number,
# and @bingo_board are instance variables. A case statement is put in to determine the column number.
# And I experimented with adding a method for printing the new column if a match is found. 
# Considered making the case statement into a new method but could not
# get it to work.




#======================================================
# if letter == "b" check
#       board[0][0]
#       board[1][0]  
#       board[2][0] 
#       board[3][0] 
#       board[4][0]

#     if letter == "i" check
#       board[0][1]
#       board[1][1]  
#       board[2][1] 
#       board[3][1] 
#       board[4][1]
#     if letter == "n" check
#       board[0][2]
#       board[1][2]  
#       board[2][2] 
#       board[3][2] 
#       board[4][2]
#     if letter == "g" check
#       board[0][3]
#       board[1][3]  
#       board[2][3] 
#       board[3][3] 
#       board[4][3]
#     if letter == "o" check
#       board[0][4]
#       board[1][4]  
#       board[2][4] 
#       board[3][4] 
#       board[4][4]