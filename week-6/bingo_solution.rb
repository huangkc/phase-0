# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # define a variable letter
  # define a variable number
  # letter will be generatd randomly from ("b", "i", "n", "g", "o")
  # number will be generated randomly between 1 and 100

# Check the called column for the number called.
  #fill in the outline here
  # Convert letter to column number
  # Set one counter as the column number
  # Set one counter as the row number
  # Compare number with each element in the column

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # need a way to get the position if there is a match
  # if no match, print a message "No match"
  # Model the method one column at a time

# Display a column to the console
  #fill in the outline here
  # iterate through the array and print the column
  # check it there is match
  # if so, print column to console
  # if not print a "no match message"

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     x = rand(4)+1
#     @letter = ["b","i","n","g","o"][x]
#     @number = rand(100)+1
#   end

#   def check
#     @column = 0
#     @match = false
#     while @column < 5
#       @row=0
#       while @row < 5
#         if @bingo_board[@row][@column] == @number
#            @bingo_board[@row][@column]="x"
#            @match = true
#            p "Match!"
#             # print column
#             row = 0
#             column = @column
#             while row < 5
#              p @bingo_board[row][column]
#              row+=1
#             end
#         end 
#         @row+=1
#       end
#       @column+=1
#     end

#     if @match == false
#       p "No match!"
#     end
#   end

#   def display
#     column=0
#     while column < 5
#       row=0
#       while row < 5
#         p @bingo_board[row][column]
#         row+=1
#       end
#       column+=1
#     end
#   end
# end

# Refactored Solution

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


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
# new_game.check
# new_game.display





#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# What are the benefits of using a class for this challenge?
# How can you access coordinates in a nested array?
# What methods did you use to access and modify the array?
# How did you determine what should be an instance variable versus a local variable?
# What do you feel is most improved in your refactored solution?




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