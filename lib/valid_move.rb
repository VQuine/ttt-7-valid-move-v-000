# in hindsight..this is a little backwards.. but I'm tired right now.
# Method to figure out if a user's desired play is available and possible
def valid_move?(board, index)
  # Checks if the desired play is even a spot on the board at all & open
  if position_taken?(board, index) == false && index.between?(0, 8) == true
    return true
    # Lets you know the desired play is already taken
  elsif position_taken?(board, index) == true
    return false
    # Other edgecases.. I think it's called edgecases.. are absurd
  else
    return nil
end
end

# Method to figure out if the user's desired play has already been played
def position_taken?(board, index)
  #Checks for blank spaces and an edge case to give you the green. or red. whatever. I'm using tape to hold up my eyelids at this point.
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
    #Spots a player token
  else board[index] == "X" || board[index] == "O"
    return true
end
end
