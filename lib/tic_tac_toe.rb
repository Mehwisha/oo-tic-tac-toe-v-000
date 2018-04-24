class TicTacToe
  WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,4,8],
[2,4,6],
[0,3,6],
[1,4,7],
[2,5,8]
  ]
def initialize(board = nil)
@board = board || Array.new(9, " ")
end
def display_board
   puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
   puts "-----------"
   puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
   puts "-----------"
   puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
 end
def input_to_index(user_input)
  user_input.to_i - 1
end
def move(index, player = "X")
@board[index] = player
end
def position_taken?(index)
  @board[index]== "X" || @board[index] == "O"
end
def valid_move?(index)
!position_taken?(index) && index.between?(0,8)
end
def turn_count
@board.count{|token| token == "X" || token == "O"}
end
def current_player
 turn_count % 2 == 0 ? "X" : "O"
end
def turn
puts "Please enter 1-9:"
user_input = gets.strip
index = input_to_index(user_input)
if valid_move?(index)
  move(index, current_player)
  display_board
else
  turn
end
def won?

end
def full?

end
def draw?


end
def over?

end
def winner

end
def play

end

end
