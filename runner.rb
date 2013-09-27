require_relative "tic_tac_toe"


game = Tictactoe.new

puts 
puts "Welcome to Tic Tac Toe!"
puts "Select a number for your first move:"

while game.turns > 0
	puts game.display_board
	move = gets.chomp
	game.turns_left
	puts game.human_move(move)
	puts game.cpu_move
end




#now allow human to play move
# game.human_move(gets.chomp)
# game.display
# game.cpu_corner_move
# game.display
# game.display
	







