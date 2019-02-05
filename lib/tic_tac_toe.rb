class TicTacToe
def initialize
  @board = Array.new(9, " ")
  end
def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "-----------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "-----------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end
def input_to_index(input)
  input.to_i - 1
end
def move(index, token = "X")
  @board[index] = token
end
def position_taken?(index)
@board[index] != " "
end
def valid_move?(index)
!(position_taken?(index)) && index.between?(0, 8)
end
def turn_count
  @board.count do |char|
  char != " "
end
end
def current_player
if turn_count.even?
  "X"
  else
  "O"
  end
end
def turn
  puts "Select a position between 1-9."
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(index)
    char = current_player
    move(index, char)
  else
    turn
end
display_board
end



  WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]


end
